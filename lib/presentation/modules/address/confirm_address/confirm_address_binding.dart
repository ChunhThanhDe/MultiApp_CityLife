import 'package:get/get.dart';

import 'confirm_address_controller.dart';

class ConfirmAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmAddressController());
  }
}