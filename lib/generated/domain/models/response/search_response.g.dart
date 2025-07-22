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
      recentSearches: (json['recent_searches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      topCategories: (json['top_categories'] as List<dynamic>?)
          ?.map((e) => TopCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsByStore: (json['items_by_store'] as List<dynamic>?)
          ?.map((e) => ItemByStore.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentStores: (json['recent_stores'] as List<dynamic>?)
          ?.map((e) => RecentStores.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'top_searches': instance.topSearches,
      'recent_searches': instance.recentSearches,
      'top_categories': instance.topCategories,
      'items_by_store': instance.itemsByStore,
      'recent_stores': instance.recentStores,
    };

_RecentStores _$RecentStoresFromJson(Map<String, dynamic> json) =>
    _RecentStores(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      logo: json['logo_url'] as String? ?? '',
      coverPhoto: json['cover_photo_url'] as String? ?? '',
      deliveryFee: (json['delivery_fee'] as num?)?.toDouble() ?? 0.0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      deliveryTime: json['delivery_time'] as String? ?? '',
    );

Map<String, dynamic> _$RecentStoresToJson(_RecentStores instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logo,
      'cover_photo_url': instance.coverPhoto,
      'delivery_fee': instance.deliveryFee,
      'rating': instance.rating,
      'delivery_time': instance.deliveryTime,
    };

_TopCategories _$TopCategoriesFromJson(Map<String, dynamic> json) =>
    _TopCategories(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      itemsCount: (json['items_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TopCategoriesToJson(_TopCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'items_count': instance.itemsCount,
    };

_ItemByStore _$ItemByStoreFromJson(Map<String, dynamic> json) => _ItemByStore(
  storeId: (json['store_id'] as num?)?.toInt() ?? 0,
  storeName: json['store_name'] as String? ?? '',
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ItemByStoreToJson(_ItemByStore instance) =>
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
