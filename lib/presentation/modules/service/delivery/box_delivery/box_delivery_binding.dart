import 'package:get/get.dart';

import 'box_delivery_controller.dart';

class BoxDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BoxDeliveryController());
  }
}
