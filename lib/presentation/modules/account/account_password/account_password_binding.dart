import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';

import 'account_password_controller.dart';

class AccountPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => AccountPasswordController());
  }
}
