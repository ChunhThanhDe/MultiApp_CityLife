import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/tracking_delivery/tracking_delivery_controller.dart';

class TrackingDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackingDeliveryController());
  }
}
