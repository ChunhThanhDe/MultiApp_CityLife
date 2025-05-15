import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';

class RootBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRepository());
    Get.lazyPut(() => RootController());
  }
}
