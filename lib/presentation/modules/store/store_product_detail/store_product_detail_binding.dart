import 'package:get/get.dart';

import 'store_product_detail_controller.dart';

class StoreProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreProductDetailController());
  }
}