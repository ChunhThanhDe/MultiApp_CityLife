import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_info_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';
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
  ProductItem({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    this.categories = const [FilterType.foods],
    this.availableServices = const [StoreServiceType.inStore],
  });
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final List<FilterType> categories;
  final List<StoreServiceType> availableServices;
  final double rating;
  final int reviewCount;
}

class StoreController extends BaseController with GetSingleTickerProviderStateMixin {
  StoreController({required this.storeType, required this.storeId});
  final StoreRepository _storeRepository = Get.find<StoreRepository>();

  late TabController serviceTabController;

  final String storeType;
  final int storeId;
  FilterType _selectedFilter = FilterType.all;
  StoreServiceType _selectedService = StoreServiceType.inStore;

  FilterType get selectedFilter => _selectedFilter;
  StoreServiceType get selectedService => _selectedService;

  /// Responses
  final Rx<StoreInfomationResponse?> storeResponse = Rx<StoreInfomationResponse?>(null);
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
    serviceTabController = TabController(length: StoreServiceType.values.length, vsync: this);
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

    final result = await _storeRepository.getStoreInformation(storeType, storeId);

    try {
      switch (result) {
        case Success(:final response):
          // Handle merged store information response
          if (storeType == 'food' || storeType == 'grocery' || storeType == 'pharmacy') {
            final data = StoreInfomationResponse.fromJson(response.data);
            storeResponse.value = data;

            // Set store info based on available data
            if (data.store != null) {
              storeInfo.value = data.store;
            } else if (data.groceryStore != null) {
              // Convert GroceryStore to StoreDetail if needed
              storeInfo.value = StoreDetail(
                id: data.groceryStore?.id,
                name: data.groceryStore?.name,
                logoUrl: data.groceryStore?.logoUrl,
                coverPhotoUrl: data.groceryStore?.coverPhotoUrl,
                rating: 0.0, // Default rating for grocery stores
                reviewCount: 0, // Default review count for grocery stores
                services: null,
              );
            }

            // Handle popular items (food stores)
            if (data.popularItems != null) {
              _popularItems.value = data.popularItems!
                  .map(
                    (e) => ProductItem(
                      id: e.id ?? 0,
                      name: e.name ?? '',
                      price: e.price?.toDouble() ?? 0.0,
                      imageUrl: e.imageUrl ?? '',
                      rating: e.avgRating ?? 0.0,
                      reviewCount: e.ratingCount ?? 0,
                      categories: [FilterType.foods],
                      availableServices: StoreServiceType.values,
                    ),
                  )
                  .toList();
            }

            // Handle sections (food stores)
            if (data.sections != null) {
              _categories.value = {
                for (final section in data.sections!)
                  section.categoryName ?? 'Unknown': (section.items ?? [])
                      .map(
                        (e) => ProductItem(
                          id: e.id ?? 0,
                          name: e.name ?? '',
                          price: e.price?.toDouble() ?? 0.0,
                          imageUrl: e.imageUrl ?? '',
                          rating: e.avgRating ?? 0.0,
                          reviewCount: e.ratingCount ?? 0,
                          categories: [FilterType.foods],
                          availableServices: StoreServiceType.values,
                        ),
                      )
                      .toList(),
              };
            }

            // Handle grocery sections
            if (data.grocerySections != null) {
              _categories.value = {
                for (final section in data.grocerySections!)
                  section.categoryId?.toString() ?? 'Unknown': (section.items ?? [])
                      .map(
                        (e) => ProductItem(
                          id: e.id ?? 0,
                          name: e.name ?? '',
                          price: e.price?.toDouble() ?? 0.0,
                          imageUrl: e.imageUrl ?? '',
                          rating: e.avgRating ?? 0.0,
                          reviewCount: e.ratingCount ?? 0,
                          categories: [FilterType.foods],
                          availableServices: StoreServiceType.values,
                        ),
                      )
                      .toList(),
              };
            }
          } else if (storeType == 'general') {
            final data = StoreInfoResponse.fromJson(response.data);
            generalResponse.value = data;

            _categories.value = {
              for (final menu in data.menu)
                menu.categoryName: menu.items
                    .map(
                      (e) => ProductItem(
                        id: e.id,
                        name: e.name,
                        price: e.price.toDouble(), // Convert int to double
                        imageUrl: e.imageUrl,
                        rating: e.avgRating,
                        reviewCount: e.ratingCount,
                        categories: [FilterType.foods],
                        availableServices: StoreServiceType.values,
                      ),
                    )
                    .toList(),
            };
          } else if (storeType == 'reviews') {
            return;
          }
          break;

        case Failure():
          Get.snackbar('Error', 'Load store detail failed');
          break;
      }
    } finally {
      isLoading.value = false;
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
