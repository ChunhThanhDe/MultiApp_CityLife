import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/account/account_security/account_security_controller.dart';

class AccountSecurityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountSecurityController());
  }
}
