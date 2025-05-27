import 'package:get/get.dart';

import 'home_delivery_controller.dart';

class HomeDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeDeliveryController());
  }
}