import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/track_delivery/track_delivery_controller.dart';

class TrackDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackDeliveryController());
  }
}
