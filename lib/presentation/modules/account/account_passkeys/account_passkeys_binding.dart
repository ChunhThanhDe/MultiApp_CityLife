import 'package:get/get.dart';

import 'account_passkeys_controller.dart';

class AccountPasskeysBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountPasskeysController());
  }
}
