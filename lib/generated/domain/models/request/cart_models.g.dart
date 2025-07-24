// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/cart_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartVariation _$CartVariationFromJson(Map<String, dynamic> json) =>
    _CartVariation(
      name: json['name'] as String,
      values: json['values'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$CartVariationToJson(_CartVariation instance) =>
    <String, dynamic>{'name': instance.name, 'values': instance.values};

_AddToCartRequest _$AddToCartRequestFromJson(Map<String, dynamic> json) =>
    _AddToCartRequest(
      itemId: (json['item_id'] as num).toInt(),
      model: json['model'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      variation: (json['variation'] as List<dynamic>)
          .map((e) => CartVariation.fromJson(e as Map<String, dynamic>))
          .toList(),
      addOnIds: (json['add_on_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      addOnQtys: (json['add_on_qtys'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$AddToCartRequestToJson(_AddToCartRequest instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'model': instance.model,
      'price': instance.price,
      'quantity': instance.quantity,
      'variation': instance.variation,
      'add_on_ids': instance.addOnIds,
      'add_on_qtys': instance.addOnQtys,
    };

_UpdateCartRequest _$UpdateCartRequestFromJson(Map<String, dynamic> json) =>
    _UpdateCartRequest(
      cartId: (json['cart_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$UpdateCartRequestToJson(_UpdateCartRequest instance) =>
    <String, dynamic>{
      'cart_id': instance.cartId,
      'quantity': instance.quantity,
    };

_RemoveFromCartRequest _$RemoveFromCartRequestFromJson(
  Map<String, dynamic> json,
) => _RemoveFromCartRequest(cartId: (json['cart_id'] as num).toInt());

Map<String, dynamic> _$RemoveFromCartRequestToJson(
  _RemoveFromCartRequest instance,
) => <String, dynamic>{'cart_id': instance.cartId};

_VariationValues _$VariationValuesFromJson(Map<String, dynamic> json) =>
    _VariationValues(label: json['label'] as String);

Map<String, dynamic> _$VariationValuesToJson(_VariationValues instance) =>
    <String, dynamic>{'label': instance.label};

_ItemVariation _$ItemVariationFromJson(Map<String, dynamic> json) =>
    _ItemVariation(
      name: json['name'] as String,
      values: VariationValues.fromJson(json['values'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemVariationToJson(_ItemVariation instance) =>
    <String, dynamic>{'name': instance.name, 'values': instance.values};

_CartItem _$CartItemFromJson(Map<String, dynamic> json) => _CartItem(
  cartId: (json['cart_id'] as num).toInt(),
  itemId: (json['item_id'] as num).toInt(),
  itemName: json['item_name'] as String,
  itemImage: json['item_image'] as String?,
  itemPrice: (json['item_price'] as num).toDouble(),
  itemQuantity: (json['item_quantity'] as num).toInt(),
  itemTotalPrice: (json['item_total_price'] as num).toDouble(),
  itemVariation: (json['item_variation'] as List<dynamic>)
      .map((e) => ItemVariation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CartItemToJson(_CartItem instance) => <String, dynamic>{
  'cart_id': instance.cartId,
  'item_id': instance.itemId,
  'item_name': instance.itemName,
  'item_image': instance.itemImage,
  'item_price': instance.itemPrice,
  'item_quantity': instance.itemQuantity,
  'item_total_price': instance.itemTotalPrice,
  'item_variation': instance.itemVariation,
};

_StoreInCart _$StoreInCartFromJson(Map<String, dynamic> json) => _StoreInCart(
  storeId: (json['store_id'] as num).toInt(),
  storeName: json['store_name'] as String,
  storeLogo: json['store_logo'] as String?,
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  storeTotalItems: (json['store_total_items'] as num).toInt(),
  storeTotalPrice: (json['store_total_price'] as num).toDouble(),
);

Map<String, dynamic> _$StoreInCartToJson(_StoreInCart instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'store_logo': instance.storeLogo,
      'items': instance.items,
      'store_total_items': instance.storeTotalItems,
      'store_total_price': instance.storeTotalPrice,
    };
