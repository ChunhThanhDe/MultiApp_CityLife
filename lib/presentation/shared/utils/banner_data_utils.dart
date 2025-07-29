import 'dart:ui';

import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';

enum BannerType { bannerFloatingLogo, brandLogoName, bannerDiscount, bannerSingleImage }

class BannerSection {
  final String title;
  final List<StoreBanner> items;
  final BannerType bannerType;
  final bool showArrowIcon;
  final VoidCallback? onTapItem;
  final VoidCallback? onTapTitle;

  const BannerSection({required this.title, required this.items, required this.bannerType, this.showArrowIcon = true, this.onTapItem, this.onTapTitle});
}

/// Utility class for service data processing with improved banner type detection
/// Based on Figma design analysis and StoreBanner field characteristics
class BannerDataUtils {
  BannerDataUtils._();

  static List<BannerSection> getBannerSections(Map<String, dynamic>? data) {
    if (data == null) return [];
    return data.entries.map((entry) {
      final items = entry.value as List<dynamic>;
      return BannerSection(title: _getTitleFormattedName(entry.key), items: items.map((item) => StoreBanner.fromJson(item)).toList(), bannerType: _getBannerType(StoreBanner.fromJson(items.first)));
    }).toList();
  }

  static String _getTitleFormattedName(String title) {
    return title.split(' ').map((word) => word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : '').join(' ');
  }

  static BannerType _getBannerType(StoreBanner storeBanner) {
    if (_requiredFields([storeBanner.name, storeBanner.logo, storeBanner.coverPhoto])) {
      return BannerType.bannerDiscount;
    }
    if (_requiredFields([storeBanner.logo, storeBanner.name]) || _requiredFields([storeBanner.image, storeBanner.name])) {
      return BannerType.brandLogoName;
    }
    if (_requiredFields([storeBanner.image])) {
      return BannerType.bannerSingleImage;
    }
    return BannerType.bannerFloatingLogo;
  }

  static bool _requiredFields(List<Object?> items) {
    return items.every((item) => item != null);
  }
}
