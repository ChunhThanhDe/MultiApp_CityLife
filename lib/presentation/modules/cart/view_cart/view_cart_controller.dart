import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/cart/cart_models.dart';
import 'package:sixam_mart_user/domain/models/response/cart/get_cart_list_response.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class ViewCartController extends BaseController {
  final CartService _cartService = Get.find<CartService>();

  // Cart data getters (delegated to CartService)
  List<GetCartListStore> get storesInCart => _cartService.storesInCart;
  bool get isEmpty => _cartService.isEmpty;
  bool get isNotEmpty => _cartService.isNotEmpty;
  double get totalPrice => _cartService.totalPrice;
  bool get isCartLoading => _cartService.isLoading.value;

  // Cart operations
  Future<void> refreshCart() async {
    try {
      await _cartService.fetchCartList();
      // Small delay to ensure smooth animation completion on Android
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (e) {
      // Error is already handled in CartService
      rethrow;
    }
  }

  Future<void> updateItemQuantity(int cartId, int quantity) => _cartService.updateItemQuantity(cartId, quantity);

  Future<void> removeItem(int cartId) => _cartService.removeItem(cartId);

  Future<void> clearStoreItems(int storeId) async {
    // Get all items for the specific store
    final store = storesInCart.firstWhereOrNull((s) => s.storeId == storeId);
    if (store != null && store.items != null) {
      // Remove all items from this store
      for (final item in store.items!) {
        if (item.cartId != null) {
          await removeItem(item.cartId!);
        }
      }
    }
  }

  // Navigation methods
  void navigateToOrders() => Get.toNamed(AppRoutes.cartOrder);
  void navigateToCheckout() => Get.toNamed(AppRoutes.cartCheckout);
  void navigateBack() => Get.back();

  // Item quantity operations with validation
  void incrementItemQuantity(CartItem item) {
    if (item.cartId != null && item.itemQuantity != null) {
      updateItemQuantity(item.cartId!, item.itemQuantity! + 1);
    }
  }

  void decrementItemQuantity(CartItem item) {
    if (item.cartId != null && item.itemQuantity != null) {
      if (item.itemQuantity! > 1) {
        updateItemQuantity(item.cartId!, item.itemQuantity! - 1);
      } else {
        removeItem(item.cartId!);
      }
    }
  }

  // UI helper methods
  bool get shouldShowEmptyState => isEmpty;
  bool get shouldShowCartContent => isNotEmpty;
  bool get shouldShowLoadingState => isCartLoading;
}
