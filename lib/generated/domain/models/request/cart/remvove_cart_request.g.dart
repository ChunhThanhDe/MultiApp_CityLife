// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/request/cart/remvove_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoveFromCartRequest _$RemoveFromCartRequestFromJson(
  Map<String, dynamic> json,
) => _RemoveFromCartRequest(cartId: (json['cart_id'] as num).toInt());

Map<String, dynamic> _$RemoveFromCartRequestToJson(
  _RemoveFromCartRequest instance,
) => <String, dynamic>{'cart_id': instance.cartId};
