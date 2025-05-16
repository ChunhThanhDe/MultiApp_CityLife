import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';

import 'sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRepository());
    Get.lazyPut(() => SignUpController());
  }
}
