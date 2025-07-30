import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceController());
  }
}
