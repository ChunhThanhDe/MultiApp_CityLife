import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/domain/repositories/biti_payment_repository.dart';
import 'package:sixam_mart_user/domain/repositories/cart_repository.dart';
import 'package:sixam_mart_user/domain/repositories/setting_repository.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';
import 'package:sixam_mart_user/domain/repositories/wishlist_repository.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_controller.dart';
import 'package:sixam_mart_user/presentation/modules/cart/view_cart/view_cart_controller.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui1/service_ui1_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_controller.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_controller.dart';
import 'package:sixam_mart_user/services/biti_payment_service.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class RootBindings extends Bindings {
  @override
  void dependencies() {
    // Initialize repositories needed for root screen and its children
    Get.lazyPut(() => AuthRepository(), fenix: true);
    Get.lazyPut(() => SettingRepository(), fenix: true);
    Get.lazyPut(() => UserRepository(), fenix: true);
    Get.lazyPut(() => WishlistRepository(), fenix: true);
    Get.lazyPut(() => CartRepository(), fenix: true);
    Get.lazyPut(() => StoreRepository(), fenix: true);
    Get.lazyPut(() => BitiPaymentRepository(), fenix: true);

    // Initialize services with permanent persistence
    Get.put(CartService(Get.find()), permanent: true);
    Get.put(BitiPaymentService(Get.find()), permanent: true);

    // Initialize controllers
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ServiceController());
    Get.lazyPut(() => ServiceUI1Controller());
    Get.lazyPut(() => ServiceUI2Controller());
    Get.lazyPut(() => ViewCartController());
    Get.lazyPut(() => WalletController());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => RootController());
  }
}
