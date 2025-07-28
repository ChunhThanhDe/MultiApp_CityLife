import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_products/store_products_controller.dart';

class StoreProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreProductsController());
  }
}
