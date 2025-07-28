import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
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
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_controller.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class RootBindings extends Bindings {
  @override
  void dependencies() {
    // Initialize repositories needed for root screen and its children
    Get.lazyPut(() => AuthRepository());
    Get.lazyPut(() => SettingRepository());
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => WishlistRepository());
    Get.lazyPut(() => CartRepository());
    Get.lazyPut(() => StoreRepository());

    // Initialize CartService with permanent persistence for cart functionality
    Get.put(CartService(Get.find()), permanent: true);

    // Initialize controllers
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ServiceController());
    Get.lazyPut(() => ViewCartController());
    Get.lazyPut(() => WalletController());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => RootController());
  }
}
