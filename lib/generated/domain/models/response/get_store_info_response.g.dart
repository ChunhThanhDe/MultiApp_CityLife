// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreInfoResponse _$StoreInfoResponseFromJson(Map<String, dynamic> json) =>
    _StoreInfoResponse(
      store: StoreInfo.fromJson(json['store'] as Map<String, dynamic>),
      menu: (json['menu'] as List<dynamic>)
          .map((e) => MenuCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoreInfoResponseToJson(_StoreInfoResponse instance) =>
    <String, dynamic>{'store': instance.store, 'menu': instance.menu};

_StoreInfo _$StoreInfoFromJson(Map<String, dynamic> json) => _StoreInfo(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  address: json['address'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  rating: (json['rating'] as num).toDouble(),
  reviewCount: (json['review_count'] as num).toInt(),
  module: json['module'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  services: StoreMenuServices.fromJson(
    json['services'] as Map<String, dynamic>,
  ),
  logoUrl: json['logo_url'] as String,
  comment: json['comment'] as String?,
);

Map<String, dynamic> _$StoreInfoToJson(_StoreInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'module': instance.module,
      'tags': instance.tags,
      'services': instance.services,
      'logo_url': instance.logoUrl,
      'comment': instance.comment,
    };

_StoreMenuServices _$StoreMenuServicesFromJson(Map<String, dynamic> json) =>
    _StoreMenuServices(
      deliveryFee: (json['delivery_fee'] as num).toInt(),
      deliveryTime: json['delivery_time'] as String,
      takeAway: json['take_away'] as bool,
      selfDriveThru: json['self_drive_thru'] as bool,
    );

Map<String, dynamic> _$StoreMenuServicesToJson(_StoreMenuServices instance) =>
    <String, dynamic>{
      'delivery_fee': instance.deliveryFee,
      'delivery_time': instance.deliveryTime,
      'take_away': instance.takeAway,
      'self_drive_thru': instance.selfDriveThru,
    };

_MenuCategory _$MenuCategoryFromJson(Map<String, dynamic> json) =>
    _MenuCategory(
      categoryId: (json['category_id'] as num).toInt(),
      categoryName: json['category_name'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuCategoryToJson(_MenuCategory instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'items': instance.items,
    };

_MenuItem _$MenuItemFromJson(Map<String, dynamic> json) => _MenuItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  imageUrl: json['image_url'] as String,
  price: (json['price'] as num).toInt(),
  avgRating: (json['avg_rating'] as num).toDouble(),
  ratingCount: (json['rating_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$MenuItemToJson(_MenuItem instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_url': instance.imageUrl,
  'price': instance.price,
  'avg_rating': instance.avgRating,
  'rating_count': instance.ratingCount,
};
