import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/cart/cart_successful/cart_successful_controller.dart';

class CartSuccessfulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartSuccessfulController());
  }
}