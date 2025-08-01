import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/delivery_checkout/delivery_checkout_controller.dart';

class DeliveryCheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryCheckoutController());
  }
}
