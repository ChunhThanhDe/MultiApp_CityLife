import 'package:get/get.dart';

import 'laundry_main_controller.dart';

class LaundryMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LaundryMainController());
  }
}