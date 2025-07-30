import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/delivery/track_delivery/track_delivery_controller.dart';

class TrackDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackDeliveryController());
  }
}
