// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/wishlist_response.freezed.dart';
part '../../../generated/domain/models/response/wishlist_response.g.dart';

@freezed
abstract class WishlistResponse with _$WishlistResponse {
  const factory WishlistResponse({required List<WishlistItem> item, required List<WishlistStore> store}) = _WishlistResponse;

  factory WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);
}

@freezed
abstract class WishlistItem with _$WishlistItem {
  const factory WishlistItem({
    required int id,
    required String name,
    required double price,
    @JsonKey(name: 'image_full_url') required String imageFullUrl,
    String? description,
    @JsonKey(name: 'avg_rating') double? avgRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
  }) = _WishlistItem;

  factory WishlistItem.fromJson(Map<String, dynamic> json) => _$WishlistItemFromJson(json);
}

@freezed
abstract class WishlistStore with _$WishlistStore {
  const factory WishlistStore({
    required int id,
    required String name,
    @JsonKey(name: 'logo_full_url') required String logoFullUrl,
    @JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl,
    @JsonKey(name: 'avg_rating') double? avgRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'minimum_order') double? minimumOrder,
    @JsonKey(name: 'minimum_shipping_charge') double? minimumShippingCharge,
  }) = _WishlistStore;

  factory WishlistStore.fromJson(Map<String, dynamic> json) => _$WishlistStoreFromJson(json);
}
