import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui1/service_ui1_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';

/// Main service controller that manages service routing and UI type coordination
/// Acts as a coordinator between different UI type controllers
class ServiceController extends BaseController {
  final StoreRepository _storeRepository = Get.find<StoreRepository>();

  @override
  void onReady() {
    super.onReady();
    _initializeUIControllers();
    loadServiceTypeData(currentService.value);
  }

  // Core service data
  final RxList<Category> categories = RxList<Category>([]);
  final RxList<BannerSection> dynamicSections = RxList<BannerSection>([]);
  final Rx<ServiceEntity> currentService = Rx<ServiceEntity>(
    const ServiceEntity(
      id: 1, 
      moduleName: 'food', 
      thumbnail: '', 
      moduleType: 'food', 
      uiType: ServiceUIType.ui1
    )
  );

  // UI Controllers for different UI types
  ServiceUI1Controller? _ui1Controller;
  ServiceUI2Controller? _ui2Controller;

  /// Initialize UI controllers based on available UI types
  void _initializeUIControllers() {
    try {
      _ui1Controller = Get.find<ServiceUI1Controller>();
    } catch (e) {
      // UI1 controller not registered yet
    }
    
    try {
      _ui2Controller = Get.find<ServiceUI2Controller>();
    } catch (e) {
      // UI2 controller not registered yet
    }
  }

  /// Load data for current service type
  void loadCurrentServiceTypeData() {
    loadServiceTypeData(currentService.value);
  }

  /// Update current service and notify UI controllers
  void updateCurrentService(ServiceEntity service) {
    final previousUIType = currentService.value.uiType;
    currentService.value = service;
    
    // Clear data when switching between different UI types
    if (previousUIType != service.uiType) {
      _clearServiceData();
    }
    
    // Notify appropriate UI controller about service change
    _notifyUIControllers(service);
    
    // Load data for new service
    loadServiceTypeData(service);
  }

  /// Load data for specific service type based on UI type
  void loadServiceTypeData(ServiceEntity serviceType) async {
    switch (serviceType.uiType) {
      case ServiceUIType.ui1:
        // UI1 services (food-like) load data from API
        await showAppOverlayLoading(
          future: _loadServiceData(serviceType.moduleType ?? '')
        );
        break;
      case ServiceUIType.ui2:
        // UI2 services (laundry-like) use static data
        // No API call needed, data is managed by ServiceUI2Controller
        break;
      case null:
        // Handle null case - default to UI1
        await showAppOverlayLoading(
          future: _loadServiceData(serviceType.moduleType ?? '')
        );
        break;
    }
  }

  /// Clear service data when switching UI types
  void _clearServiceData() {
    categories.clear();
    dynamicSections.clear();
  }

  /// Notify UI controllers about service changes
  void _notifyUIControllers(ServiceEntity service) {
    switch (service.uiType) {
      case ServiceUIType.ui1:
        _ui1Controller?.onServiceChanged(service);
        break;
      case ServiceUIType.ui2:
        _ui2Controller?.onServiceChanged(service);
        break;
      case null:
        // Handle null case - default to UI1
        _ui1Controller?.onServiceChanged(service);
        break;
    }
  }

  // Clean service data loading
  Future<void> _loadServiceData(String serviceType) async {
    final result = await _storeRepository.getStoreData(serviceType);
    switch (result) {
      case Success(:final response):
        if (response.statusCode != 200) {
          final errorResponse = ErrorResponse.fromJson(response.data);
          showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
          return;
        }
        final responseData = GetStoresResponse.fromJson(response.data);
        if (responseData.categories?.isNotEmpty == true) {
          categories.clear();
          categories.addAll(responseData.categories ?? []);
        }
        if (responseData.data?.isNotEmpty == true) {
          dynamicSections.clear();
          dynamicSections.addAll(BannerDataUtils.getBannerSections(responseData.data, serviceType: serviceType));
        }
      case Failure(:final error):
        showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
    }
  }

  /// Refresh data for current service
  Future<void> refreshData() async {
    final serviceType = currentService.value;
    loadServiceTypeData(serviceType);
  }

  /// Get current UI type
  ServiceUIType get currentUIType => currentService.value.uiType ?? ServiceUIType.ui1;

  /// Check if current service is UI1 type
  bool get isUI1Type => currentUIType == ServiceUIType.ui1;

  /// Check if current service is UI2 type
  bool get isUI2Type => currentUIType == ServiceUIType.ui2;

  @override
  void onClose() {
    // Clean up resources
    categories.clear();
    dynamicSections.clear();
    super.onClose();
  }
}
