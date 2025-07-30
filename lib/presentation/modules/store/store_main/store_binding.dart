import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreRepository>(() => StoreRepository());
    Get.lazyPut<StoreController>(() => StoreController(storeId: Get.arguments['storeId'], storeType: Get.arguments['storeType'] as String));
  }
}
