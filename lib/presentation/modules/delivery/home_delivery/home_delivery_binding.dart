import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/delivery/home_delivery/home_delivery_controller.dart';

class HomeDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeDeliveryController());
  }
}
