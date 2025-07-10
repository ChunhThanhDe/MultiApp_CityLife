import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/module.repository.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

class FoodCategory {
  final String label;
  final String imagePath;
  final VoidCallback? onTap;

  const FoodCategory({required this.label, required this.imagePath, this.onTap});
}

class ServiceController extends BaseController {
  final ModuleRepository _moduleRepository = Get.find<ModuleRepository>();

  @override
  void onInit() {
    super.onInit();
    getFastFoodStores();
  }

  final Rx<GetStoresResponse?> fastFoodData = Rx<GetStoresResponse?>(null);
  final Rx<GetStoresResponse?> groceryData = Rx<GetStoresResponse?>(null);
  final Rx<Category?> selectedCategory = Rx<Category?>(null);

  // Method to load data for specific category
  void loadCategoryData(Category category) {
    selectedCategory.value = category;

    refreshData();
  }

  // Method to clear selected category
  void clearSelectedCategory() {
    selectedCategory.value = null;
  }

  // Method to load data for specific service type
  void loadServiceTypeData(ServiceType serviceType) {
    selectedCategory.value = null;

    switch (serviceType) {
      case ServiceType.food:
        getFastFoodStores();
        break;
      case ServiceType.grocery:
        getGroceryStores();
        break;
      case ServiceType.delivery:
      case ServiceType.laundry:
      case ServiceType.ticket:
      case ServiceType.cleaning:
      case ServiceType.seeMore:
        break;
    }
  }

  // Get filtered data based on selected category
  List<BannerItem> get categoryFilteredShops {
    if (selectedCategory.value == null) {
      return shopsNearYouItems;
    }

    // Filter shops based on category
    // This is a simplified version - you might want to implement more sophisticated filtering
    return shopsNearYouItems;
  }

  List<BannerItem> get categoryFilteredProducts {
    if (selectedCategory.value == null) {
      return topOffersItems;
    }

    // Filter products based on category
    return topOffersItems;
  }

  // Check if a category is currently selected
  bool get hasSelectedCategory => selectedCategory.value != null;

  // Get current selected category name
  String get selectedCategoryName => selectedCategory.value?.name ?? '';

  // Helper method to convert API field names to display titles
  String getSectionTitle(String apiFieldName) {
    switch (apiFieldName) {
      case 'recent':
        return 'Recently Viewed';
      case 'shop_near_you':
        return 'Shops Near You';
      case 'top_offer':
        return 'Top Offers';
      case 'today_offer':
        return 'Today Offers';
      case 'popular_near_you':
        return 'Popular Near You';
      case 'all_store':
        return 'All Stores';
      default:
        // Convert snake_case to Title Case
        return apiFieldName.split('_').map((word) => word.isNotEmpty ? '${word[0].toUpperCase()}${word.substring(1)}' : '').join(' ');
    }
  }

  // Section title getters using the helper method
  String get recentSectionTitle => getSectionTitle('recent');
  String get shopsNearYouSectionTitle => getSectionTitle('shop_near_you');
  String get topOffersSectionTitle => getSectionTitle('top_offer');
  String get todayOffersSectionTitle => getSectionTitle('today_offer');
  String get popularNearYouSectionTitle => getSectionTitle('popular_near_you');
  String get allStoresSectionTitle => getSectionTitle('all_store');

  // Grocery section titles
  String get groceryShopsNearYouSectionTitle => 'Grocery ${getSectionTitle('shop_near_you')}';
  String get groceryPopularSectionTitle => 'Popular Grocery Items';

  // Food categories data from API
  List<FoodCategory> get foodCategories {
    final categories = fastFoodData.value?.categories ?? [];
    return categories
        .map(
          (category) => FoodCategory(
            label: category.name,
            imagePath: Assets.images.imgFood.path, // Use local asset as fallback
            onTap: () {
              // Navigate to category page
            },
          ),
        )
        .toList();
  }

  Future<void> getFastFoodStores() async {
    await safeExecute(() async {
      final result = await _moduleRepository.getFastFoodStores(zoneId: 1, moduleId: 3, id: 1);
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final storesData = GetStoresResponse.fromJson(response.data);
          fastFoodData.value = storesData;
        case Failure(:final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }
    });
  }

  Future<void> getGroceryStores() async {
    await safeExecute(() async {
      final result = await _moduleRepository.getGroceryStores(zoneId: 1, moduleId: 4, id: 1);
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final storesData = GetStoresResponse.fromJson(response.data);
          groceryData.value = storesData;
        case Failure(:final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }
    });
  }

  Future<void> refreshData() async {
    await Future.wait([getFastFoodStores(), getGroceryStores()]);
  }

  // Helper methods to convert API data to BannerItem
  List<BannerItem> get recentlyViewedItems {
    final recent = fastFoodData.value?.recent ?? [];
    return recent
        .map(
          (store) => BannerItem(
            title: store.name,
            imageUrl: store.coverPhoto,
            logoUrl: store.logo,
            onTap: () {
              Get.toNamed(AppRoutes.store);
            },
          ),
        )
        .toList();
  }

  List<BannerItem> get shopsNearYouItems {
    final shops = fastFoodData.value?.shopNearYou ?? [];
    return shops
        .map(
          (store) => BannerItem(
            title: store.name,
            imageUrl: store.coverPhoto,
            logoUrl: store.logo,
            deliveryFee: store.distanceKm != null ? store.distanceKm! * 2 : 5.99, // Example calculation
            isVerified: store.rating > 4.0,
            time: store.deliveryTime,
            onTap: () {
              Get.toNamed(AppRoutes.store);
            },
          ),
        )
        .toList();
  }

  List<BannerItem> get topOffersItems {
    final products = fastFoodData.value?.topOffer ?? [];
    return products
        .map(
          (product) => BannerItem(
            title: '',
            imageUrl: product.image,
            onTap: () {
              // Navigate to product detail
            },
          ),
        )
        .toList();
  }

  List<BannerItem> get todayOffersItems {
    final stores = fastFoodData.value?.todayOffer ?? [];
    return stores
        .map(
          (store) => BannerItem(
            title: store.name,
            imageUrl: store.coverPhoto,
            logoUrl: store.logo,
            deliveryFee: store.distanceKm != null ? store.distanceKm! * 2 : 3.99,
            isVerified: store.rating > 4.0,
            time: store.deliveryTime,
            onTap: () {
              Get.toNamed(AppRoutes.store);
            },
          ),
        )
        .toList();
  }

  List<BannerItem> get popularNearYouItems {
    final products = fastFoodData.value?.popularNearYou ?? [];
    return products
        .map(
          (product) => BannerItem(
            title: product.name?.isNotEmpty == true ? product.name! : 'Product',
            imageUrl: product.image,
            onTap: () {
              // Navigate to product detail
            },
          ),
        )
        .toList();
  }

  List<BannerItem> get allStoresItems {
    final stores = fastFoodData.value?.allStore ?? [];
    return stores
        .map(
          (store) => BannerItem(
            title: store.name,
            imageUrl: store.coverPhoto,
            logoUrl: store.logo,
            deliveryFee: store.distanceKm != null ? store.distanceKm! * 2 : 4.99,
            isVerified: store.rating > 4.0,
            time: store.deliveryTime,
            onTap: () {
              Get.toNamed(AppRoutes.store);
            },
          ),
        )
        .toList();
  }

  // Grocery data methods
  List<BannerItem> get groceryShopsNearYouItems {
    final shops = groceryData.value?.shopNearYou ?? [];
    return shops
        .map(
          (store) => BannerItem(
            title: store.name,
            imageUrl: store.coverPhoto,
            logoUrl: store.logo,
            deliveryFee: store.distanceKm != null ? store.distanceKm! * 1.5 : 3.99,
            isVerified: store.rating > 4.0,
            time: store.deliveryTime,
            onTap: () {
              Get.toNamed(AppRoutes.store);
            },
          ),
        )
        .toList();
  }

  List<BannerItem> get groceryPopularItems {
    final products = groceryData.value?.popularNearYou ?? [];
    return products
        .map(
          (product) => BannerItem(
            title: product.name?.isNotEmpty == true ? product.name! : 'Product',
            imageUrl: product.image,
            onTap: () {
              // Navigate to product detail
            },
          ),
        )
        .toList();
  }
}
