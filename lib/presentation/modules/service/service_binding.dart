import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/home_delivery/home_delivery_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui1/service_ui1_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_controller.dart';

/// Main service binding that registers all service-related controllers
/// Uses new UI type architecture with UI1 and UI2 controllers
class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    // Main service controller - coordinates between UI types
    Get.lazyPut(() => ServiceController());
    
    // UI type specific controllers
    Get.lazyPut(() => ServiceUI1Controller());
    Get.lazyPut(() => ServiceUI2Controller());
    
    // Delivery controller (unchanged)
    Get.lazyPut(() => HomeDeliveryController());
  }
}
