import 'package:get/get.dart';

import 'store_product_detail_controller.dart';

class StoreProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    // Để lấy productId khi push route:
    Get.lazyPut<StoreProductDetailController>(
      () => StoreProductDetailController(Get.arguments['productId']),
    );
  }
}
