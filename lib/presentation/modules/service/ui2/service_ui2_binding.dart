import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_controller.dart';

/// Binding for UI2 service type (Laundry-like interface)
/// Handles dependency injection for ServiceUI2Controller
class ServiceUI2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceUI2Controller>(
      () => ServiceUI2Controller(),
    );
  }
}