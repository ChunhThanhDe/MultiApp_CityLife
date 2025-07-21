import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_info_food_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_info_grocery_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_info_response.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';

enum FilterType {
  all(label: 'All', icon: null),
  drinks(label: 'Drinks', icon: 'assets/icons/ic_drink.svg'),
  foods(label: 'Foods', icon: 'assets/icons/ic_burger.svg'),
  atHome(label: 'At Home', icon: 'assets/icons/ic_home.svg');

  const FilterType({required this.label, this.icon});
  final String label;
  final String? icon;
}

class ProductItem {
  final String name;
  final String price;
  final String imageUrl;
  final List<FilterType> categories;
  final List<StoreServiceType> availableServices;
  final double rating;
  final int reviewCount;

  ProductItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    this.categories = const [FilterType.foods],
    this.availableServices = const [StoreServiceType.inStore],
  });
}

class StoreController extends BaseController with GetSingleTickerProviderStateMixin {
  final StoreRepository _storeRepository = Get.find<StoreRepository>();

  late TabController serviceTabController;

  final StoreType storeType;
  final int storeId;

  StoreController({required this.storeType, required this.storeId});

  /// State
  @override
  final RxBool isLoading = true.obs;
  FilterType _selectedFilter = FilterType.all;
  StoreServiceType _selectedService = StoreServiceType.inStore;

  FilterType get selectedFilter => _selectedFilter;
  StoreServiceType get selectedService => _selectedService;

  /// Responses
  final Rx<StoreInfoFoodResponse?> foodResponse = Rx<StoreInfoFoodResponse?>(null);
  final Rx<StoreInfoGroceryResponse?> groceryResponse = Rx<StoreInfoGroceryResponse?>(null);
  final Rx<StoreInfoResponse?> generalResponse = Rx<StoreInfoResponse?>(null);
  final Rx<StoreDetail?> storeInfo = Rx<StoreDetail?>(null);

  /// Popular Items & Categories
  final RxList<ProductItem> _popularItems = <ProductItem>[].obs;
  List<ProductItem> get popularItems => _popularItems;

  final RxMap<String, List<ProductItem>> _categories = <String, List<ProductItem>>{}.obs;
  Map<String, List<ProductItem>> get categories => _categories;

  @override
  void onInit() {
    super.onInit();
    serviceTabController = TabController(length: 3, vsync: this);
    loadStoreDetail();

    serviceTabController.addListener(() {
      if (!serviceTabController.indexIsChanging) {
        selectService(StoreServiceType.values[serviceTabController.index]);
      }
    });
  }

  @override
  void onClose() {
    serviceTabController.dispose();
    super.onClose();
  }

  Future<void> loadStoreDetail() async {
    isLoading.value = true;

    final result = await _storeRepository.getStoreDetail(
      storeId: storeId,
      storeType: storeType,
    );

    try {
      switch (result) {
        case Success(:final response):
          switch (storeType) {
            case StoreType.food:
              final data = StoreInfoFoodResponse.fromJson(response.data);
              foodResponse.value = data;
              storeInfo.value = data.store;

              print('🍔 [Food] API sections: ${data.sections.length}');
              print('🍔 [Food] API popular items: ${data.popularItems.length}');

              _popularItems.value = data.popularItems
                  .map(
                    (e) => ProductItem(
                      name: e.name,
                      price: e.price.toString(),
                      imageUrl: e.imageUrl,
                      rating: e.avgRating,
                      reviewCount: e.ratingCount,
                      categories: [FilterType.foods],
                      availableServices: StoreServiceType.values,
                    ),
                  )
                  .toList();

              _categories.value = {
                for (var section in data.sections)
                  section.categoryName: section.items
                      .map(
                        (e) => ProductItem(
                          name: e.name,
                          price: e.price.toString(),
                          imageUrl: e.imageUrl,
                          rating: e.avgRating,
                          reviewCount: e.ratingCount,
                          categories: [FilterType.foods],
                          availableServices: StoreServiceType.values,
                        ),
                      )
                      .toList(),
              };

              // Gán thông tin store vào storeInfo

              print('🍔 [Food] Controller popularItems.length: ${_popularItems.length}');
              print('🍔 [Food] Controller categories: ${_categories.keys}');
              break;

            case StoreType.grocery:
              final data = StoreInfoGroceryResponse.fromJson(response.data);
              groceryResponse.value = data;

              _categories.value = {
                for (var section in data.sections)
                  section.categoryId.toString(): section.items
                      .map(
                        (e) => ProductItem(
                          name: e.name,
                          price: e.price.toString(),
                          imageUrl: e.imageUrl,
                          rating: e.avgRating,
                          reviewCount: e.ratingCount,
                          categories: [FilterType.foods],
                          availableServices: StoreServiceType.values,
                        ),
                      )
                      .toList(),
              };

              print('🛒 [Grocery] Controller categories: ${_categories.keys}');
              break;

            case StoreType.general:
              final data = StoreInfoResponse.fromJson(response.data);
              generalResponse.value = data;

              _categories.value = {
                for (var menu in data.menu)
                  menu.categoryName: menu.items
                      .map(
                        (e) => ProductItem(
                          name: e.name,
                          price: e.price.toString(),
                          imageUrl: e.imageUrl,
                          rating: e.avgRating,
                          reviewCount: e.ratingCount,
                          categories: [FilterType.foods],
                          availableServices: StoreServiceType.values,
                        ),
                      )
                      .toList(),
              };

              print('🛍️ [General] Controller categories: ${_categories.keys}');
              break;

            case StoreType.reviews:
              return;
          }
          break;

        case Failure(:final error):
          Get.snackbar('Error', 'Load store detail failed');
          break;
      }
    } finally {
      isLoading.value = false;
      print('🔄 Load complete. isLoading: ${isLoading.value}');
    }
  }

  /// Filter logic
  void selectFilter(FilterType filter) {
    _selectedFilter = filter;
    update();
  }

  bool isFilterSelected(FilterType filter) => _selectedFilter == filter;

  void selectService(StoreServiceType service) {
    _selectedService = service;
    update();
  }

  bool isServiceSelected(StoreServiceType service) => _selectedService == service;

  List<ProductItem> filterItems(List<ProductItem> items) {
    return items.where((item) {
      final matchFilter = _selectedFilter == FilterType.all || item.categories.contains(_selectedFilter);
      final matchService = item.availableServices.contains(_selectedService);
      return matchFilter && matchService;
    }).toList();
  }

  Map<String, List<ProductItem>> get filteredCategories {
    final Map<String, List<ProductItem>> result = {};

    _categories.forEach((key, items) {
      final filtered = filterItems(items);
      if (filtered.isNotEmpty) {
        result[key] = filtered;
      }
    });

    return result;
  }
}
