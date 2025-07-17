// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStoreReviewsResponse _$GetStoreReviewsResponseFromJson(
  Map<String, dynamic> json,
) => _GetStoreReviewsResponse(
  reviews: (json['reviews'] as List<dynamic>)
      .map((e) => Review.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetStoreReviewsResponseToJson(
  _GetStoreReviewsResponse instance,
) => <String, dynamic>{'reviews': instance.reviews};

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  rating: (json['rating'] as num).toDouble(),
  module: json['module'] as String,
  user: json['user'] == null
      ? null
      : UserReview.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'rating': instance.rating,
  'module': instance.module,
  'user': instance.user,
};

_UserReview _$UserReviewFromJson(Map<String, dynamic> json) => _UserReview(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  comment: json['comment'] as String,
  imageUrl: json['image_url'] as String,
  createdAt: json['created_at'] as String,
  rating: (json['rating'] as num).toDouble(),
);

Map<String, dynamic> _$UserReviewToJson(_UserReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
      'image_url': instance.imageUrl,
      'created_at': instance.createdAt,
      'rating': instance.rating,
    };
