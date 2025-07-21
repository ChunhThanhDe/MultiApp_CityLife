import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_products/store_products_controller.dart';

class StoreProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreProductsController());
    Get.lazyPut<StoreRepository>(() => StoreRepository());
    Get.lazyPut(() => StoreController(storeType: StoreType.food, storeId: 3));
  }
}
