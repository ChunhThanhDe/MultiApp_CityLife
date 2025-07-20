// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/remove_wishlist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoveWishlistRequest _$RemoveWishlistRequestFromJson(
  Map<String, dynamic> json,
) => _RemoveWishlistRequest(
  type: $enumDecode(_$WishlistItemTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$RemoveWishlistRequestToJson(
  _RemoveWishlistRequest instance,
) => <String, dynamic>{
  'type': _$WishlistItemTypeEnumMap[instance.type]!,
  'id': instance.id,
};

const _$WishlistItemTypeEnumMap = {
  WishlistItemType.store: 'store',
  WishlistItemType.item: 'item',
};
