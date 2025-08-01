import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';

import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRepository());
    Get.lazyPut(() => SignInController());
  }
}
