import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

/// Base abstract controller for all service UI types
/// Provides common functionality and enforces consistent interface
abstract class BaseServiceUIController extends BaseController {
  /// Reference to the main service controller
  ServiceController get serviceController => Get.find<ServiceController>();

  /// Current service entity
  ServiceEntity get currentService => serviceController.currentService.value;

  /// UI Type that this controller handles
  ServiceUIType get uiType;

  @override
  void onReady() {
    super.onReady();
    initializeUI();
  }

  /// Initialize UI-specific data and state
  /// Must be implemented by concrete UI controllers
  void initializeUI();

  /// Refresh data for this UI type
  /// Can be overridden by concrete implementations
  Future<void> refreshData() async {
    await serviceController.refreshData();
  }

  /// Called when service changes - can be overridden by concrete controllers
  void onServiceChanged(ServiceEntity service) {
    // Default implementation - can be overridden
  }

  /// Handle service type change
  /// Can be overridden for UI-specific logic
  void onServiceTypeChanged(ServiceEntity newService) {
    // Default implementation - can be overridden
  }
}