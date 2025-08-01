import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/wallet/add_fund/add_fund_controller.dart';

class AddFundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddFundController());
  }
}
