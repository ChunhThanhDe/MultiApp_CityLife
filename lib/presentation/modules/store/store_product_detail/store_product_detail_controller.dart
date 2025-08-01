import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';
import 'package:sixam_mart_user/domain/repositories/product_repository.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class StoreProductDetailController extends BaseController {
  // add_on_id -> quantity

  StoreProductDetailController(this.productId);
  final int productId;
  final ProductRepository _productRepository = Get.find<ProductRepository>();

  final Rx<ProductDetail?> product = Rx<ProductDetail?>(null);
  final RxList<ProductRecommendation> recommendations = <ProductRecommendation>[].obs;
  final RxMap<String, String> selectedOptions = <String, String>{}.obs; // group_name -> option
  final RxMap<int, int> selectedAddOns = <int, int>{}.obs;

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

  void toggleAddOn(int addOnId) {
    if (selectedAddOns.containsKey(addOnId)) {
      selectedAddOns.remove(addOnId);
    } else {
      selectedAddOns[addOnId] = 1;
    }
    update();
  }

  void changeAddOnQty(int addOnId, int qty) {
    if (qty <= 0) {
      selectedAddOns.remove(addOnId);
    } else {
      selectedAddOns[addOnId] = qty;
    }
    update();
  }

  Future<void> addToCart({int quantity = 1}) async {
    final productDetail = product.value;
    if (productDetail == null) return;
    final cartService = Get.find<CartService>();
    await cartService.addProductToCart(product: productDetail, selectedOptions: Map<String, String>.from(selectedOptions), selectedAddOns: Map<int, int>.from(selectedAddOns), quantity: quantity);
  }
}
