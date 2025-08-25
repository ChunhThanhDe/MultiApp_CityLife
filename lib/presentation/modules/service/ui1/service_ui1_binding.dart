import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui1/service_ui1_controller.dart';

/// Binding for UI1 type services
/// Handles dependency injection for UI1 controller
class ServiceUI1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceUI1Controller());
  }
}