import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';

class StoreProductDetailController extends BaseController {
  final int productId;
  StoreProductDetailController(this.productId);

  Rx<ProductDetail?> product = Rx<ProductDetail?>(null);
  RxList<ProductRecommendation> recommendations = <ProductRecommendation>[].obs;
  RxBool loading = false.obs;
  RxMap<String, String> selectedOptions = <String, String>{}.obs; // group_name -> option

  @override
  void onInit() {
    fetchProductDetail();
    super.onInit();
  }

  Future<void> fetchProductDetail() async {
    loading.value = true;
    // ... fetch API & fill product, recommendations
    loading.value = false;
  }

  bool isOptionSelected(String group, String value) {
    return selectedOptions[group] == value;
  }

  void selectOption(String group, String value) {
    selectedOptions[group] = value;
  }
}
