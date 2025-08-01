import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/cart/cart_order/cart_order_controller.dart';

class CartOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartOrderController());
  }
}