import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/models/page_param/verification_page_param.dart';

import 'package:sixam_mart_user/presentation/modules/authentication/verification/verification_controller.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    final VerificationPageParam param = Get.arguments;
    Get.lazyPut(() => VerificationController(param: param));
  }
}
