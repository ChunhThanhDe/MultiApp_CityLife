// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_info_food_response.freezed.dart';
part '../../../generated/domain/models/response/get_store_info_food_response.g.dart';

@freezed
abstract class StoreInfoFoodResponse with _$StoreInfoFoodResponse {
  const factory StoreInfoFoodResponse({@Default(StoreDetail()) StoreDetail store, @JsonKey(name: 'popular_items') @Default([]) List<ProductItem> popularItems, @Default([]) List<Section> sections}) =
      _StoreInfoFoodResponse;

  factory StoreInfoFoodResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoFoodResponseFromJson(json);
}

@freezed
abstract class StoreDetail with _$StoreDetail {
  const factory StoreDetail({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'logo_url') @Default('') String logoUrl,
    @JsonKey(name: 'cover_photo_url') @Default('') String coverPhotoUrl,
    @Default(0.0) double rating,
    @JsonKey(name: 'review_count') @Default(0) int reviewCount,
    @Default(StoreServices()) StoreServices services,
  }) = _StoreDetail;

  factory StoreDetail.fromJson(Map<String, dynamic> json) => _$StoreDetailFromJson(json);
}

@freezed
abstract class StoreServices with _$StoreServices {
  const factory StoreServices({@JsonKey(name: 'in_store') @Default(false) bool inStore, @Default(false) bool delivery, @JsonKey(name: 'drive_thru') @Default(false) bool driveThru}) = _StoreServices;

  factory StoreServices.fromJson(Map<String, dynamic> json) => _$StoreServicesFromJson(json);
}

@freezed
abstract class ProductItem with _$ProductItem {
  const factory ProductItem({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default(0.0) double price,
    @JsonKey(name: 'avg_rating') @Default(0.0) double avgRating,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);
}

@freezed
abstract class Section with _$Section {
  const factory Section({@JsonKey(name: 'category_id') @Default(0) int categoryId, @JsonKey(name: 'category_name') @Default('') String categoryName, @Default([]) List<ProductItem> items}) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
}
