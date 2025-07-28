import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

// Data class for dynamic sections
class ServiceSection {
  final String key;
  final String title;
  final List<BannerItem> items;
  final BannerType bannerType;
  final bool showArrowIcon;

  const ServiceSection({required this.key, required this.title, required this.items, required this.bannerType, required this.showArrowIcon});
}

// Auto-detected section metadata
class SectionMetadata {
  final String fieldName;
  final String displayTitle;
  final List<dynamic> data;
  final Type dataType;

  const SectionMetadata({required this.fieldName, required this.displayTitle, required this.data, required this.dataType});
}

/// Utility class containing reusable methods for service data processing
/// Extracted from ServiceController to be used across different controllers
class ServiceDataUtils {
  // Private constructor to prevent instantiation
  ServiceDataUtils._();

  /// Auto-detect all sections from API response dynamically
  static List<SectionMetadata> getAutoDetectedSections(Map<String, dynamic>? data) {
    if (data == null) return [];

    final sections = <SectionMetadata>[];

    // Dynamically extract all List fields from the response
    final sectionMap = data.entries.toList();

    // Auto-detect sections that have data
    for (final entry in sectionMap) {
      if (entry.value.isNotEmpty) {
        final displayTitle = _generateDisplayTitle(entry.key);
        final dataType = entry.value.first.runtimeType;

        sections.add(SectionMetadata(fieldName: entry.key, displayTitle: displayTitle, data: entry.value, dataType: dataType));
      }
    }

    return sections;
  }

  /// Auto-generate display title from field name - completely generic
  static String _generateDisplayTitle(String fieldName) {
    return fieldName.replaceAll('_', ' ').split(' ').map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1).toLowerCase()).join(' ');
  }

  /// Automatically determine banner type based on data structure analysis
  static BannerType _determineBannerType(SectionMetadata section) {
    final firstItem = section.data.first;

    // Smart analysis of data structure to determine optimal banner type
    if (firstItem is StoreBanner) {
      final store = firstItem;

      // Priority 1: Rich data with delivery info → bannerDiscount
      if (_hasRichDeliveryData(store)) {
        return BannerType.bannerDiscount;
      }

      // Priority 2: Logo available → bannerFloatingLogo
      if (_hasLogoData(store)) {
        return BannerType.bannerFloatingLogo;
      }

      // Priority 3: Basic store info → brandLogoName
      return BannerType.brandLogoName;
    } else if (firstItem is Product) {
      final product = firstItem;

      // Priority 1: Products with rich info → brandLogoName
      if (_hasRichProductData(product)) {
        return BannerType.brandLogoName;
      }

      // Priority 2: Simple products → bannerSingleImage
      return BannerType.bannerSingleImage;
    }

    // Default fallback
    return BannerType.bannerFloatingLogo;
  }

  /// Helper: Check if store has rich delivery data
  static bool _hasRichDeliveryData(StoreBanner store) {
    return store.distanceKm != null && store.deliveryTime?.isNotEmpty == true && store.rating != null && store.rating! > 0;
  }

  /// Helper: Check if store has logo data
  static bool _hasLogoData(StoreBanner store) {
    return store.logo?.isNotEmpty == true && store.coverPhoto?.isNotEmpty == true;
  }

  /// Helper: Check if product has rich data
  static bool _hasRichProductData(Product product) {
    return product.name?.isNotEmpty == true;
  }

  /// Convert dynamic data to BannerItems with smart mapping
  static List<BannerItem> _convertToBannerItems(SectionMetadata section) {
    final bannerType = _determineBannerType(section);

    return section.data.map<BannerItem>((item) {
      if (item is StoreBanner) {
        return _createStoreBasedBannerItem(item, bannerType);
      } else if (item is Product) {
        return _createProductBasedBannerItem(item, bannerType);
      }

      // Fallback for unknown types
      return BannerItem(title: 'Unknown Item', imageUrl: '', onTap: () {});
    }).toList();
  }

  /// Create banner item for stores with smart property mapping
  static BannerItem _createStoreBasedBannerItem(StoreBanner store, BannerType bannerType) {
    return BannerItem(
      title: store.name ?? '',
      imageUrl: store.coverPhoto ?? '',
      logoUrl: store.logo ?? '',
      deliveryFee: _shouldShowDeliveryFee(bannerType) && store.distanceKm != null ? store.deliveryFee : null,
      isVerified: _shouldShowVerification(bannerType) ? store.rating != null && store.rating! > 4.0 : null,
      time: _shouldShowTime(bannerType) ? store.deliveryTime : null,
      onTap: () => Get.toNamed(AppRoutes.store),
    );
  }

  /// Create banner item for products with smart property mapping
  static BannerItem _createProductBasedBannerItem(Product product, BannerType bannerType) {
    return BannerItem(
      title: _shouldShowTitle(bannerType) ? (product.name?.isNotEmpty == true ? product.name! : 'Product') : '',
      imageUrl: product.image,
      onTap: () {
        // Navigate to product detail
      },
    );
  }

  /// Smart banner type feature flags
  static bool _shouldShowDeliveryFee(BannerType bannerType) => bannerType == BannerType.bannerDiscount;
  static bool _shouldShowVerification(BannerType bannerType) => bannerType == BannerType.bannerDiscount;
  static bool _shouldShowTime(BannerType bannerType) => bannerType == BannerType.bannerDiscount;
  static bool _shouldShowTitle(BannerType bannerType) => bannerType != BannerType.bannerSingleImage;

  static List<ServiceSection> getDynamicSectionsFromMap(Map<String, dynamic>? data) {
    if (data == null) return [];

    final sections = <ServiceSection>[];

    for (final entry in data.entries) {
      final items = _convertToBannerItems(SectionMetadata(fieldName: entry.key, displayTitle: _generateDisplayTitle(entry.key), data: entry.value, dataType: entry.value.runtimeType));
      final bannerType = _determineBannerType(SectionMetadata(fieldName: entry.key, displayTitle: _generateDisplayTitle(entry.key), data: entry.value, dataType: entry.value.runtimeType));
      final showArrowIcon = bannerType != BannerType.bannerSingleImage;

      sections.add(ServiceSection(key: entry.key, title: _generateDisplayTitle(entry.key), items: items, bannerType: bannerType, showArrowIcon: showArrowIcon));
    }

    return sections;
  }

  /// Generate completely dynamic sections
  static List<ServiceSection> getDynamicSections(GetStoresResponse? data) {
    final detectedSections = getAutoDetectedSections(data?.data);

    return detectedSections.map((section) {
      final bannerType = _determineBannerType(section);
      final items = _convertToBannerItems(section);

      return ServiceSection(key: section.fieldName, title: section.displayTitle, items: items, bannerType: bannerType, showArrowIcon: bannerType != BannerType.bannerSingleImage);
    }).toList();
  }

  /// Get categories from API data
  static List<Category> getCategories(GetStoresResponse? data) {
    return data?.categories ?? [];
  }

  /// Process any GetStoresResponse data and return dynamic sections
  /// This is the main entry point for other controllers
  static List<ServiceSection> processServiceData(GetStoresResponse? data) {
    return getDynamicSections(data);
  }
}
