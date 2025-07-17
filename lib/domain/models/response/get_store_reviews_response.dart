// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_reviews_response.freezed.dart';
part '../../../generated/domain/models/response/get_store_reviews_response.g.dart';

@freezed
abstract class GetStoreReviewsResponse with _$GetStoreReviewsResponse {
  const factory GetStoreReviewsResponse({
    required List<Review> reviews,
  }) = _GetStoreReviewsResponse;

  factory GetStoreReviewsResponse.fromJson(Map<String, dynamic> json) => _$GetStoreReviewsResponseFromJson(json);
}

@freezed
abstract class Review with _$Review {
  const factory Review({
    required double rating,
    required String module,
    UserReview? user,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
abstract class UserReview with _$UserReview {
  const factory UserReview({
    required int id,
    required String name,
    required String comment,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'created_at') required String createdAt,
    required double rating,
  }) = _UserReview;

  factory UserReview.fromJson(Map<String, dynamic> json) => _$UserReviewFromJson(json);
}
