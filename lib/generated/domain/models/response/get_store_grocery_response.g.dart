// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_grocery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreGroceryResponse _$StoreGroceryResponseFromJson(
  Map<String, dynamic> json,
) => _StoreGroceryResponse(
  store: GroceryStore.fromJson(json['store'] as Map<String, dynamic>),
  categories: (json['categories'] as List<dynamic>)
      .map((e) => GroceryCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
  sections: (json['sections'] as List<dynamic>)
      .map((e) => GrocerySection.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StoreGroceryResponseToJson(
  _StoreGroceryResponse instance,
) => <String, dynamic>{
  'store': instance.store,
  'categories': instance.categories,
  'sections': instance.sections,
};

_GroceryStore _$GroceryStoreFromJson(Map<String, dynamic> json) =>
    _GroceryStore(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logoUrl: json['logo_url'] as String,
      coverPhotoUrl: json['cover_photo_url'] as String,
      rating: GroceryRating.fromJson(json['rating'] as Map<String, dynamic>),
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
      delivery: json['delivery'] as bool,
      pickup: json['pickup'] as bool,
    );

Map<String, dynamic> _$GroceryRatingToJson(_GroceryRating instance) =>
    <String, dynamic>{'delivery': instance.delivery, 'pickup': instance.pickup};

_GroceryCategory _$GroceryCategoryFromJson(Map<String, dynamic> json) =>
    _GroceryCategory(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$GroceryCategoryToJson(_GroceryCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
    };

_GrocerySection _$GrocerySectionFromJson(Map<String, dynamic> json) =>
    _GrocerySection(
      categoryId: (json['category_id'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => GroceryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GrocerySectionToJson(_GrocerySection instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'items': instance.items,
    };

_GroceryItem _$GroceryItemFromJson(Map<String, dynamic> json) => _GroceryItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
  imageUrl: json['image_url'] as String,
);

Map<String, dynamic> _$GroceryItemToJson(_GroceryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'image_url': instance.imageUrl,
    };
