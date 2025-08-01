import 'package:get/get.dart';

import 'cart_successful_controller.dart';

class CartSuccessfulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartSuccessfulController());
  }
}