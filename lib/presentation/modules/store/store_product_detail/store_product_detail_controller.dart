import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';
import 'package:sixam_mart_user/domain/repositories/product_repository.dart';

class StoreProductDetailController extends BaseController {
  final int productId;
  final ProductRepository _productRepository = Get.find<ProductRepository>();

  // State
  @override
  final RxBool isLoading = true.obs;

  final Rx<ProductDetail?> product = Rx<ProductDetail?>(null);
  final RxList<ProductRecommendation> recommendations = <ProductRecommendation>[].obs;
  final RxMap<String, String> selectedOptions = <String, String>{}.obs; // group_name -> option

  StoreProductDetailController(this.productId);

  @override
  void onInit() {
    super.onInit();
    fetchProductDetail();
  }

  Future<void> fetchProductDetail() async {
    isLoading.value = true;

    final result = await _productRepository.getProductDetail(productId: productId);

    try {
      switch (result) {
        case Success(:final response):
          final detailResponse = ProductDetailResponse.fromJson(response.data);
          product.value = detailResponse.item;
          recommendations.value = detailResponse.recommendations;
          break;

        case Failure():
          Get.snackbar('Error', 'Failed to load product detail');
          break;
      }
    } finally {
      isLoading.value = false;
    }
  }

  bool isOptionSelected(String group, String value) => selectedOptions[group] == value;

  void selectOption(String group, String value) {
    selectedOptions[group] = value;
    update();
  }
}
