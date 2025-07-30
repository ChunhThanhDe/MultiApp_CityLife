import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/wishlist_repository.dart';

import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';

class FavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishlistRepository());
    Get.lazyPut(() => FavoritesController());
  }
}
