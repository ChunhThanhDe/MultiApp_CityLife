import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';
import 'package:sixam_mart_user/domain/repositories/product_repository.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class StoreProductDetailController extends BaseController {
  // add_on_id -> quantity

  StoreProductDetailController(this.productId);
  final int productId;
  final ProductRepository _productRepository = Get.find<ProductRepository>();

  final Rx<ProductDetail?> product = Rx<ProductDetail?>(null);
  final RxList<ProductRecommendation> recommendations = <ProductRecommendation>[].obs;
  final RxMap<String, dynamic> selectedOptions = <String, dynamic>{}.obs; // group_name -> option (String for single, List<String> for multi)
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
          // print('Raw response.data type: ${response.data.runtimeType}');
          // print('Raw response.data: ${response.data}');

          // print('Starting ProductDetailResponse.fromJson...');
          final detailResponse = ProductDetailResponse.fromJson(response.data);
          // print('ProductDetailResponse created successfully');

          // print('Accessing detailResponse.item...');
          product.value = detailResponse.item;
          // print('product.value assigned: ${product.value}');

          // print('Accessing detailResponse.recommendations...');
          recommendations.value = detailResponse.recommendations;
          // print('recommendations.value assigned successfully');
          break;

        case Failure():
          Get.snackbar('Error', 'Failed to load product detail');
          break;
      }
    } catch (e) {
      // print('Error occurred: $e');
      // print('Stack trace: $stackTrace');
      Get.snackbar('Error', 'Failed to parse product data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  bool isOptionSelected(String group, String value) {
    final selected = selectedOptions[group];
    if (selected is String) {
      return selected == value;
    } else if (selected is List<String>) {
      return selected.contains(value);
    }
    return false;
  }

  void selectOption(String group, String value, {bool singleChoice = true, int min = 0, int max = 0}) {
    if (singleChoice) {
      // Single choice: replace the current selection
      selectedOptions[group] = value;
    } else {
      // Multi choice: toggle the selection with min/max validation
      final currentSelections = selectedOptions[group] as List<String>? ?? <String>[];
      final newSelections = List<String>.from(currentSelections);
      
      if (newSelections.contains(value)) {
        // Remove if already selected, but check min constraint
        if (newSelections.length > min) {
          newSelections.remove(value);
        }
      } else {
        // Add if not selected, but check max constraint
        if (max == 0 || newSelections.length < max) {
          newSelections.add(value);
        }
      }
      
      selectedOptions[group] = newSelections;
    }
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

    // Convert selectedOptions to the expected format for cart service
    final Map<String, String> formattedOptions = {};
    selectedOptions.forEach((key, value) {
      if (value is String) {
        formattedOptions[key] = value;
      } else if (value is List<String>) {
        formattedOptions[key] = value.join(', '); // Join multiple selections with comma
      }
    });

    final result = await showAppOverlayLoading(
      future: cartService.addProductToCart(product: productDetail, selectedOptions: formattedOptions, selectedAddOns: Map<int, int>.from(selectedAddOns), quantity: quantity),
    );

    if (result) {
      showAppSnackBar(title: 'Added to cart');
    } else {
      showAppSnackBar(title: 'Failed to add to cart', type: SnackBarType.error);
    }
  }
}
