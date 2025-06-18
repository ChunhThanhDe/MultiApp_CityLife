import 'package:get/get.dart';

import 'track_delivery_controller.dart';

class TrackDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackDeliveryController());
  }
}
