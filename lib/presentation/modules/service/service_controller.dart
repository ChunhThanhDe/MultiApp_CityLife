import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/module.repository.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
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

class ServiceController extends BaseController {
  final ModuleRepository _moduleRepository = Get.find<ModuleRepository>();

  @override
  void onReady() {
    super.onReady();
    loadServiceTypeData(ServiceType.food);
  }

  final Rx<GetStoresResponse?> currentData = Rx<GetStoresResponse?>(null);
  final Rx<ServiceType?> currentServiceType = Rx<ServiceType?>(ServiceType.food);

  // Get current service configuration
  ServiceConfig get currentServiceConfig => ModuleRepository.getServiceConfig(currentServiceType.value ?? ServiceType.food);

  // Method to load data for specific service type
  void loadServiceTypeData(ServiceType serviceType) async {
    currentServiceType.value = serviceType;
    await showAppOverlayLoading(future: _loadServiceData(serviceType));
  }

  // Clean service data loading
  Future<void> _loadServiceData(ServiceType serviceType) async {
    await safeExecute(() async {
      final result = await _moduleRepository.getServiceData(serviceType);
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final storesData = GetStoresResponse.fromJson(response.data);
          currentData.value = storesData;
        case Failure(:final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }
    });
  }

  // Auto-detect all sections from API response dynamically
  List<SectionMetadata> get autoDetectedSections {
    final data = currentData.value;
    if (data == null) return [];

    final sections = <SectionMetadata>[];

    // Dynamically extract all List fields from the response
    final sectionMap = _extractListFieldsFromResponse(data);

    // Auto-detect sections that have data
    for (final entry in sectionMap.entries) {
      if (entry.value.isNotEmpty) {
        final displayTitle = _generateDisplayTitle(entry.key);
        final dataType = entry.value.first.runtimeType;

        sections.add(SectionMetadata(fieldName: entry.key, displayTitle: displayTitle, data: entry.value, dataType: dataType));
      }
    }

    return sections;
  }

  // Dynamically extract all List fields from GetStoresResponse
  Map<String, List<dynamic>> _extractListFieldsFromResponse(GetStoresResponse data) {
    return data.toListFieldsMap();
  }

  // Auto-generate display title from field name - completely generic
  String _generateDisplayTitle(String fieldName) {
    // Convert camelCase to Title Case automatically
    return fieldName
        .replaceAllMapped(RegExp(r'([A-Z])'), (match) => ' ${match.group(1)}')
        .split(' ')
        .where((word) => word.isNotEmpty)
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ')
        .trim();
  }

  // Automatically determine banner type based on data structure analysis
  BannerType _determineBannerType(SectionMetadata section) {
    final firstItem = section.data.first;

    // Smart analysis of data structure to determine optimal banner type
    if (firstItem is Store) {
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

  // Helper: Check if store has rich delivery data
  bool _hasRichDeliveryData(Store store) {
    return store.distanceKm != null && store.deliveryTime.isNotEmpty && store.rating > 0;
  }

  // Helper: Check if store has logo data
  bool _hasLogoData(Store store) {
    return store.logo.isNotEmpty && store.coverPhoto.isNotEmpty;
  }

  // Helper: Check if product has rich data
  bool _hasRichProductData(Product product) {
    return product.name?.isNotEmpty == true;
  }

  // Convert dynamic data to BannerItems with smart mapping
  List<BannerItem> _convertToBannerItems(SectionMetadata section) {
    final bannerType = _determineBannerType(section);

    return section.data.map<BannerItem>((item) {
      if (item is Store) {
        return _createStoreBasedBannerItem(item, bannerType);
      } else if (item is Product) {
        return _createProductBasedBannerItem(item, bannerType);
      }

      // Fallback for unknown types
      return BannerItem(title: 'Unknown Item', imageUrl: '', onTap: () {});
    }).toList();
  }

  // Create banner item for stores with smart property mapping
  BannerItem _createStoreBasedBannerItem(Store store, BannerType bannerType) {
    return BannerItem(
      title: store.name,
      imageUrl: store.coverPhoto,
      logoUrl: store.logo,
      deliveryFee: _shouldShowDeliveryFee(bannerType) && store.distanceKm != null ? _calculateDeliveryFee(store.distanceKm!) : null,
      isVerified: _shouldShowVerification(bannerType) ? store.rating > 4.0 : null,
      time: _shouldShowTime(bannerType) ? store.deliveryTime : null,
      onTap: () => Get.toNamed(AppRoutes.store),
    );
  }

  // Create banner item for products with smart property mapping
  BannerItem _createProductBasedBannerItem(Product product, BannerType bannerType) {
    return BannerItem(
      title: _shouldShowTitle(bannerType) ? (product.name?.isNotEmpty == true ? product.name! : 'Product') : '',
      imageUrl: product.image,
      onTap: () {
        // Navigate to product detail
      },
    );
  }

  // Smart banner type feature flags
  bool _shouldShowDeliveryFee(BannerType bannerType) => bannerType == BannerType.bannerDiscount;
  bool _shouldShowVerification(BannerType bannerType) => bannerType == BannerType.bannerDiscount;
  bool _shouldShowTime(BannerType bannerType) => bannerType == BannerType.bannerDiscount;
  bool _shouldShowTitle(BannerType bannerType) => bannerType != BannerType.bannerSingleImage;

  // Smart delivery fee calculation based on distance
  double _calculateDeliveryFee(double distanceKm) {
    // Smart calculation: closer = cheaper
    if (distanceKm <= 1.0) return 1.99;
    if (distanceKm <= 3.0) return 2.99;
    if (distanceKm <= 5.0) return 3.99;
    return distanceKm * 0.8; // Dynamic rate for longer distances
  }

  // Generate completely dynamic sections
  List<ServiceSection> get dynamicSections {
    final detectedSections = autoDetectedSections;

    return detectedSections.map((section) {
      final bannerType = _determineBannerType(section);
      final items = _convertToBannerItems(section);

      return ServiceSection(key: section.fieldName, title: section.displayTitle, items: items, bannerType: bannerType, showArrowIcon: bannerType != BannerType.bannerSingleImage);
    }).toList();
  }

  // Categories from API data with dynamic assets based on service type
  List<Category> get categories => currentData.value?.categories ?? [];

  // Dynamic category assets based on service type
  String getCategoryImageAsset(Category category, ServiceType serviceType) {
    switch (serviceType) {
      case ServiceType.food:
        return Assets.images.imgFood.path;
      case ServiceType.grocery:
        return Assets.images.imgGrocery.path;
      case ServiceType.delivery:
        return Assets.images.imgDelivery.path;
      case ServiceType.laundry:
        return Assets.images.imgLaundry.path;
      case ServiceType.ticket:
        return Assets.images.imgTicketPlane.path;
      case ServiceType.cleaning:
        return Assets.images.imgCleaning.path;
      default:
        return Assets.images.imgFood.path;
    }
  }

  Future<void> refreshData() async {
    final serviceType = currentServiceType.value ?? ServiceType.food;
    loadServiceTypeData(serviceType);
  }
}
