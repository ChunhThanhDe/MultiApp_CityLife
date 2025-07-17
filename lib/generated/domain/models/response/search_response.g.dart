// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      items: json['items'] == null
          ? null
          : SearchItems.fromJson(json['items'] as Map<String, dynamic>),
      topSearches: (json['top_searches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      recentSearches: (json['recent_searches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      recentStores: (json['recent_stores'] as List<dynamic>?)
          ?.map((e) => RecentStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'top_searches': instance.topSearches,
      'recent_searches': instance.recentSearches,
      'recent_stores': instance.recentStores,
    };

_SearchItems _$SearchItemsFromJson(Map<String, dynamic> json) => _SearchItems(
  total: (json['total'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 0,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$SearchItemsToJson(_SearchItems instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
      'data': instance.data,
    };

_SearchItem _$SearchItemFromJson(Map<String, dynamic> json) => _SearchItem(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  imageUrl: json['image_url'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
  finalPrice: (json['final_price'] as num?)?.toDouble() ?? 0.0,
  avgRating: (json['avg_rating'] as num?)?.toDouble() ?? 0.0,
  storeId: (json['store_id'] as num?)?.toInt() ?? 0,
  moduleId: (json['module_id'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SearchItemToJson(_SearchItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'discount': instance.discount,
      'final_price': instance.finalPrice,
      'avg_rating': instance.avgRating,
      'store_id': instance.storeId,
      'module_id': instance.moduleId,
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
