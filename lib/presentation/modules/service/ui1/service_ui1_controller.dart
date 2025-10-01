import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/modules/service/core/base_service_ui_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';

enum ServiceUI1Category { dynamicSections }

class ServiceUI1Controller extends BaseServiceUIController {
  final StoreRepository _storeRepository = Get.find<StoreRepository>();

  @override
  ServiceUIType get uiType => ServiceUIType.ui1;

  /// Categories for this UI type
  List<Category> _categories = [];

  /// Dynamic banner sections
  List<BannerSection> _dynamicSections = [];

  /// Getter for categories
  List<Category> get categories => _categories;

  /// Getter for dynamic sections
  List<BannerSection> get dynamicSections => _dynamicSections;

  /// Filters state for this UI
  Map<String, dynamic> _filters = const {};
  Map<String, dynamic> get filters => _filters;

  @override
  Map<String, dynamic> getCurrentFilters() {
    return Map<String, dynamic>.from(_filters);
  }

  @override
  void initializeUI() {
    // Load data for current service
    loadServiceData(currentService);
  }

  /// Load data for UI1 service type
  Future<void> loadServiceData(ServiceEntity service) async {
    if (service.moduleType?.isNotEmpty == true) {
      await showAppOverlayLoading(future: _loadServiceData(service.moduleType!));
    }
  }

  /// Load service data from API
  Future<void> _loadServiceData(String serviceType) async {
    // Build query parameters from filters if available
    StoreQueryParameters? params;
    if (_filters.isNotEmpty) {
      params = StoreQueryParameters(
        delivery: _filters['delivery'] as String?,
        minPrice: _filters['min_price'] as int?,
        maxPrice: _filters['max_price'] as int?,
        rating: _filters['rating'] as int?,
        under30: _filters['under_30'] as int?,
        offers: _filters['offers'] as int?,
      );
    }

    final result = await _storeRepository.getStoreData(serviceType, queryParameters: params);
    switch (result) {
      case Success(:final response):
        if (response.statusCode != 200) {
          final errorResponse = ErrorResponse.fromJson(response.data);
          showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
          return;
        }
        final responseData = GetStoresResponse.fromJson(response.data);
        if (responseData.categories?.isNotEmpty == true) {
          _categories = responseData.categories ?? [];
        }
        if (responseData.data?.isNotEmpty == true) {
          _dynamicSections = BannerDataUtils.getBannerSections(responseData.data, serviceType: serviceType);
        }
        update([ServiceUI1Category.dynamicSections]);
      case Failure(:final error):
        showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
    }
  }

  @override
  void onServiceChanged(ServiceEntity service) {
    super.onServiceChanged(service);
    // Load data for new service
    loadServiceData(service);
  }

  @override
  void onServiceTypeChanged(ServiceEntity newService) {
    super.onServiceTypeChanged(newService);
    // Clear current data when service changes
    _categories = [];
    _dynamicSections = [];
    update([ServiceUI1Category.dynamicSections]);
    // Load data for new service
    loadServiceData(newService);
  }

  @override
  Future<void> refreshData() async {
    await loadServiceData(currentService);
  }

  /// Update filters and reload data
  @override
  void updateFilters(Map<String, dynamic> newFilters) {
    _filters = Map<String, dynamic>.from(newFilters);
    update([ServiceUI1Category.dynamicSections]);
    loadServiceData(currentService);
  }

  @override
  void onClose() {
    _categories = [];
    _dynamicSections = [];
    super.onClose();
  }
}
