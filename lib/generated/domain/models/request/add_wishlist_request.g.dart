// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/add_wishlist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddWishlistRequest _$AddWishlistRequestFromJson(Map<String, dynamic> json) =>
    _AddWishlistRequest(
      type: $enumDecode(_$WishlistItemTypeEnumMap, json['type']),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$AddWishlistRequestToJson(_AddWishlistRequest instance) =>
    <String, dynamic>{
      'type': _$WishlistItemTypeEnumMap[instance.type]!,
      'id': instance.id,
    };

const _$WishlistItemTypeEnumMap = {
  WishlistItemType.store: 'store',
  WishlistItemType.item: 'item',
};
