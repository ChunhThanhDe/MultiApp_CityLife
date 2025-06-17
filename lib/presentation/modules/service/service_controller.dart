import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

const serviceBannerImageUrl = 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg';
const serviceBrandLogoUrl = 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png';

class FoodCategory {
  final String label;
  final String imagePath;
  final VoidCallback? onTap;

  const FoodCategory({required this.label, required this.imagePath, this.onTap});
}

class ServiceController extends BaseController {
  // Food categories data
  List<FoodCategory> get foodCategories => [
    FoodCategory(label: 'Breakfast', imagePath: Assets.images.imgFood.path),
    FoodCategory(label: 'Coffee', imagePath: Assets.images.imgFood.path),
    FoodCategory(label: 'Fast Food', imagePath: Assets.images.imgFood.path),
    FoodCategory(label: 'Drink', imagePath: Assets.images.imgFood.path),
    FoodCategory(label: 'Pizza', imagePath: Assets.images.imgFood.path),
    FoodCategory(label: 'Fresh Food', imagePath: Assets.images.imgGrocery.path),
    FoodCategory(label: 'Snacks', imagePath: Assets.images.imgFood.path),
    FoodCategory(label: 'Bread', imagePath: Assets.images.imgGrocery.path),
    FoodCategory(label: 'Ketchup', imagePath: Assets.images.imgFood.path),
    FoodCategory(label: 'Drinks', imagePath: Assets.images.imgFood.path),
  ];

  // Service-specific banner data
  List<BannerItem> get serviceBannerItems => [
    BannerItem(title: 'UberEats', imageUrl: serviceBannerImageUrl, logoUrl: serviceBrandLogoUrl, onTap: () {}, status: BannerStatus.closed),
    BannerItem(title: 'DoorDash', imageUrl: serviceBannerImageUrl, logoUrl: 'https://logos-world.net/wp-content/uploads/2020/11/DoorDash-Logo.png', onTap: () {}),
    BannerItem(title: 'Grubhub', imageUrl: serviceBannerImageUrl, logoUrl: 'https://logos-world.net/wp-content/uploads/2020/11/DoorDash-Logo.png', onTap: () {}),
  ];

  List<BannerItem> get serviceOffersItems => [
    BannerItem(
      title: 'FastFood Express',
      imageUrl: serviceBannerImageUrl,
      logoUrl: serviceBrandLogoUrl,
      onTap: () {},
      status: BannerStatus.closed,
      discount: 25,
      deliveryFee: 5.99,
      isVerified: true,
      time: '10:00 - 12:00',
    ),
    BannerItem(title: 'Pizza Palace', imageUrl: serviceBannerImageUrl, logoUrl: serviceBrandLogoUrl, onTap: () {}, discount: 15, deliveryFee: 3.50, isVerified: true, time: '10:00 - 12:00'),
    BannerItem(
      title: 'Healthy Bites',
      imageUrl: serviceBannerImageUrl,
      logoUrl: serviceBrandLogoUrl,
      onTap: () {},
      discount: 30,
      deliveryFee: 2.99,
      isVerified: false,
      status: BannerStatus.closed,
      time: '10:00 - 12:00',
    ),
  ];

  List<BannerItem> get topServiceOffersItems => [
    BannerItem(title: '', imageUrl: serviceBannerImageUrl, onTap: () {}, status: BannerStatus.unavailable),
    BannerItem(title: '', imageUrl: serviceBannerImageUrl, onTap: () {}),
    BannerItem(title: '', imageUrl: serviceBannerImageUrl, onTap: () {}),
  ];
}
