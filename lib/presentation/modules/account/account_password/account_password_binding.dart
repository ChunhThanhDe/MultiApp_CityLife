import 'package:get/get.dart';

import 'account_password_controller.dart';

class AccountPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountPasswordController());
  }
}