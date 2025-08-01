// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_infomation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreInfomationResponse _$StoreInfomationResponseFromJson(
  Map<String, dynamic> json,
) => _StoreInfomationResponse(
  store: json['store'] == null
      ? null
      : StoreDetail.fromJson(json['store'] as Map<String, dynamic>),
  groceryStore: json['groceryStore'] == null
      ? null
      : GroceryStore.fromJson(json['groceryStore'] as Map<String, dynamic>),
  popularItems: (json['popular_items'] as List<dynamic>?)
      ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  sections: (json['sections'] as List<dynamic>?)
      ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
      .toList(),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => GroceryCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
  grocerySections: (json['grocerySections'] as List<dynamic>?)
      ?.map((e) => GrocerySection.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StoreInfomationResponseToJson(
  _StoreInfomationResponse instance,
) => <String, dynamic>{
  'store': instance.store,
  'groceryStore': instance.groceryStore,
  'popular_items': instance.popularItems,
  'sections': instance.sections,
  'categories': instance.categories,
  'grocerySections': instance.grocerySections,
};

_StoreDetail _$StoreDetailFromJson(Map<String, dynamic> json) => _StoreDetail(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  logoUrl: json['logo_url'] as String?,
  coverPhotoUrl: json['cover_photo_url'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  reviewCount: (json['review_count'] as num?)?.toInt(),
  services: json['services'] == null
      ? null
      : StoreServices.fromJson(json['services'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoreDetailToJson(_StoreDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logoUrl,
      'cover_photo_url': instance.coverPhotoUrl,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'services': instance.services,
    };

_GroceryStore _$GroceryStoreFromJson(Map<String, dynamic> json) =>
    _GroceryStore(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      logoUrl: json['logo_url'] as String?,
      coverPhotoUrl: json['cover_photo_url'] as String?,
      rating: json['rating'] == null
          ? null
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

_StoreServices _$StoreServicesFromJson(Map<String, dynamic> json) =>
    _StoreServices(
      inStore: json['in_store'] as bool?,
      delivery: json['delivery'] as bool?,
      driveThru: json['drive_thru'] as bool?,
    );

Map<String, dynamic> _$StoreServicesToJson(_StoreServices instance) =>
    <String, dynamic>{
      'in_store': instance.inStore,
      'delivery': instance.delivery,
      'drive_thru': instance.driveThru,
    };

_GroceryRating _$GroceryRatingFromJson(Map<String, dynamic> json) =>
    _GroceryRating(
      delivery: json['delivery'] as bool?,
      pickup: json['pickup'] as bool?,
    );

Map<String, dynamic> _$GroceryRatingToJson(_GroceryRating instance) =>
    <String, dynamic>{'delivery': instance.delivery, 'pickup': instance.pickup};

_ProductItem _$ProductItemFromJson(Map<String, dynamic> json) => _ProductItem(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  imageUrl: json['image_url'] as String?,
  price: (json['price'] as num?)?.toDouble(),
  avgRating: (json['avg_rating'] as num?)?.toDouble(),
  ratingCount: (json['rating_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductItemToJson(_ProductItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
    };

_GroceryItem _$GroceryItemFromJson(Map<String, dynamic> json) => _GroceryItem(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  imageUrl: json['image_url'] as String?,
  price: (json['price'] as num?)?.toInt(),
  avgRating: (json['avg_rating'] as num?)?.toDouble(),
  ratingCount: (json['rating_count'] as num?)?.toInt(),
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

_Section _$SectionFromJson(Map<String, dynamic> json) => _Section(
  categoryId: (json['category_id'] as num?)?.toInt(),
  categoryName: json['category_name'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SectionToJson(_Section instance) => <String, dynamic>{
  'category_id': instance.categoryId,
  'category_name': instance.categoryName,
  'items': instance.items,
};

_GroceryCategory _$GroceryCategoryFromJson(Map<String, dynamic> json) =>
    _GroceryCategory(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$GroceryCategoryToJson(_GroceryCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
    };

_GrocerySection _$GrocerySectionFromJson(Map<String, dynamic> json) =>
    _GrocerySection(
      categoryId: (json['category_id'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => GroceryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GrocerySectionToJson(_GrocerySection instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'items': instance.items,
    };
