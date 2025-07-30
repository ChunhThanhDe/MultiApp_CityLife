import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
