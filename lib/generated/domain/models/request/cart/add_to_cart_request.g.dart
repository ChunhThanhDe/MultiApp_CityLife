// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/request/cart/add_to_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_CartVariation _$CartVariationFromJson(Map<String, dynamic> json) =>
    _CartVariation(
      name: json['name'] as String,
      values: json['values'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$CartVariationToJson(_CartVariation instance) =>
    <String, dynamic>{'name': instance.name, 'values': instance.values};
