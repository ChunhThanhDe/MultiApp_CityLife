import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/service/laundry/service_laundry_controller.dart';

class ServiceLaundryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceLaundryController());
  }
}