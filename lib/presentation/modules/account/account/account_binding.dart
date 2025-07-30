import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/setting_repository.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_2_step_verification/account_2_step_verification_controller.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_controller.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_passkeys/account_passkeys_controller.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_password/account_password_controller.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_security/account_security_controller.dart';

import 'package:sixam_mart_user/presentation/modules/account/account/account_controller.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingRepository());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => AccountManageController());
    Get.lazyPut(() => Account2StepVerificationController());
    Get.lazyPut(() => AccountPasskeysController());
    Get.lazyPut(() => AccountPasswordController());
    Get.lazyPut(() => AccountSecurityController());
  }
}
