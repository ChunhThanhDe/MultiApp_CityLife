// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_stores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStoresResponse _$GetStoresResponseFromJson(Map<String, dynamic> json) =>
    _GetStoresResponse(
      userLocation: UserLocation.fromJson(
        json['user_location'] as Map<String, dynamic>,
      ),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      recent: (json['recent'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      shopNearYou: (json['shop_near_you'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      topOffer: (json['top_offer'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      todayOffer: (json['today_offer'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularNearYou: (json['popular_near_you'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      allStore: (json['all_store'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetStoresResponseToJson(_GetStoresResponse instance) =>
    <String, dynamic>{
      'user_location': instance.userLocation,
      'categories': instance.categories,
      'recent': instance.recent,
      'shop_near_you': instance.shopNearYou,
      'top_offer': instance.topOffer,
      'today_offer': instance.todayOffer,
      'popular_near_you': instance.popularNearYou,
      'all_store': instance.allStore,
    };

_UserLocation _$UserLocationFromJson(Map<String, dynamic> json) =>
    _UserLocation(
      id: (json['id'] as num).toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$UserLocationToJson(_UserLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  image: json['image'] as String,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
};

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  logo: json['logo'] as String,
  coverPhoto: json['cover_photo'] as String,
  rating: (json['rating'] as num).toDouble(),
  deliveryTime: json['delivery_time'] as String,
  distanceKm: (json['distance_km'] as num?)?.toDouble(),
  deliveryFee: (json['delivery_fee'] as num?)?.toDouble(),
  status: (json['status'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'logo': instance.logo,
  'cover_photo': instance.coverPhoto,
  'rating': instance.rating,
  'delivery_time': instance.deliveryTime,
  'distance_km': instance.distanceKm,
  'delivery_fee': instance.deliveryFee,
  'status': instance.status,
};

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  image: json['image'] as String,
  distanceKm: (json['distance_km'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'distance_km': instance.distanceKm,
};
