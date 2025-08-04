import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/category_expandable.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

class ServiceLaundryController extends ServiceController {
  // Category data structure with colors
  static const List<Map<String, dynamic>> laundryCategories = [
    {'icon': 'icClothHanger1', 'label': 'Clothes', 'color': Color(0xFF6366F1)}, // Purple
    {'icon': 'icIron', 'label': 'Iron', 'color': Color(0xFFEF4444)}, // Red
    {'icon': 'icSingleBed1', 'label': 'Home', 'color': Color(0xFF06B6D4)}, // Cyan
    {'icon': 'icBackpackModern1', 'label': 'Bags', 'color': Color(0xFF3B82F6)}, // Blue
    {'icon': 'icSneakers1', 'label': 'Shoes', 'color': Color(0xFF10B981)}, // Green
  ];

  // Banner data structure
  static final List<Map<String, dynamic>> bannerList = [
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Professional Laundry Service', 'subtitle': 'Fast & Reliable'},
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Premium Dry Cleaning', 'subtitle': 'Expert Care for Your Clothes'},
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Express Service', 'subtitle': 'Same Day Delivery'},
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Eco-Friendly Cleaning', 'subtitle': 'Safe for You & Environment'},
  ];

  // Selected category index (0: Clothes, 1: Iron, 2: Home, 3: Bags, 4: Shoes)
  final RxInt _selectedCategoryIndex = 0.obs;
  int get selectedCategoryIndex => _selectedCategoryIndex.value;

  // Selected banner index for dots indicator
  final RxInt _selectedBannerIndex = 0.obs;
  int get selectedBannerIndex => _selectedBannerIndex.value;

  // Laundry categories with items and pricing
  final List<CategoryOption> itemCategories = [
    CategoryOption(
      name: 'Tops',
      items: [
        ItemOption(name: 'Shirt', price: 5.99),
        ItemOption(name: 'Pajama Top', price: 5.99),
        ItemOption(name: 'T-Shirt', price: 5.99),
        ItemOption(name: 'Blouse', price: 5.99),
        ItemOption(name: 'Tunics', price: 5.99),
      ],
    ),
    CategoryOption(
      name: 'Bottoms',
      items: [
        ItemOption(name: 'Pants', price: 7.99),
        ItemOption(name: 'Shorts', price: 6.49),
        ItemOption(name: 'Jeans', price: 8.99),
        ItemOption(name: 'Skirt', price: 6.99),
        ItemOption(name: 'Leggings', price: 5.49),
        ItemOption(name: 'Pajama Bottom', price: 5.99),
        ItemOption(name: 'Sweatpants', price: 6.99),
        ItemOption(name: 'Dress Pants', price: 9.99),
        ItemOption(name: 'Capris', price: 6.49),
        ItemOption(name: 'Yoga Pants', price: 5.99),
        ItemOption(name: 'Cargo Pants', price: 8.49),
        ItemOption(name: 'Track Pants', price: 6.99),
      ],
    ),
    CategoryOption(
      name: 'Undergarment',
      items: [
        ItemOption(name: 'Underwear', price: 3.99),
        ItemOption(name: 'Bra', price: 4.99),
        ItemOption(name: 'Undershirt', price: 3.49),
        ItemOption(name: 'Socks', price: 2.99),
      ],
    ),
    CategoryOption(
      name: 'Home Items',
      items: [
        ItemOption(name: 'Bed Sheet', price: 12.99),
        ItemOption(name: 'Pillow Case', price: 4.99),
        ItemOption(name: 'Towel', price: 6.99),
        ItemOption(name: 'Blanket', price: 15.99),
      ],
    ),
    CategoryOption(
      name: 'Formal',
      items: [
        ItemOption(name: 'Suit Jacket', price: 18.99),
        ItemOption(name: 'Dress Shirt', price: 8.99),
        ItemOption(name: 'Tie', price: 4.99),
        ItemOption(name: 'Formal Dress', price: 16.99),
      ],
    ),
    CategoryOption(
      name: 'Others',
      items: [
        ItemOption(name: 'Jacket', price: 14.99),
        ItemOption(name: 'Coat', price: 19.99),
        ItemOption(name: 'Sweater', price: 9.99),
        ItemOption(name: 'Hoodie', price: 11.99),
        ItemOption(name: 'Scarf', price: 5.99),
        ItemOption(name: 'Hat', price: 4.99),
        ItemOption(name: 'Gloves', price: 3.99),
        ItemOption(name: 'Belt', price: 3.49),
        ItemOption(name: 'Apron', price: 6.49),
        ItemOption(name: 'Curtains', price: 13.99),
        ItemOption(name: 'Table Cloth', price: 8.99),
        ItemOption(name: 'Rug', price: 16.99),
        ItemOption(name: 'Sleeping Bag', price: 12.99),
        ItemOption(name: 'Backpack', price: 9.99),
        ItemOption(name: 'Purse', price: 7.99),
        ItemOption(name: 'Wallet', price: 4.99),
        ItemOption(name: 'Shoes', price: 11.99),
        ItemOption(name: 'Boots', price: 14.99),
        ItemOption(name: 'Sneakers', price: 10.99),
        ItemOption(name: 'Sandals', price: 7.99),
        ItemOption(name: 'Slippers', price: 5.99),
        ItemOption(name: 'High Heels', price: 12.99),
        ItemOption(name: 'Dress Shoes', price: 13.99),
        ItemOption(name: 'Sports Shoes', price: 11.49),
        ItemOption(name: 'Canvas Shoes', price: 8.99),
        ItemOption(name: 'Flip Flops', price: 4.99),
        ItemOption(name: 'Work Boots', price: 16.99),
        ItemOption(name: 'Rain Boots', price: 9.99),
        ItemOption(name: 'Winter Boots', price: 18.99),
        ItemOption(name: 'Hiking Boots', price: 17.99),
        ItemOption(name: 'Loafers', price: 12.49),
        ItemOption(name: 'Moccasins', price: 10.99),
        ItemOption(name: 'Clogs', price: 8.49),
        ItemOption(name: 'Espadrilles', price: 9.49),
        ItemOption(name: 'Ballet Flats', price: 8.99),
        ItemOption(name: 'Wedges', price: 11.99),
      ],
    ),
  ];

  @override
  void onReady() {
    super.onReady();
    // Load laundry service data specifically
    loadServiceTypeData('laundry');
  }

  /// Handle category selection
  void selectCategory(int index) {
    _selectedCategoryIndex.value = index;
    // You can add additional logic here like filtering items by category
    update();
  }

  /// Check if a category is active
  bool isCategoryActive(int index) {
    return _selectedCategoryIndex.value == index;
  }

  /// Get current background color based on selected category
  Color get currentBackgroundColor {
    return laundryCategories[_selectedCategoryIndex.value]['color'] as Color;
  }

  /// Handle banner page change
  void onBannerPageChanged(int index) {
    _selectedBannerIndex.value = index;
  }

  /// Get total number of banners
  int get bannerCount => bannerList.length;

  /// Calculate total cost of all selected items
  double get totalCost {
    double total = 0.0;
    for (final category in itemCategories) {
      for (final item in category.items) {
        total += item.price * item.quantity;
      }
    }
    return total;
  }

  /// Get total number of selected items
  int get totalItemCount {
    int count = 0;
    for (final category in itemCategories) {
      for (final item in category.items) {
        count += item.quantity;
      }
    }
    return count;
  }

  /// Check if any items are selected
  bool get hasSelectedItems => totalItemCount > 0;
}
