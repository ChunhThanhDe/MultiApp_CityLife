import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/service_repository.dart';

import 'service_controller.dart';

class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceRepository());
    Get.lazyPut(() => ServiceController());
  }
}
