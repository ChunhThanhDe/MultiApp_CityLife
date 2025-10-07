import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/product_repository.dart';
import 'package:sixam_mart_user/domain/repositories/wishlist_repository.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_product_detail/store_product_detail_controller.dart';

class StoreProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(() => ProductRepository());
    Get.lazyPut<WishlistRepository>(() => WishlistRepository(), fenix: true);
    Get.lazyPut<FavoritesController>(() => FavoritesController(), fenix: true);
    Get.lazyPut<StoreProductDetailController>(() => StoreProductDetailController(Get.arguments['productId']));
  }
}
