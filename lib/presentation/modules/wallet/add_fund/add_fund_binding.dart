import 'package:get/get.dart';

import 'add_fund_controller.dart';

class AddFundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddFundController());
  }
}