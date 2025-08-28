// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_product_detail_response.freezed.dart';
part '../../../generated/domain/models/response/get_product_detail_response.g.dart';

@freezed
abstract class ProductDetailResponse with _$ProductDetailResponse {
  const factory ProductDetailResponse({required ProductDetail item, @Default('') String type, @Default([]) List<ProductRecommendation> recommendations}) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailResponseFromJson(json);
}

@freezed
abstract class VariationModel with _$VariationModel {
  const factory VariationModel({
    @JsonKey(name: 'name') @Default('') String name,
    @Default('') String type,
    @JsonKey(fromJson: _parseToString) @Default('0') String min,
    @JsonKey(fromJson: _parseToString) @Default('0') String max,
    @Default('') String required,
    @Default([]) List<VariationValue> values,
  }) = _VariationModel;

  factory VariationModel.fromJson(Map<String, dynamic> json) => _$VariationModelFromJson(json);
}

String _parseToString(dynamic value) {
  if (value == null) return '0';
  return value.toString();
}

@freezed
abstract class VariationValue with _$VariationValue {
  const factory VariationValue({@JsonKey(name: 'label') @Default('') String label, @JsonKey(name: 'optionPrice') @Default('0') String optionPrice}) = _VariationValue;

  factory VariationValue.fromJson(Map<String, dynamic> json) => _$VariationValueFromJson(json);
}

@freezed
abstract class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    @Default(0) int id,
    @JsonKey(name: 'store_id') @Default(0) int storeId,
    @JsonKey(name: 'store_name') @Default('') String storeName,
    @JsonKey(name: 'store_image_url') @Default('') String storeImageUrl,
    @Default('') String name,
    @Default('') String description,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default([]) List<String> gallery,
    @Default(0) int price,
    @Default(0) int tax,
    @JsonKey(name: 'tax_type') @Default('') String taxType,
    @Default(0) int discount,
    @JsonKey(name: 'discount_type') @Default('') String discountType,
    @Default(false) bool veg,
    @Default(0) int stock,
    @JsonKey(name: 'unit_id') @Default(0) int unitId,
    @JsonKey(name: 'order_count') @Default(0) int orderCount,
    @JsonKey(name: 'avg_rating') @Default(0.0) double avgRating,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
    @Default('') String slug,
    @Default(false) bool recommended,
    @Default(false) bool organic,
    @JsonKey(name: 'maximum_cart_quantity') int? maximumCartQuantity,
    @JsonKey(name: 'add_ons') @Default([]) List<dynamic> addOns,
    @JsonKey(name: 'variations') @Default([]) List<VariationModel> variations,
    @JsonKey(name: 'choice_options') @Default([]) List<ChoiceOption> choiceOptions,
    @Default([]) List<String> attributes,
    @JsonKey(name: 'food_variations') @Default([]) List<dynamic> foodVariations,
    @Default([]) List<Nutrition> nutritions,
    @JsonKey(name: 'is_favorite') @Default(false) bool isFavorite,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);
}

@freezed
abstract class Variation with _$Variation {
  const factory Variation({
    @Default('') String type,
    @Default(0) int price,
    // Nếu có stock, thêm luôn: @Default(0) int stock,
  }) = _Variation;

  factory Variation.fromJson(Map<String, dynamic> json) => _$VariationFromJson(json);
}

@freezed
abstract class ChoiceOption with _$ChoiceOption {
  const factory ChoiceOption({@Default('') String name, @Default('') String title, @Default([]) List<String> options}) = _ChoiceOption;

  factory ChoiceOption.fromJson(Map<String, dynamic> json) => _$ChoiceOptionFromJson(json);
}

@freezed
abstract class ProductRecommendation with _$ProductRecommendation {
  const factory ProductRecommendation({@Default(0) int id, @Default('') String name, @JsonKey(name: 'image_url') @Default('') String imageUrl, @Default(0) int price}) = _ProductRecommendation;

  factory ProductRecommendation.fromJson(Map<String, dynamic> json) => _$ProductRecommendationFromJson(json);
}

@freezed
abstract class ImageUrl with _$ImageUrl {
  const factory ImageUrl({@Default('') String img, @Default('') String storage}) = _ImageUrl;

  factory ImageUrl.fromJson(Map<String, dynamic> json) => _$ImageUrlFromJson(json);
}

@freezed
abstract class Nutrition with _$Nutrition {
  const factory Nutrition({@Default(0) int id, @Default('') String nutrition}) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) => _$NutritionFromJson(json);
}
