import 'package:get/get.dart';

import 'cart_order_confirm_controller.dart';

class CartOrderConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartOrderConfirmController());
  }
}