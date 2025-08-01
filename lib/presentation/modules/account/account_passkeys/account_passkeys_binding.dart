import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/account/account_passkeys/account_passkeys_controller.dart';

class AccountPasskeysBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountPasskeysController());
  }
}
