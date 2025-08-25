import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

/// Model for category data in ServiceUI2
class CategoryData {
  const CategoryData({required this.icon, required this.label, required this.color});
  final String icon;
  final String label;
  final Color color;

  /// Static list of predefined categories
  static List<CategoryData> get defaultCategories => [
    CategoryData(icon: Assets.icons.icClothHanger1.path, label: 'Clothes', color: AppTheme.theme.stateBrandDefault500),
    CategoryData(icon: Assets.icons.icIron.path, label: 'Iron', color: AppTheme.theme.stateDangerDefault500),
    CategoryData(icon: Assets.icons.icSingleBed1.path, label: 'Home', color: AppTheme.theme.stateInformationDefault500),
    CategoryData(icon: Assets.icons.icBackpackModern1.path, label: 'Bags', color: AppTheme.theme.stateBrandDefault500),
    CategoryData(icon: Assets.icons.icSneakers1.path, label: 'Shoes', color: AppTheme.theme.stateSuccessDefault500),
  ];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CategoryData && other.icon == icon && other.label == label && other.color == color;
  }

  @override
  int get hashCode => icon.hashCode ^ label.hashCode ^ color.hashCode;

  @override
  String toString() => 'CategoryData(icon: $icon, label: $label, color: $color)';
}

/// Model for banner data in ServiceUI2
class BannerData {
  const BannerData({required this.image, required this.title, required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  /// Static list of predefined banners
  static List<BannerData> get defaultBanners => [
    BannerData(image: Assets.images.imgSingleBed1.path, title: 'Professional Service', subtitle: 'Fast & Reliable'),
    BannerData(image: Assets.images.imgSingleBed1.path, title: 'Premium Care', subtitle: 'Expert Care for Your Items'),
    BannerData(image: Assets.images.imgSingleBed1.path, title: 'Express Service', subtitle: 'Same Day Delivery'),
    BannerData(image: Assets.images.imgSingleBed1.path, title: 'Eco-Friendly', subtitle: 'Safe for You & Environment'),
  ];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BannerData && other.image == image && other.title == title && other.subtitle == subtitle;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode ^ subtitle.hashCode;

  @override
  String toString() => 'BannerData(image: $image, title: $title, subtitle: $subtitle)';
}
