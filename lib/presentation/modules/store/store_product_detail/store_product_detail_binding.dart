import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/product_repository.dart';

import 'store_product_detail_controller.dart';

class StoreProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(() => ProductRepository());
    Get.lazyPut<StoreProductDetailController>(() => StoreProductDetailController(Get.arguments['productId']));
  }
}
