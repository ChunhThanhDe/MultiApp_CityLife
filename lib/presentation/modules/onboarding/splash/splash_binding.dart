import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';

import 'splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => SplashController());
  }
}
