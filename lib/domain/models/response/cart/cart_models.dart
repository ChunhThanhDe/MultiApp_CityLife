import 'package:sixam_mart_user/domain/models/response/cart/get_cart_list_response.dart';

// Type aliases for better code readability and consistency
typedef StoreInCart = GetCartListStore;
typedef CartItem = GetCartListItem;
typedef CartItemCategory = GetCartListItemCategory;
typedef ItemVariation = GetCartListItemVariation;
typedef ItemValue = GetCartListItemValue;
typedef CartSummary = GetCartListSummary;

// Request models for cart operations
class AddToCartRequest {
  final int itemId;
  final String model;
  final double price;
  final int quantity;
  final List<CartVariation> variation;
  final List<int> addOnIds;
  final List<int> addOnQtys;

  const AddToCartRequest({
    required this.itemId,
    required this.model,
    required this.price,
    required this.quantity,
    required this.variation,
    required this.addOnIds,
    required this.addOnQtys,
  });

  Map<String, dynamic> toJson() => {
    'item_id': itemId,
    'model': model,
    'price': price,
    'quantity': quantity,
    'variation': variation.map((v) => v.toJson()).toList(),
    'add_on_ids': addOnIds,
    'add_on_qtys': addOnQtys,
  };
}

class UpdateCartRequest {
  final int cartId;
  final int quantity;

  const UpdateCartRequest({
    required this.cartId,
    required this.quantity,
  });

  Map<String, dynamic> toJson() => {
    'cart_id': cartId,
    'quantity': quantity,
  };
}

class RemoveFromCartRequest {
  final int cartId;

  const RemoveFromCartRequest({
    required this.cartId,
  });

  Map<String, dynamic> toJson() => {
    'cart_id': cartId,
  };
}

class CartVariation {
  final String name;
  final Map<String, dynamic> values;

  const CartVariation({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'values': values,
  };
}