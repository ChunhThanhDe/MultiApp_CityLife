import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/service_repository.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceRepository());
    Get.lazyPut(() => HomeController());
  }
}
