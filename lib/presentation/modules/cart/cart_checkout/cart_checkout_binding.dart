import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_checkout/cart_checkout_controller.dart';

class CartCheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartCheckoutController(Get.arguments['serviceCart']));
  }
}
