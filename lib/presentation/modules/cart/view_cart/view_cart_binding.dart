import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/cart/view_cart/view_cart_controller.dart';

class ViewCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewCartController());
  }
}