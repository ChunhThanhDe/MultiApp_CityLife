import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/domain/models/request/cart/add_to_cart_request.dart';
import 'package:sixam_mart_user/domain/models/request/cart/remvove_cart_request.dart';
import 'package:sixam_mart_user/domain/models/request/cart/update_cart_request.dart';
import 'package:sixam_mart_user/domain/models/response/get_cart_list_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';
import 'package:sixam_mart_user/domain/repositories/cart_repository.dart';

class CartService extends GetxService {

  CartService(this._cartRepository);
  final CartRepository _cartRepository;

  // Reactive state variables for new store-grouped structure
  final storesInCart = <GetCartListStore>[].obs;
  final cartSummary = Rxn<GetCartListSummary>();
  final isLoading = false.obs;

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
            storesInCart.clear();
            storesInCart.addAll(cartResponse.stores ?? []);
            cartSummary.value = cartResponse.summary;
          }
        case Failure():
          break;
      }
    } catch (e) {
      // Silent failure
    } finally {
      isLoading.value = false;
    }
  }

  /// Adds an item to the cart
  Future<void> addItemToCart(AddToCartRequest request) async {
    try {
      final result = await _cartRepository.addToCart(request);
      if (result is Success && result.response.statusCode == 200) {
        fetchCartList();
      }
    } catch (e) {
      // Silent failure
    }
  }

  /// Updates the quantity of an item in the cart with optimistic updates
  Future<void> updateItemQuantity(int cartId, int newQuantity) async {
    if (newQuantity <= 0) {
      await removeItem(cartId);
      return;
    }

    _updateItemQuantityOptimistic(cartId, newQuantity);

    try {
      final request = UpdateCartRequest(cartId: cartId, quantity: newQuantity);
      final result = await _cartRepository.updateCart(request);

      // Only refresh if API call failed to restore correct state
      if (result is! Success || result.response.statusCode != 200) {
        await fetchCartList();
      }
    } catch (e) {
      await fetchCartList();
    }
  }

  /// Removes an item from the cart with optimistic updates
  Future<void> removeItem(int cartId) async {
    _removeItemOptimistic(cartId);

    try {
      final request = RemoveFromCartRequest(cartId: cartId);
      final result = await _cartRepository.removeFromCart(request);

      // Only refresh if API call failed to restore correct state
      if (result is! Success || result.response.statusCode != 200) {
        await fetchCartList();
      }
    } catch (e) {
      // Refresh on error to restore correct state
      await fetchCartList();
    }
  }

  /// Clears all items from a specific store
  Future<void> clearStoreItems(int storeId) async {
    final store = storesInCart.firstWhereOrNull((s) => s.storeId == storeId);
    if (store == null || store.items == null || store.items!.isEmpty) {
      return;
    }

    final cartIds = store.items!.where((item) => item.cartId != null).map((item) => item.cartId!).toList();

    // Optimistic update: Remove all items from this store immediately
    _clearStoreItemsOptimistic(storeId);

    try {
      for (final cartId in cartIds) {
        final request = RemoveFromCartRequest(cartId: cartId);
        await _cartRepository.removeFromCart(request);
      }

      // Always refresh to get accurate data from server
      await fetchCartList();
    } catch (e) {
      // Refresh on error to restore correct state
      await fetchCartList();
    }
  }

  /// Clears all items from the cart
  Future<void> clearCart() async {
    try {
      isLoading.value = true;
      final result = await _cartRepository.clearCart();

      if (result is Success && result.response.statusCode == 200) {
        fetchCartList();
      }
    } catch (e) {
      // Silent failure
    } finally {
      isLoading.value = false;
    }
  }

  /// Helper method for optimistic quantity update
  void _updateItemQuantityOptimistic(int cartId, int newQuantity) {
    for (int storeIndex = 0; storeIndex < storesInCart.length; storeIndex++) {
      final store = storesInCart[storeIndex];
      if (store.items != null) {
        final itemIndex = store.items!.indexWhere((item) => item.cartId == cartId);
        if (itemIndex != -1) {
          final originalItem = store.items![itemIndex];
          final updatedItem = originalItem.copyWith(itemQuantity: newQuantity, itemTotalPrice: (originalItem.itemPrice ?? 0.0) * newQuantity);

          // Create a new list with the updated item
          final updatedItems = List<GetCartListItem>.from(store.items!);
          updatedItems[itemIndex] = updatedItem;

          // Create a new store with the updated items list
          final updatedStore = store.copyWith(items: updatedItems);
          storesInCart[storeIndex] = updatedStore;

          _updateCartSummaryOptimistic();
          storesInCart.refresh();
          return;
        }
      }
    }
  }

  /// Helper method for optimistic item removal
  void _removeItemOptimistic(int cartId) {
    for (int storeIndex = 0; storeIndex < storesInCart.length; storeIndex++) {
      final store = storesInCart[storeIndex];
      if (store.items != null) {
        final updatedItems = store.items!.where((item) => item.cartId != cartId).toList();

        // Only update if the item was actually removed
        if (updatedItems.length != store.items!.length) {
          final updatedStore = store.copyWith(items: updatedItems);
          storesInCart[storeIndex] = updatedStore;

          _updateCartSummaryOptimistic();
          storesInCart.refresh();
          return;
        }
      }
    }
  }

  /// Helper method for optimistic store items clearing
  void _clearStoreItemsOptimistic(int storeId) {
    final storeIndex = storesInCart.indexWhere((store) => store.storeId == storeId);
    if (storeIndex != -1) {
      final store = storesInCart[storeIndex];
      final updatedStore = store.copyWith(items: <GetCartListItem>[]);
      storesInCart[storeIndex] = updatedStore;

      _updateCartSummaryOptimistic();
      storesInCart.refresh();
    }
  }

  /// Helper method to update cart summary optimistically
  void _updateCartSummaryOptimistic() {
    double totalPrice = 0.0;
    int totalItems = 0;

    for (final store in storesInCart) {
      if (store.items != null) {
        for (final item in store.items!) {
          final price = item.itemPrice ?? 0.0;
          final quantity = item.itemQuantity ?? 0;
          totalPrice += price * quantity;
          totalItems += quantity;
        }
      }
    }

    cartSummary.value = GetCartListSummary(totalPrice: totalPrice, totalItems: totalItems);
  }

  /// Adds a product to cart with variations and add-ons
  Future<void> addProductToCart({required ProductDetail product, required Map<String, String> selectedOptions, required Map<int, int> selectedAddOns, int quantity = 1}) async {
    // Build variations from selectedOptions
    final variations = <CartVariation>[];

    // Handle variations structure
    // Check if variations field contains the new API structure (with name, type, values)
    if (product.variations.isNotEmpty) {
      // New API structure - variations contains VariationModel objects
      for (final variation in product.variations) {
        final variationName = variation.name;
        final selected = selectedOptions[variationName];
        if (selected != null) {
          variations.add(CartVariation(name: variationName, values: {'label': selected}));
        }
      }
    }
    // Check if foodVariations has data (fallback for new API structure)
    else if (product.foodVariations.isNotEmpty) {
      for (final variation in product.foodVariations) {
        if (variation is Map<String, dynamic>) {
          final variationName = variation['name'];
          final selected = selectedOptions[variationName];
          if (selected != null) {
            variations.add(CartVariation(name: variationName, values: {'label': selected}));
          }
        }
      }
    }
    // Fallback to old API structure (Size only) - handled by foodVariations now
    // The variations field now only contains VariationModel objects

    if (product.choiceOptions.isNotEmpty) {
      for (final choice in product.choiceOptions) {
        final selected = selectedOptions[choice.name];
        if (selected != null) {
          variations.add(CartVariation(name: choice.name, values: {'label': selected}));
        }
      }
    }

    // Add-ons
    final addOnIds = selectedAddOns.keys.toList();
    final addOnQtys = selectedAddOns.values.toList();

    // Calculate price including variations
    double price = product.price.toDouble();
    
    // Handle price calculation for variations
    // Check if variations field contains the new API structure (with name, type, values)
    if (product.variations.isNotEmpty) {
      // New API structure - variations contains VariationModel objects
      for (final variation in product.variations) {
        final variationName = variation.name;
        final selected = selectedOptions[variationName];
        if (selected != null) {
          for (final value in variation.values) {
            if (value.label == selected) {
              final optionPrice = int.tryParse(value.optionPrice) ?? 0;
              price += optionPrice.toDouble();
              break;
            }
          }
        }
      }
    }
    // Check if foodVariations has data (fallback for new API structure)
    else if (product.foodVariations.isNotEmpty) {
      for (final variation in product.foodVariations) {
        if (variation is Map<String, dynamic>) {
          final variationName = variation['name'];
          final selected = selectedOptions[variationName];
          if (selected != null && variation['values'] is List) {
            final values = variation['values'] as List;
            for (final value in values) {
              if (value is Map<String, dynamic> && value['label'].toString() == selected) {
                final optionPrice = value['optionPrice'] ?? 0;
                price += (optionPrice is num ? optionPrice.toDouble() : 0.0);
                break;
              }
            }
          }
        }
      }
    }
    // Fallback to old API structure (Size only) - handled by foodVariations now
    // The variations field now only contains VariationModel objects

    final request = AddToCartRequest(itemId: product.id, model: 'Item', price: price, quantity: quantity, variation: variations, addOnIds: addOnIds, addOnQtys: addOnQtys);

    await addItemToCart(request);
  }

  // Convenience getters
  bool get isEmpty => storesInCart.isEmpty || storesInCart.every((store) => store.items?.isEmpty ?? true);
  bool get isNotEmpty => !isEmpty;
  double get totalPrice => cartSummary.value?.totalPrice ?? 0.0;
  int get totalItems => cartSummary.value?.totalItems ?? 0;
}
