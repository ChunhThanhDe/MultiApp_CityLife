import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_controller.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_controller.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_controller.dart';

class RootBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ServiceController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => WalletController());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => RootController());
  }
}
