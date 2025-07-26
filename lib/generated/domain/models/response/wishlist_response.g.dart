// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/wishlist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WishlistResponse _$WishlistResponseFromJson(Map<String, dynamic> json) =>
    _WishlistResponse(
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => WishlistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      store: (json['store'] as List<dynamic>?)
          ?.map((e) => WishlistStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WishlistResponseToJson(_WishlistResponse instance) =>
    <String, dynamic>{'item': instance.item, 'store': instance.store};

_WistlistItem _$WistlistItemFromJson(Map<String, dynamic> json) =>
    _WistlistItem(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      imageFullUrl: json['image_full_url'] as String?,
      storeName: json['store_name'] as String?,
    );

Map<String, dynamic> _$WistlistItemToJson(_WistlistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'image_full_url': instance.imageFullUrl,
      'store_name': instance.storeName,
    };

_WishlistStore _$WishlistStoreFromJson(Map<String, dynamic> json) =>
    _WishlistStore(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      minimumShippingCharge: (json['minimum_shipping_charge'] as num?)?.toInt(),
      deliveryTime: json['delivery_time'] as String?,
      avgRating: (json['avg_rating'] as num?)?.toInt(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      logoFullUrl: json['logo_full_url'] as String?,
      coverPhotoFullUrl: json['cover_photo_full_url'] as String?,
    );

Map<String, dynamic> _$WishlistStoreToJson(_WishlistStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'minimum_shipping_charge': instance.minimumShippingCharge,
      'delivery_time': instance.deliveryTime,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
      'logo_full_url': instance.logoFullUrl,
      'cover_photo_full_url': instance.coverPhotoFullUrl,
    };
