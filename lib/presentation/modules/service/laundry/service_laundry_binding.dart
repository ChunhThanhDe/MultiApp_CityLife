import 'package:get/get.dart';

import 'service_laundry_controller.dart';

class ServiceLaundryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceLaundryController());
  }
}