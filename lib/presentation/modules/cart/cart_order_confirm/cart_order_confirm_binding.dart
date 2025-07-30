import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/cart/cart_order_confirm/cart_order_confirm_controller.dart';

class CartOrderConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartOrderConfirmController());
  }
}