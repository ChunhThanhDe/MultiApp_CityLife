import 'package:get/get.dart';

import 'delivery_checkout_controller.dart';

class DeliveryCheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryCheckoutController());
  }
}
