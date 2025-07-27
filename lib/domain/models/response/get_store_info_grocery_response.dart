// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_info_grocery_response.freezed.dart';
part '../../../generated/domain/models/response/get_store_info_grocery_response.g.dart';

@freezed
abstract class StoreInfoGroceryResponse with _$StoreInfoGroceryResponse {
  const factory StoreInfoGroceryResponse({
    @Default(GroceryStore()) GroceryStore store,
    @Default([]) List<GroceryCategory> categories,
    @Default([]) List<GrocerySection> sections,
  }) = _StoreInfoGroceryResponse;

  factory StoreInfoGroceryResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoGroceryResponseFromJson(json);
}

@freezed
abstract class GroceryStore with _$GroceryStore {
  const factory GroceryStore({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'logo_url') @Default('') String logoUrl,
    @JsonKey(name: 'cover_photo_url') @Default('') String coverPhotoUrl,
    @Default(GroceryRating()) GroceryRating rating,
  }) = _GroceryStore;

  factory GroceryStore.fromJson(Map<String, dynamic> json) => _$GroceryStoreFromJson(json);
}

@freezed
abstract class GroceryRating with _$GroceryRating {
  const factory GroceryRating({
    @Default(false) bool delivery,
    @Default(false) bool pickup,
  }) = _GroceryRating;

  factory GroceryRating.fromJson(Map<String, dynamic> json) => _$GroceryRatingFromJson(json);
}

@freezed
abstract class GroceryCategory with _$GroceryCategory {
  const factory GroceryCategory({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
  }) = _GroceryCategory;

  factory GroceryCategory.fromJson(Map<String, dynamic> json) => _$GroceryCategoryFromJson(json);
}

@freezed
abstract class GrocerySection with _$GrocerySection {
  const factory GrocerySection({
    @JsonKey(name: 'category_id') @Default(0) int categoryId,
    @Default([]) List<GroceryItem> items,
  }) = _GrocerySection;

  factory GrocerySection.fromJson(Map<String, dynamic> json) => _$GrocerySectionFromJson(json);
}

@freezed
abstract class GroceryItem with _$GroceryItem {
  const factory GroceryItem({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default(0) int price,
    @JsonKey(name: 'avg_rating') @Default(0.0) double avgRating,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
  }) = _GroceryItem;

  factory GroceryItem.fromJson(Map<String, dynamic> json) => _$GroceryItemFromJson(json);
}
