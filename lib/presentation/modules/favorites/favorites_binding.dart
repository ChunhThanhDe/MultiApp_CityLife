import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/wishlist_repository.dart';

import 'favorites_controller.dart';

class FavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishlistRepository());
    Get.lazyPut(() => FavoritesController());
  }
}
