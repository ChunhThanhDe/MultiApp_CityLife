import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_cart_list_response.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class ViewCartController extends BaseController {
  final CartService _cartService = Get.find<CartService>();

  @override
  void onInit() {
    super.onInit();
    // Ensure cart data is loaded when screen is initialized
    if (storesInCart.isEmpty && !isCartLoading) {
      refreshCart();
    }
  }

  // Cart data getters (delegated to CartService)
  List<GetCartListStore> get storesInCart => _cartService.storesInCart;
  bool get isEmpty => _cartService.isEmpty;
  bool get isNotEmpty => _cartService.isNotEmpty;
  double get totalPrice => _cartService.totalPrice;
  bool get isCartLoading => _cartService.isLoading.value;

  // AppListView compatibility properties
  final RxBool isLoadingMore = false.obs;
  final RxString error = ''.obs;
  bool get hasMore => false; // Cart items are not paginated

  // Cart operations
  Future<void> refreshCart() async {
    try {
      error.value = '';
      await _cartService.fetchCartList();
    } catch (e) {
      error.value = 'Failed to load cart. Please try again.';
      // Don't rethrow to prevent additional error handling
    }
  }

  // Load more method for AppListView compatibility (no-op for cart)
  Future<void> loadMoreCart() async {
    // Cart items are not paginated, so this is a no-op
    return;
  }

  Future<void> updateItemQuantity(int cartId, int quantity) async {
    try {
      await _cartService.updateItemQuantity(cartId, quantity);
    } catch (e) {
      error.value = 'Failed to update item quantity. Please try again.';
    }
  }

  Future<void> removeItem(int cartId) async {
    try {
      await _cartService.removeItem(cartId);
    } catch (e) {
      error.value = 'Failed to remove item. Please try again.';
    }
  }

  Future<void> clearStoreItems(int storeId) async {
    try {
      // Get all items for the specific store
      final store = storesInCart.firstWhereOrNull((s) => s.storeId == storeId);
      if (store != null && store.items != null) {
        // Remove all items from this store
        for (final item in store.items!) {
          if (item.cartId != null) {
            await _cartService.removeItem(item.cartId!);
          }
        }
      }
    } catch (e) {
      error.value = 'Failed to clear store items. Please try again.';
    }
  }

  // Navigation methods
  void navigateToOrders() => Get.toNamed(AppRoutes.cartOrder);
  void navigateToCheckout() => Get.toNamed(AppRoutes.cartCheckout);
  void navigateBack() => Get.back();

  // Item quantity operations with validation
  void incrementItemQuantity(GetCartListItem item) {
    if (item.cartId != null && item.itemQuantity != null) {
      updateItemQuantity(item.cartId!, item.itemQuantity! + 1);
    }
  }

  void decrementItemQuantity(GetCartListItem item) {
    if (item.cartId != null && item.itemQuantity != null) {
      if (item.itemQuantity! > 1) {
        updateItemQuantity(item.cartId!, item.itemQuantity! - 1);
      } else {
        removeItem(item.cartId!);
      }
    }
  }
}
