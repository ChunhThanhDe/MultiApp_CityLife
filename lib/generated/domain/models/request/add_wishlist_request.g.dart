// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/add_wishlist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddWishlistRequest _$AddWishlistRequestFromJson(Map<String, dynamic> json) =>
    _AddWishlistRequest(
      type: json['type'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$AddWishlistRequestToJson(_AddWishlistRequest instance) =>
    <String, dynamic>{'type': instance.type, 'id': instance.id};
