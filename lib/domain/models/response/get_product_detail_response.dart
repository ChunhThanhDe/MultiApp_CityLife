// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_product_detail_response.freezed.dart';
part '../../../generated/domain/models/response/get_product_detail_response.g.dart';

@freezed
abstract class ProductDetailResponse with _$ProductDetailResponse {
  const factory ProductDetailResponse({
    required String type,
    required ProductDetail item,
    required List<ProductRecommendation> recommendations,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailResponseFromJson(json);
}

@freezed
abstract class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    required int id,
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'store_name') required String storeName,
    @JsonKey(name: 'store_image_url') required String storeImageUrl,
    required String name,
    required String description,
    // SỬA 1: ImageUrl object
    @JsonKey(name: 'image_url') required List<ImageUrl> imageUrls,
    required List<String> gallery,
    required int price,
    required int tax,
    @JsonKey(name: 'tax_type') required String taxType,
    required int discount,
    @JsonKey(name: 'discount_type') required String discountType,
    required bool veg,
    required int stock,
    @JsonKey(name: 'unit_id') required int unitId,
    @JsonKey(name: 'order_count') required int orderCount,
    @JsonKey(name: 'avg_rating') required double avgRating,
    @JsonKey(name: 'rating_count') required int ratingCount,
    required String slug,
    required bool recommended,
    required bool organic,
    @JsonKey(name: 'maximum_cart_quantity') int? maximumCartQuantity,
    @JsonKey(name: 'add_ons') required List<dynamic> addOns,
    required List<Variation> variations,
    @JsonKey(name: 'choice_options') required List<ChoiceOption> choiceOptions,
    required List<String> attributes,
    @JsonKey(name: 'food_variations') required List<dynamic> foodVariations,
    required List<Nutrition> nutritions,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);
}

@freezed
abstract class Variation with _$Variation {
  const factory Variation({
    required String type,
    required int price,
    // Nếu có thêm stock, thêm luôn: required int stock,
  }) = _Variation;

  factory Variation.fromJson(Map<String, dynamic> json) => _$VariationFromJson(json);
}

@freezed
abstract class ChoiceOption with _$ChoiceOption {
  const factory ChoiceOption({
    required String name,
    required String title,
    required List<String> options,
  }) = _ChoiceOption;

  factory ChoiceOption.fromJson(Map<String, dynamic> json) => _$ChoiceOptionFromJson(json);
}

@freezed
abstract class ProductRecommendation with _$ProductRecommendation {
  const factory ProductRecommendation({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    required int price,
  }) = _ProductRecommendation;

  factory ProductRecommendation.fromJson(Map<String, dynamic> json) => _$ProductRecommendationFromJson(json);
}

// IMAGE URL MODEL ĐÚNG KIỂU
@freezed
abstract class ImageUrl with _$ImageUrl {
  const factory ImageUrl({
    required String img,
    required String storage,
  }) = _ImageUrl;

  factory ImageUrl.fromJson(Map<String, dynamic> json) => _$ImageUrlFromJson(json);
}

// NUTRITION MODEL
@freezed
abstract class Nutrition with _$Nutrition {
  const factory Nutrition({
    required int id,
    required String nutrition,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) => _$NutritionFromJson(json);
}
