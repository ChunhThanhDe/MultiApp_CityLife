import 'dart:ui';

import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';

enum BannerType { bannerFloatingLogo, brandLogoName, bannerDiscount, bannerSingleImage }

class BannerSection {
  const BannerSection({required this.title, required this.items, required this.bannerType, this.showArrowIcon = true, this.onTapItem, this.onTapTitle, this.serviceType});
  final String title;
  final List<BannerEntity> items;
  final BannerType bannerType;
  final bool showArrowIcon;
  final VoidCallback? onTapItem;
  final VoidCallback? onTapTitle;
  final String? serviceType;
}

class BannerDataUtils {
  BannerDataUtils._();

  static List<BannerSection> getBannerSections(Map<String, dynamic>? data, {String? serviceType}) {
    if (data == null || data.isEmpty) return [];
    final List<BannerSection> sections = [];
    for (final entry in data.entries) {
      if (entry.value == null || entry.value.isEmpty) continue;
      final items = entry.value as List<dynamic>;
      sections.add(
        BannerSection(
          title: _getTitleFormattedName(entry.key),
          items: items.map((item) => BannerEntity.fromJson(item)).toList(),
          bannerType: _getBannerType(BannerEntity.fromJson(items.first)),
          serviceType: serviceType,
        ),
      );
    }
    return sections;
  }

  static String _getTitleFormattedName(String title) {
    return title.split('_').map((word) => word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : '').join(' ');
  }

  static BannerType _getBannerType(BannerEntity storeBanner) {
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
