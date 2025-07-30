// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_info_food_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreInfoFoodResponse _$StoreInfoFoodResponseFromJson(
  Map<String, dynamic> json,
) => _StoreInfoFoodResponse(
  store: json['store'] == null
      ? const StoreDetail()
      : StoreDetail.fromJson(json['store'] as Map<String, dynamic>),
  popularItems:
      (json['popular_items'] as List<dynamic>?)
          ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  sections:
      (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StoreInfoFoodResponseToJson(
  _StoreInfoFoodResponse instance,
) => <String, dynamic>{
  'store': instance.store,
  'popular_items': instance.popularItems,
  'sections': instance.sections,
};

_StoreDetail _$StoreDetailFromJson(Map<String, dynamic> json) => _StoreDetail(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  logoUrl: json['logo_url'] as String? ?? '',
  coverPhotoUrl: json['cover_photo_url'] as String? ?? '',
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  reviewCount: (json['review_count'] as num?)?.toInt() ?? 0,
  services: json['services'] == null
      ? const StoreServices()
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

_StoreServices _$StoreServicesFromJson(Map<String, dynamic> json) =>
    _StoreServices(
      inStore: json['in_store'] as bool? ?? false,
      delivery: json['delivery'] as bool? ?? false,
      driveThru: json['drive_thru'] as bool? ?? false,
    );

Map<String, dynamic> _$StoreServicesToJson(_StoreServices instance) =>
    <String, dynamic>{
      'in_store': instance.inStore,
      'delivery': instance.delivery,
      'drive_thru': instance.driveThru,
    };

_ProductItem _$ProductItemFromJson(Map<String, dynamic> json) => _ProductItem(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  imageUrl: json['image_url'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  avgRating: (json['avg_rating'] as num?)?.toDouble() ?? 0.0,
  ratingCount: (json['rating_count'] as num?)?.toInt() ?? 0,
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

_Section _$SectionFromJson(Map<String, dynamic> json) => _Section(
  categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
  categoryName: json['category_name'] as String? ?? '',
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$SectionToJson(_Section instance) => <String, dynamic>{
  'category_id': instance.categoryId,
  'category_name': instance.categoryName,
  'items': instance.items,
};
