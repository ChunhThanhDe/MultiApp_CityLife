import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/domain/repositories/wishlist_repository.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    if (Get.arguments['storeId'] == null || Get.arguments['storeType'] == null) {
      throw Exception('storeId and storeType are required');
    }
    Get.lazyPut<StoreRepository>(() => StoreRepository());
    Get.lazyPut<WishlistRepository>(() => WishlistRepository(), fenix: true);
    Get.lazyPut<FavoritesController>(() => FavoritesController(), fenix: true);
    Get.lazyPut<StoreController>(() => StoreController(storeId: Get.arguments['storeId'], storeType: Get.arguments['storeType']));
  }
}
