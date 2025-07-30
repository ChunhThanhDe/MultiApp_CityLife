import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/onboarding/welcome/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
