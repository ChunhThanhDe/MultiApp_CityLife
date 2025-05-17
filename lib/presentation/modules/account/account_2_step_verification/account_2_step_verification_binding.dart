import 'package:get/get.dart';

import 'account_2_step_verification_controller.dart';

class Account2StepVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Account2StepVerificationController());
  }
}
