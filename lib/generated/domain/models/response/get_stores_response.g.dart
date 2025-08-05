// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_stores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStoresResponse _$GetStoresResponseFromJson(Map<String, dynamic> json) =>
    _GetStoresResponse(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GetStoresResponseToJson(_GetStoresResponse instance) =>
    <String, dynamic>{'categories': instance.categories, 'data': instance.data};

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

_BannerEntity _$BannerEntityFromJson(Map<String, dynamic> json) =>
    _BannerEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      coverPhoto: json['cover_photo'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: (json['review_count'] as num?)?.toInt(),
      deliveryTime: json['delivery_time'] as String?,
      distanceKm: (json['distance_km'] as num?)?.toDouble(),
      deliveryFee: (json['delivery_fee'] as num?)?.toDouble(),
      status: (json['status'] as num?)?.toInt() ?? 1,
      moduleType: json['module_type'] as String?,
      image: json['image'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$BannerEntityToJson(_BannerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'cover_photo': instance.coverPhoto,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'delivery_time': instance.deliveryTime,
      'distance_km': instance.distanceKm,
      'delivery_fee': instance.deliveryFee,
      'status': instance.status,
      'module_type': instance.moduleType,
      'image': instance.image,
      'type': instance.type,
    };
