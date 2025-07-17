import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';

import 'store_controller.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreRepository>(() => StoreRepository());
    Get.lazyPut(() => StoreController(storeType: StoreType.food, storeId: 3));
  }
}
