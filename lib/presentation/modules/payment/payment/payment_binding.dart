import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/payment/payment/payment_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
  }
}
