// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/wishlist_response.freezed.dart';
part '../../../generated/domain/models/response/wishlist_response.g.dart';

@freezed
abstract class WishlistResponse with _$WishlistResponse {
  const factory WishlistResponse({
    @JsonKey(name: 'item') List<WishlistItem>? item,
    @JsonKey(name: 'store') List<WishlistStore>? store,
  }) = _WishlistResponse;

  factory WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);
}

@freezed
abstract class WishlistItem with _$WishlistItem {
  const factory WishlistItem({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'image_full_url') String? imageFullUrl,
    @JsonKey(name: 'store_name') String? storeName,
  }) = _WistlistItem;

  factory WishlistItem.fromJson(Map<String, dynamic> json) => _$WishlistItemFromJson(json);
}

@freezed
abstract class WishlistStore with _$WishlistStore {
  const factory WishlistStore({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'minimum_shipping_charge') int? minimumShippingCharge,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'avg_rating') int? avgRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
    @JsonKey(name: 'logo_full_url') String? logoFullUrl,
    @JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl,
  }) = _WishlistStore;

  factory WishlistStore.fromJson(Map<String, dynamic> json) => _$WishlistStoreFromJson(json);
}
