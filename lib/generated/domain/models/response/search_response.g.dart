// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      topSearches: (json['top_searches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      recentStores: (json['recent_stores'] as List<dynamic>?)
          ?.map((e) => RecentStore.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsByStore: (json['items_by_store'] as List<dynamic>?)
          ?.map((e) => StoreItemGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'top_searches': instance.topSearches,
      'recent_stores': instance.recentStores,
      'items_by_store': instance.itemsByStore,
    };

_RecentStore _$RecentStoreFromJson(Map<String, dynamic> json) => _RecentStore(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  logoUrl: json['logo_url'] as String? ?? '',
  deliveryTime: json['delivery_time'] as String? ?? '',
  deliveryFee: (json['delivery_fee'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$RecentStoreToJson(_RecentStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logoUrl,
      'delivery_time': instance.deliveryTime,
      'delivery_fee': instance.deliveryFee,
    };

_StoreItemGroup _$StoreItemGroupFromJson(Map<String, dynamic> json) =>
    _StoreItemGroup(
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      storeName: json['store_name'] as String? ?? '',
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StoreItemGroupToJson(_StoreItemGroup instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'items': instance.items,
    };

_Item _$ItemFromJson(Map<String, dynamic> json) => _Item(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  imageUrl: json['image_url'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
  finalPrice: (json['final_price'] as num?)?.toDouble() ?? 0.0,
  avgRating: (json['avg_rating'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_url': instance.imageUrl,
  'price': instance.price,
  'discount': instance.discount,
  'final_price': instance.finalPrice,
  'avg_rating': instance.avgRating,
};
