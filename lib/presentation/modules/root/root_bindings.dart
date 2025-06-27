import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/module.repository.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_controller.dart';
import 'package:sixam_mart_user/presentation/modules/cart/view_cart/view_cart_controller.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_controller.dart';

class RootBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ModuleRepository());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ServiceController());
    Get.lazyPut(() => ViewCartController());
    Get.lazyPut(() => WalletController());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => RootController());
  }
}
