import 'package:get/get.dart';

import 'tracking_delivery_controller.dart';

class TrackingDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackingDeliveryController());
  }
}
