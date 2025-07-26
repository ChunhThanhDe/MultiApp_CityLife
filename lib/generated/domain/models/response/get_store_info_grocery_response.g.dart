// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_info_grocery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreInfoGroceryResponse _$StoreInfoGroceryResponseFromJson(
  Map<String, dynamic> json,
) => _StoreInfoGroceryResponse(
  store: json['store'] == null
      ? const GroceryStore()
      : GroceryStore.fromJson(json['store'] as Map<String, dynamic>),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => GroceryCategory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  sections:
      (json['sections'] as List<dynamic>?)
          ?.map((e) => GrocerySection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StoreInfoGroceryResponseToJson(
  _StoreInfoGroceryResponse instance,
) => <String, dynamic>{
  'store': instance.store,
  'categories': instance.categories,
  'sections': instance.sections,
};

_GroceryStore _$GroceryStoreFromJson(Map<String, dynamic> json) =>
    _GroceryStore(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      logoUrl: json['logo_url'] as String? ?? '',
      coverPhotoUrl: json['cover_photo_url'] as String? ?? '',
      rating: json['rating'] == null
          ? const GroceryRating()
          : GroceryRating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroceryStoreToJson(_GroceryStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logoUrl,
      'cover_photo_url': instance.coverPhotoUrl,
      'rating': instance.rating,
    };

_GroceryRating _$GroceryRatingFromJson(Map<String, dynamic> json) =>
    _GroceryRating(
      delivery: json['delivery'] as bool? ?? false,
      pickup: json['pickup'] as bool? ?? false,
    );

Map<String, dynamic> _$GroceryRatingToJson(_GroceryRating instance) =>
    <String, dynamic>{'delivery': instance.delivery, 'pickup': instance.pickup};

_GroceryCategory _$GroceryCategoryFromJson(Map<String, dynamic> json) =>
    _GroceryCategory(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
    );

Map<String, dynamic> _$GroceryCategoryToJson(_GroceryCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
    };

_GrocerySection _$GrocerySectionFromJson(Map<String, dynamic> json) =>
    _GrocerySection(
      categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => GroceryItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GrocerySectionToJson(_GrocerySection instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'items': instance.items,
    };

_GroceryItem _$GroceryItemFromJson(Map<String, dynamic> json) => _GroceryItem(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  imageUrl: json['image_url'] as String? ?? '',
  price: (json['price'] as num?)?.toInt() ?? 0,
  avgRating: (json['avg_rating'] as num?)?.toDouble() ?? 0.0,
  ratingCount: (json['rating_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$GroceryItemToJson(_GroceryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
    };
