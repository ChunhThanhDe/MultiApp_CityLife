import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/payment/scan_card/scan_card_controller.dart';

class ScanCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanCardController());
  }
}
