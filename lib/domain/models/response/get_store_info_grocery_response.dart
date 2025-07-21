// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_info_grocery_response.freezed.dart';
part '../../../generated/domain/models/response/get_store_info_grocery_response.g.dart';

@freezed
abstract class StoreInfoGroceryResponse with _$StoreInfoGroceryResponse {
  const factory StoreInfoGroceryResponse({
    required GroceryStore store,
    required List<GroceryCategory> categories,
    required List<GrocerySection> sections,
  }) = _StoreInfoGroceryResponse;

  factory StoreInfoGroceryResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoGroceryResponseFromJson(json);
}

@freezed
abstract class GroceryStore with _$GroceryStore {
  const factory GroceryStore({
    required int id,
    required String name,
    @JsonKey(name: 'logo_url') required String logoUrl,
    @JsonKey(name: 'cover_photo_url') required String coverPhotoUrl,
    required GroceryRating rating,
  }) = _GroceryStore;

  factory GroceryStore.fromJson(Map<String, dynamic> json) => _$GroceryStoreFromJson(json);
}

@freezed
abstract class GroceryRating with _$GroceryRating {
  const factory GroceryRating({
    required bool delivery,
    required bool pickup,
  }) = _GroceryRating;

  factory GroceryRating.fromJson(Map<String, dynamic> json) => _$GroceryRatingFromJson(json);
}

@freezed
abstract class GroceryCategory with _$GroceryCategory {
  const factory GroceryCategory({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _GroceryCategory;

  factory GroceryCategory.fromJson(Map<String, dynamic> json) => _$GroceryCategoryFromJson(json);
}

@freezed
abstract class GrocerySection with _$GrocerySection {
  const factory GrocerySection({
    @JsonKey(name: 'category_id') required int categoryId,
    required List<GroceryItem> items,
  }) = _GrocerySection;

  factory GrocerySection.fromJson(Map<String, dynamic> json) => _$GrocerySectionFromJson(json);
}

@freezed
abstract class GroceryItem with _$GroceryItem {
  const factory GroceryItem({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    required int price,
    @JsonKey(name: 'avg_rating') required double avgRating,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
  }) = _GroceryItem;

  factory GroceryItem.fromJson(Map<String, dynamic> json) => _$GroceryItemFromJson(json);
}
