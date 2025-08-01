import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/box_delivery/box_delivery_controller.dart';

class BoxDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BoxDeliveryController());
  }
}
