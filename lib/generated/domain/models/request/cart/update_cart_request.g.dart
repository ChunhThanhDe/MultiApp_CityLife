// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/request/cart/update_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
