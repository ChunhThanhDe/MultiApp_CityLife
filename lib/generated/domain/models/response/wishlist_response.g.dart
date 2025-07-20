// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/wishlist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WishlistResponse _$WishlistResponseFromJson(Map<String, dynamic> json) =>
    _WishlistResponse(
      item: (json['item'] as List<dynamic>)
          .map((e) => WishlistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      store: (json['store'] as List<dynamic>)
          .map((e) => WishlistStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WishlistResponseToJson(_WishlistResponse instance) =>
    <String, dynamic>{'item': instance.item, 'store': instance.store};

_WishlistItem _$WishlistItemFromJson(Map<String, dynamic> json) =>
    _WishlistItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      imageFullUrl: json['image_full_url'] as String,
      description: json['description'] as String?,
      avgRating: (json['avg_rating'] as num?)?.toDouble(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WishlistItemToJson(_WishlistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'image_full_url': instance.imageFullUrl,
      'description': instance.description,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
    };

_WishlistStore _$WishlistStoreFromJson(Map<String, dynamic> json) =>
    _WishlistStore(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logoFullUrl: json['logo_full_url'] as String,
      coverPhotoFullUrl: json['cover_photo_full_url'] as String?,
      avgRating: (json['avg_rating'] as num?)?.toDouble(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      deliveryTime: json['delivery_time'] as String?,
      minimumOrder: (json['minimum_order'] as num?)?.toDouble(),
      minimumShippingCharge: (json['minimum_shipping_charge'] as num?)
          ?.toDouble(),
    );

Map<String, dynamic> _$WishlistStoreToJson(_WishlistStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_full_url': instance.logoFullUrl,
      'cover_photo_full_url': instance.coverPhotoFullUrl,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
      'delivery_time': instance.deliveryTime,
      'minimum_order': instance.minimumOrder,
      'minimum_shipping_charge': instance.minimumShippingCharge,
    };
