import 'package:get/get.dart';

import 'cart_checkout_controller.dart';

class CartCheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartCheckoutController());
  }
}