import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/models/page_param/sign_in_page_param.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';

import 'sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    var pageParam = Get.arguments;
    Get.lazyPut(() => AuthRepository());
    if (pageParam is SignInPageParam) {
      Get.lazyPut(() => SignInController(pageParam: pageParam));
    } else {
      throw Exception('SignInPageParam is required');
    }
  }
}
