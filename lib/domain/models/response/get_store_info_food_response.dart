// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_info_food_response.freezed.dart';
part '../../../generated/domain/models/response/get_store_info_food_response.g.dart';

@freezed
abstract class StoreInfoFoodResponse with _$StoreInfoFoodResponse {
  const factory StoreInfoFoodResponse({
    required StoreDetail store,
    @JsonKey(name: 'popular_items') required List<ProductItem> popularItems,
    required List<Section> sections,
  }) = _StoreInfoFoodResponse;

  factory StoreInfoFoodResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoFoodResponseFromJson(json);
}

@freezed
abstract class StoreDetail with _$StoreDetail {
  const factory StoreDetail({
    required int id,
    required String name,
    @JsonKey(name: 'logo_url') required String logoUrl,
    @JsonKey(name: 'cover_photo_url') required String coverPhotoUrl,
    required double rating,
    @JsonKey(name: 'review_count') required int reviewCount,
    required StoreServices services,
  }) = _StoreDetail;

  factory StoreDetail.fromJson(Map<String, dynamic> json) => _$StoreDetailFromJson(json);
}

@freezed
abstract class StoreServices with _$StoreServices {
  const factory StoreServices({
    @JsonKey(name: 'in_store') required bool inStore,
    required bool delivery,
    @JsonKey(name: 'drive_thru') required bool driveThru,
  }) = _StoreServices;

  factory StoreServices.fromJson(Map<String, dynamic> json) => _$StoreServicesFromJson(json);
}

@freezed
abstract class ProductItem with _$ProductItem {
  const factory ProductItem({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    required int price,
    @JsonKey(name: 'avg_rating') required double avgRating,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);
}

@freezed
abstract class Section with _$Section {
  const factory Section({
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'category_name') required String categoryName,
    required List<ProductItem> items,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
}
