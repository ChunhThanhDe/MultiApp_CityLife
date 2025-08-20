import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/category_expandable.dart';
import 'package:sixam_mart_user/presentation/modules/service/core/base_service_ui_controller.dart';

enum ServiceUI2Category { background, categoryTabs, bannerDots, bannerText, categoryExpandable, estimatedBill }

/// Controller for UI2 type services (Laundry-like interface)
/// Handles static data and category-based interface
class ServiceUI2Controller extends BaseServiceUIController {
  @override
  ServiceUIType get uiType => ServiceUIType.ui2;

  // Category data structure with colors
  static final List<Map<String, dynamic>> categories = [
    {'icon': 'icClothHanger1', 'label': 'Clothes', 'color': AppTheme.theme.stateBrandDefault500}, // Purple
    {'icon': 'icIron', 'label': 'Iron', 'color': AppTheme.theme.stateDangerDefault500}, // Red
    {'icon': 'icSingleBed1', 'label': 'Home', 'color': AppTheme.theme.stateInformationDefault500}, // Cyan
    {'icon': 'icBackpackModern1', 'label': 'Bags', 'color': AppTheme.theme.stateBrandDefault500}, // Blue
    {'icon': 'icSneakers1', 'label': 'Shoes', 'color': AppTheme.theme.stateSuccessDefault500}, // Green
  ];

  // Banner data structure
  static final List<Map<String, dynamic>> bannerList = [
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Professional Service', 'subtitle': 'Fast & Reliable'},
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Premium Care', 'subtitle': 'Expert Care for Your Items'},
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Express Service', 'subtitle': 'Same Day Delivery'},
    {'image': Assets.images.imgSingleBed1.path, 'title': 'Eco-Friendly', 'subtitle': 'Safe for You & Environment'},
  ];

  // Selected category index (0: Clothes, 1: Iron, 2: Home, 3: Bags, 4: Shoes)
  int _selectedCategoryIndex = 0;
  int get selectedCategoryIndex => _selectedCategoryIndex;

  // Current banner index for auto-scroll
  int _currentBannerIndex = 0;
  int get currentBannerIndex => _currentBannerIndex;
  int get selectedBannerIndex => _currentBannerIndex;

  // Current background color based on selected category
  Color get currentBackgroundColor => categories[selectedCategoryIndex]['color'] as Color;

  // Cart-related getters
  bool get hasSelectedItems {
    // Check if any items are selected in the category expandable data
    return categoryExpandableData.any((category) => category.items.any((item) => item.quantity > 0));
  }

  double get totalCost {
    double total = 0.0;
    for (final category in categoryExpandableData) {
      for (final item in category.items) {
        total += item.price * item.quantity;
      }
    }
    return total;
  }

  // Expanded categories tracking
  final RxSet<String> expandedCategories = <String>{}.obs;

  // Category expandable data
  final RxList<CategoryOption> categoryExpandableData = <CategoryOption>[
    CategoryOption(
      name: 'Wash & Fold',
      items: [
        ItemOption(name: 'T-Shirt', price: 15.0),
        ItemOption(name: 'Shirt', price: 20.0),
        ItemOption(name: 'Pants', price: 25.0),
        ItemOption(name: 'Dress', price: 30.0),
        ItemOption(name: 'Jacket', price: 40.0),
      ],
    ),
    CategoryOption(
      name: 'Dry Clean',
      items: [
        ItemOption(name: 'Suit', price: 80.0),
        ItemOption(name: 'Coat', price: 100.0),
        ItemOption(name: 'Formal Dress', price: 90.0),
        ItemOption(name: 'Blazer', price: 70.0),
      ],
    ),
    CategoryOption(
      name: 'Iron Only',
      items: [
        ItemOption(name: 'Shirt (Iron)', price: 8.0),
        ItemOption(name: 'Pants (Iron)', price: 10.0),
        ItemOption(name: 'Dress (Iron)', price: 12.0),
      ],
    ),
  ].obs;

  @override
  void initializeUI() {
    // UI2 uses static data, no need to load from API
    // Initialize default state
    _selectedCategoryIndex = 0;
    _currentBannerIndex = 0;
    update([ServiceUI2Category.background.name, ServiceUI2Category.categoryTabs.name, ServiceUI2Category.bannerDots.name, ServiceUI2Category.bannerText.name]);
  }

  /// Select category by index
  void selectCategory(int index) {
    if (index >= 0 && index < categories.length) {
      _selectedCategoryIndex = index;
      update([ServiceUI2Category.background.name, ServiceUI2Category.categoryTabs.name]);
    }
  }

  /// Update banner index
  void updateBannerIndex(int index) {
    _currentBannerIndex = index;
    update([ServiceUI2Category.bannerDots.name, ServiceUI2Category.bannerText.name]);
  }

  /// Get category data by index
  Map<String, dynamic> getCategoryData(int index) {
    if (index >= 0 && index < categories.length) {
      return categories[index];
    }
    return categories[0];
  }

  @override
  void onServiceChanged(ServiceEntity service) {
    super.onServiceChanged(service);
    // Reset to first category when service changes
    _selectedCategoryIndex = 0;
    _currentBannerIndex = 0;
    update([ServiceUI2Category.background.name, ServiceUI2Category.categoryTabs.name, ServiceUI2Category.bannerDots.name, ServiceUI2Category.bannerText.name]);
  }

  @override
  void onServiceTypeChanged(ServiceEntity newService) {
    super.onServiceTypeChanged(newService);
    // Reset to first category when service changes
    _selectedCategoryIndex = 0;
    _currentBannerIndex = 0;
    update([ServiceUI2Category.background.name, ServiceUI2Category.categoryTabs.name, ServiceUI2Category.bannerDots.name, ServiceUI2Category.bannerText.name]);
  }

  @override
  Future<void> refreshData() async {
    // UI2 uses static data, no refresh needed
    // Just reset state if needed
    initializeUI();
  }

  /// Toggle category expansion state
  void toggleCategoryExpansion(String categoryName) {
    if (expandedCategories.contains(categoryName)) {
      expandedCategories.remove(categoryName);
    } else {
      expandedCategories.add(categoryName);
    }
    update([ServiceUI2Category.categoryExpandable.name]);
  }

  @override
  void onClose() {
    // Clean up any resources if needed
    super.onClose();
  }
}
