import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';

import 'package:sixam_mart_user/presentation/modules/account/account_password/account_password_controller.dart';

class AccountPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => AccountPasswordController());
  }
}
