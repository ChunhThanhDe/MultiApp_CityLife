import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui1/service_ui1_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_controller.dart';

enum ServiceControllerCategory { uiType, currentService, categories }

class ServiceController extends BaseController {
  @override
  void onReady() {
    super.onReady();
    _initializeUIControllers();
    _notifyCurrentUIController();
  }

  // Core service data - only current service info
  ServiceEntity _currentService = const ServiceEntity(id: 1, moduleName: 'food', thumbnail: '', moduleType: 'food', uiType: ServiceUIType.ui1);

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

  /// Update current service and notify UI controllers
  void updateCurrentService(ServiceEntity service) {
    final previousUIType = _currentService.uiType;
    _currentService = service;
    update([ServiceControllerCategory.uiType.name, ServiceControllerCategory.currentService.name, ServiceControllerCategory.categories.name]);

    // Notify appropriate UI controller about service change
    if (previousUIType != service.uiType) {
      // Service type changed - notify both old and new controllers
      _notifyUIControllerServiceTypeChanged(service);
    } else {
      // Same service type - just notify service changed
      _notifyUIControllerServiceChanged(service);
    }
  }

  /// Notify current UI controller on initialization
  void _notifyCurrentUIController() {
    _notifyUIControllerServiceChanged(_currentService);
  }

  /// Notify UI controller about service changes
  void _notifyUIControllerServiceChanged(ServiceEntity service) {
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

  /// Notify UI controller about service type changes
  void _notifyUIControllerServiceTypeChanged(ServiceEntity service) {
    switch (service.uiType) {
      case ServiceUIType.ui1:
        _ui1Controller?.onServiceTypeChanged(service);
        break;
      case ServiceUIType.ui2:
        _ui2Controller?.onServiceTypeChanged(service);
        break;
      case null:
        // Handle null case - default to UI1
        _ui1Controller?.onServiceTypeChanged(service);
        break;
    }
  }

  /// Refresh data for current service - delegate to UI controller
  Future<void> refreshData() async {
    switch (_currentService.uiType) {
      case ServiceUIType.ui1:
        await _ui1Controller?.refreshData();
        break;
      case ServiceUIType.ui2:
        await _ui2Controller?.refreshData();
        break;
      case null:
        // Handle null case - default to UI1
        await _ui1Controller?.refreshData();
        break;
    }
  }

  /// Get current service
  ServiceEntity get currentService => _currentService;

  /// Get current UI type
  ServiceUIType get currentUIType => _currentService.uiType ?? ServiceUIType.ui1;

  /// Check if current service is UI1 type
  bool get isUI1Type => currentUIType == ServiceUIType.ui1;

  /// Check if current service is UI2 type
  bool get isUI2Type => currentUIType == ServiceUIType.ui2;

  /// Get categories from current UI controller
  List<Category> get categories {
    switch (_currentService.uiType) {
      case ServiceUIType.ui1:
        return _ui1Controller?.categories ?? [];
      case ServiceUIType.ui2:
        // Convert UI2 static categories to Category objects
        return ServiceUI2Controller.categories.map((cat) => Category(id: 0, name: cat.label, image: cat.icon)).toList();
      case null:
        return _ui1Controller?.categories ?? [];
    }
  }

  /// Load service type data - delegate to UI controller
  Future<void> loadServiceTypeData(ServiceEntity serviceType) async {
    updateCurrentService(serviceType);
    await refreshData();
  }

  /// Apply filters and forward to current UI controller
  void applyFilters(Map<String, dynamic> filters) {
    switch (_currentService.uiType) {
      case ServiceUIType.ui1:
        _ui1Controller?.updateFilters(filters);
        break;
      case ServiceUIType.ui2:
        _ui2Controller?.updateFilters(filters);
        break;
      case null:
        _ui1Controller?.updateFilters(filters);
        break;
    }
  }

  @override
  void onClose() {
    // Clean up resources - UI controllers handle their own cleanup
    super.onClose();
  }
}
