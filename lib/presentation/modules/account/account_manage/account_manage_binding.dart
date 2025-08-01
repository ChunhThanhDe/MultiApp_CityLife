import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_controller.dart';

class AccountManageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountManageController());
  }
}
