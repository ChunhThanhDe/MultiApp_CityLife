import 'package:get/get.dart';

import 'cart_order_controller.dart';

class CartOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartOrderController());
  }
}