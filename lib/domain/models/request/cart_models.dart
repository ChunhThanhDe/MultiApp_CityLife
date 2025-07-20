// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/request/cart_models.freezed.dart';
part '../../../generated/domain/models/request/cart_models.g.dart';

@freezed
abstract class CartVariation with _$CartVariation {
  const factory CartVariation({required String name, required Map<String, dynamic> values}) = _CartVariation;

  factory CartVariation.fromJson(Map<String, dynamic> json) => _$CartVariationFromJson(json);
}

@freezed
abstract class AddToCartRequest with _$AddToCartRequest {
  const factory AddToCartRequest({
    @JsonKey(name: 'item_id') required int itemId,
    required String model,
    required double price,
    required int quantity,
    required List<CartVariation> variation,
    @JsonKey(name: 'add_on_ids') required List<int> addOnIds,
    @JsonKey(name: 'add_on_qtys') required List<int> addOnQtys,
  }) = _AddToCartRequest;

  factory AddToCartRequest.fromJson(Map<String, dynamic> json) => _$AddToCartRequestFromJson(json);
}

@freezed
abstract class UpdateCartRequest with _$UpdateCartRequest {
  const factory UpdateCartRequest({@JsonKey(name: 'cart_id') required int cartId, required int quantity}) = _UpdateCartRequest;

  factory UpdateCartRequest.fromJson(Map<String, dynamic> json) => _$UpdateCartRequestFromJson(json);
}

@freezed
abstract class RemoveFromCartRequest with _$RemoveFromCartRequest {
  const factory RemoveFromCartRequest({@JsonKey(name: 'cart_id') required int cartId}) = _RemoveFromCartRequest;

  factory RemoveFromCartRequest.fromJson(Map<String, dynamic> json) => _$RemoveFromCartRequestFromJson(json);
}

@freezed
abstract class VariationValues with _$VariationValues {
  const factory VariationValues({required String label}) = _VariationValues;

  factory VariationValues.fromJson(Map<String, dynamic> json) => _$VariationValuesFromJson(json);
}

@freezed
abstract class ItemVariation with _$ItemVariation {
  const factory ItemVariation({required String name, required VariationValues values}) = _ItemVariation;

  factory ItemVariation.fromJson(Map<String, dynamic> json) => _$ItemVariationFromJson(json);
}

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    @JsonKey(name: 'cart_id') required int cartId,
    @JsonKey(name: 'item_id') required int itemId,
    @JsonKey(name: 'item_name') required String itemName,
    @JsonKey(name: 'item_image') String? itemImage,
    @JsonKey(name: 'item_price') required double itemPrice,
    @JsonKey(name: 'item_quantity') required int itemQuantity,
    @JsonKey(name: 'item_total_price') required double itemTotalPrice,
    @JsonKey(name: 'item_variation') required List<ItemVariation> itemVariation,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}

@freezed
abstract class StoreInCart with _$StoreInCart {
  const factory StoreInCart({
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'store_name') required String storeName,
    @JsonKey(name: 'store_logo') String? storeLogo,
    required List<CartItem> items,
    @JsonKey(name: 'store_total_items') required int storeTotalItems,
    @JsonKey(name: 'store_total_price') required double storeTotalPrice,
  }) = _StoreInCart;

  factory StoreInCart.fromJson(Map<String, dynamic> json) => _$StoreInCartFromJson(json);
}

@freezed
abstract class CartSummary with _$CartSummary {
  const factory CartSummary({
    @JsonKey(name: 'total_stores') required int totalStores,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'total_price') required double totalPrice,
  }) = _CartSummary;

  factory CartSummary.fromJson(Map<String, dynamic> json) => _$CartSummaryFromJson(json);
}

@freezed
abstract class CartResponse with _$CartResponse {
  const factory CartResponse({required List<StoreInCart> stores, required CartSummary summary}) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) => _$CartResponseFromJson(json);
}
