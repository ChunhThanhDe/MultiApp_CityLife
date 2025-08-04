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
          final data = StoreInfomationResponse.fromJson(response.data);
          storeInfo.value = data.store;

          if (data.store == null) {
            return;
          }

          _categories.clear();

          // Load popular items
          if (data.popularItems != null) {
            _popularItems.clear();
            _popularItems.addAll(data.popularItems!);
          }

          // Load menu categories
          if (data.sections != null) {
            for (final section in data.sections!) {
              if (section.categoryName != null && section.items != null) {
                _categories[section.categoryName!] = section.items!;
              }
            }
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
      // For now, we'll show all items since the ProductItem from API doesn't have categories
      // You can extend the ProductItem model to include categories if needed
      return true;
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
