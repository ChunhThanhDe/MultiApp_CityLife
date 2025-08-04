// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_infomation_response.freezed.dart';
part '../../../generated/domain/models/response/get_store_infomation_response.g.dart';

@freezed
abstract class StoreInfomationResponse with _$StoreInfomationResponse {
  const factory StoreInfomationResponse({
    // Store information (combined from both food and grocery)
    StoreDetail? store,
    // Food-specific fields
    @JsonKey(name: 'popular_items') List<ProductItem>? popularItems,
    List<Section>? sections,

    // Grocery-specific fields
    List<GroceryCategory>? categories,
    List<GrocerySection>? grocerySections,
  }) = _StoreInfomationResponse;

  factory StoreInfomationResponse.fromJson(Map<String, dynamic> json) => _$StoreInfomationResponseFromJson(json);
}

@freezed
abstract class StoreDetail with _$StoreDetail {
  const factory StoreDetail({
    int? id,
    String? name,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    double? rating,
    @JsonKey(name: 'review_count') int? reviewCount,
    StoreServices? services,
  }) = _StoreDetail;

  factory StoreDetail.fromJson(Map<String, dynamic> json) => _$StoreDetailFromJson(json);
}

@freezed
abstract class GroceryStore with _$GroceryStore {
  const factory GroceryStore({int? id, String? name, @JsonKey(name: 'logo_url') String? logoUrl, @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, GroceryRating? rating}) = _GroceryStore;

  factory GroceryStore.fromJson(Map<String, dynamic> json) => _$GroceryStoreFromJson(json);
}

@freezed
abstract class StoreServices with _$StoreServices {
  const factory StoreServices({@JsonKey(name: 'in_store') bool? inStore, bool? delivery, @JsonKey(name: 'drive_thru') bool? driveThru}) = _StoreServices;

  factory StoreServices.fromJson(Map<String, dynamic> json) => _$StoreServicesFromJson(json);
}

@freezed
abstract class GroceryRating with _$GroceryRating {
  const factory GroceryRating({bool? delivery, bool? pickup}) = _GroceryRating;

  factory GroceryRating.fromJson(Map<String, dynamic> json) => _$GroceryRatingFromJson(json);
}

@freezed
abstract class ProductItem with _$ProductItem {
  const factory ProductItem({
    int? id,
    String? name,
    @JsonKey(name: 'image_url') String? imageUrl,
    double? price,
    @JsonKey(name: 'avg_rating') double? avgRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);
}

@freezed
abstract class GroceryItem with _$GroceryItem {
  const factory GroceryItem({
    int? id,
    String? name,
    @JsonKey(name: 'image_url') String? imageUrl,
    int? price,
    @JsonKey(name: 'avg_rating') double? avgRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
  }) = _GroceryItem;

  factory GroceryItem.fromJson(Map<String, dynamic> json) => _$GroceryItemFromJson(json);
}

@freezed
abstract class Section with _$Section {
  const factory Section({@JsonKey(name: 'category_id') int? categoryId, @JsonKey(name: 'category_name') String? categoryName, List<ProductItem>? items}) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
}

@freezed
abstract class GroceryCategory with _$GroceryCategory {
  const factory GroceryCategory({int? id, String? name, @JsonKey(name: 'image_url') String? imageUrl}) = _GroceryCategory;

  factory GroceryCategory.fromJson(Map<String, dynamic> json) => _$GroceryCategoryFromJson(json);
}

@freezed
abstract class GrocerySection with _$GrocerySection {
  const factory GrocerySection({@JsonKey(name: 'category_id') int? categoryId, List<GroceryItem>? items}) = _GrocerySection;

  factory GrocerySection.fromJson(Map<String, dynamic> json) => _$GrocerySectionFromJson(json);
}
