import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/domain/models/request/cart_models.dart';
import 'package:sixam_mart_user/domain/models/response/get_cart_list_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';
import 'package:sixam_mart_user/domain/repositories/cart_repository.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';

class CartService extends GetxService {
  final CartRepository _cartRepository;

  // Reactive state variables for new store-grouped structure
  final storesInCart = <StoreInCart>[].obs;
  final cartSummary = Rxn<GetCartListSummary>();
  final isLoading = false.obs;

  CartService(this._cartRepository);

  @override
  void onInit() {
    super.onInit();
    fetchCartList();
  }

  /// Fetches the cart list from the server and updates the state
  Future<void> fetchCartList() async {
    try {
      isLoading.value = true;
      final result = await _cartRepository.getCartList();

      switch (result) {
        case Success(:final response):
          if (response.statusCode == 200) {
            final cartResponse = GetCartListResponse.fromJson(response.data);
            storesInCart.value = cartResponse.stores?.map((e) => StoreInCart.fromJson(e.toJson())).toList() ?? [];
            cartSummary.value = cartResponse.summary;
          } else {
            showAppSnackBar(title: 'Failed to fetch cart items. Please try again.', type: SnackBarType.error);
          }
        case Failure():
          showAppSnackBar(title: 'Failed to fetch cart items. Please try again.', type: SnackBarType.error);
      }
    } catch (e) {
      showAppSnackBar(title: 'An unexpected error occurred.', type: SnackBarType.error);
    } finally {
      isLoading.value = false;
    }
  }

  /// Adds an item to the cart with business logic to check for duplicates
  Future<void> addItemToCart(AddToCartRequest request) async {
    try {
      isLoading.value = true;

      // Check if an identical item already exists in any store
      CartItem? existingItem;
      for (final store in storesInCart) {
        existingItem = store.items.firstWhereOrNull((item) => item.itemId == request.itemId && _areVariationsEqual(item.itemVariation, request.variation));
        if (existingItem != null) break;
      }

      if (existingItem != null) {
        // If item exists, update quantity instead
        final newQuantity = existingItem.itemQuantity + request.quantity;
        await updateItemQuantity(existingItem.cartId, newQuantity);
      } else {
        // If item doesn't exist, add new item
        final result = await _cartRepository.addToCart(request);

        switch (result) {
          case Success(:final response):
            if (response.statusCode == 200) {
              showAppSnackBar(title: 'Item added to cart successfully!');
              fetchCartList(); // Refresh the entire cart state
            } else {
              showAppSnackBar(title: 'Failed to add item to cart. Please try again.', type: SnackBarType.error);
            }
          case Failure():
            showAppSnackBar(title: 'Failed to add item to cart. Please try again.', type: SnackBarType.error);
        }
      }
    } catch (e) {
      showAppSnackBar(title: 'An unexpected error occurred.', type: SnackBarType.error);
    } finally {
      isLoading.value = false;
    }
  }

  /// Updates the quantity of an item in the cart
  Future<void> updateItemQuantity(int cartId, int newQuantity) async {
    try {
      isLoading.value = true;

      if (newQuantity <= 0) {
        // If quantity is 0 or negative, remove the item
        await removeItem(cartId);
        return;
      }

      final request = UpdateCartRequest(cartId: cartId, quantity: newQuantity);
      final result = await _cartRepository.updateCart(request);

      switch (result) {
        case Success(:final response):
          if (response.statusCode == 200) {
            showAppSnackBar(title: 'Cart updated successfully!');
            fetchCartList(); // Refresh the entire cart state
          } else {
            showAppSnackBar(title: 'Failed to update cart. Please try again.', type: SnackBarType.error);
          }
        case Failure():
          showAppSnackBar(title: 'Failed to update cart. Please try again.', type: SnackBarType.error);
      }
    } catch (e) {
      showAppSnackBar(title: 'An unexpected error occurred.', type: SnackBarType.error);
    } finally {
      isLoading.value = false;
    }
  }

  /// Removes an item from the cart
  Future<void> removeItem(int cartId) async {
    try {
      isLoading.value = true;

      final request = RemoveFromCartRequest(cartId: cartId);
      final result = await _cartRepository.removeFromCart(request);

      switch (result) {
        case Success(:final response):
          if (response.statusCode == 200) {
            showAppSnackBar(title: 'Item removed from cart successfully!');
            fetchCartList(); // Refresh the entire cart state
          } else {
            showAppSnackBar(title: 'Failed to remove item from cart. Please try again.', type: SnackBarType.error);
          }
        case Failure():
          showAppSnackBar(title: 'Failed to remove item from cart. Please try again.', type: SnackBarType.error);
      }
    } catch (e) {
      showAppSnackBar(title: 'An unexpected error occurred.', type: SnackBarType.error);
    } finally {
      isLoading.value = false;
    }
  }

  /// Clears all items from the cart
  Future<void> clearCart() async {
    try {
      isLoading.value = true;

      final result = await _cartRepository.clearCart();

      switch (result) {
        case Success(:final response):
          if (response.statusCode == 200) {
            showAppSnackBar(title: 'Cart cleared successfully!');
            fetchCartList(); // Refresh the entire cart state
          } else {
            showAppSnackBar(title: 'Failed to clear cart. Please try again.', type: SnackBarType.error);
          }
        case Failure():
          showAppSnackBar(title: 'Failed to clear cart. Please try again.', type: SnackBarType.error);
      }
    } catch (e) {
      showAppSnackBar(title: 'An unexpected error occurred.', type: SnackBarType.error);
    } finally {
      isLoading.value = false;
    }
  }

  /// Checks if two variation lists are equal
  bool _areVariationsEqual(List<ItemVariation> variations1, List<CartVariation> variations2) {
    if (variations1.length != variations2.length) return false;

    for (int i = 0; i < variations1.length; i++) {
      final var1 = variations1[i];
      final var2 = variations2[i];

      if (var1.name != var2.name) return false;
      if (var1.values.label != var2.values['label']) return false;
    }

    return true;
  }

  /// Gets the total number of items in the cart
  int get itemCount => cartSummary.value?.totalItems ?? 0;

  /// Gets the total price of all items in the cart
  double get totalPrice => cartSummary.value?.totalPrice ?? 0.0;

  /// Gets the total number of stores in the cart
  int get storeCount => storesInCart.length;

  /// Checks if the cart is empty
  bool get isEmpty => storesInCart.isEmpty;

  /// Checks if the cart is not empty
  bool get isNotEmpty => storesInCart.isNotEmpty;

  /// Gets all cart items across all stores
  List<CartItem> get allCartItems {
    final items = <CartItem>[];
    for (final store in storesInCart) {
      items.addAll(store.items);
    }
    return items;
  }

  Future<void> addProductToCart({required ProductDetail product, required Map<String, String> selectedOptions, required Map<int, int> selectedAddOns, int quantity = 1}) async {
    // Build variations from selectedOptions
    final variations = <CartVariation>[];
    if (product.variations.isNotEmpty && selectedOptions['variation'] != null) {
      final selected = selectedOptions['variation'];
      final v = product.variations.firstWhereOrNull((e) => e.type == selected);
      if (v != null) {
        variations.add(CartVariation(name: 'size', values: {'label': v.type}));
      }
    }
    if (product.choiceOptions != null && product.choiceOptions!.isNotEmpty) {
      for (final choice in product.choiceOptions!) {
        final selected = selectedOptions[choice.name];
        if (selected != null) {
          variations.add(CartVariation(name: choice.name, values: {'label': selected}));
        }
      }
    }
    // Add-ons
    final addOnIds = selectedAddOns.keys.toList();
    final addOnQtys = selectedAddOns.values.toList();
    // Use product.price as default, or selected variation price if available
    double price = product.price.toDouble();
    if (product.variations.isNotEmpty && selectedOptions['variation'] != null) {
      final selected = selectedOptions['variation'];
      final v = product.variations.firstWhereOrNull((e) => e.type == selected);
      if (v != null) price = v.price.toDouble();
    }
    final request = AddToCartRequest(itemId: product.id, model: 'Item', price: price, quantity: quantity, variation: variations, addOnIds: addOnIds, addOnQtys: addOnQtys);
    await addItemToCart(request);
  }
}
