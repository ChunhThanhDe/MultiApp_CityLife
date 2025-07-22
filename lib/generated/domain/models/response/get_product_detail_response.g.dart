// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_product_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetailResponse _$ProductDetailResponseFromJson(
  Map<String, dynamic> json,
) => _ProductDetailResponse(
  type: json['type'] as String,
  item: ProductDetail.fromJson(json['item'] as Map<String, dynamic>),
  recommendations: (json['recommendations'] as List<dynamic>)
      .map((e) => ProductRecommendation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductDetailResponseToJson(
  _ProductDetailResponse instance,
) => <String, dynamic>{
  'type': instance.type,
  'item': instance.item,
  'recommendations': instance.recommendations,
};

_ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    _ProductDetail(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
      storeName: json['store_name'] as String,
      storeImageUrl: json['store_image_url'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrls: (json['image_url'] as List<dynamic>)
          .map((e) => ImageUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
      gallery: (json['gallery'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toInt(),
      tax: (json['tax'] as num).toInt(),
      taxType: json['tax_type'] as String,
      discount: (json['discount'] as num).toInt(),
      discountType: json['discount_type'] as String,
      veg: json['veg'] as bool,
      stock: (json['stock'] as num).toInt(),
      unitId: (json['unit_id'] as num).toInt(),
      orderCount: (json['order_count'] as num).toInt(),
      avgRating: (json['avg_rating'] as num).toDouble(),
      ratingCount: (json['rating_count'] as num).toInt(),
      slug: json['slug'] as String,
      recommended: json['recommended'] as bool,
      organic: json['organic'] as bool,
      maximumCartQuantity: (json['maximum_cart_quantity'] as num?)?.toInt(),
      addOns: json['add_ons'] as List<dynamic>,
      variations: (json['variations'] as List<dynamic>)
          .map((e) => Variation.fromJson(e as Map<String, dynamic>))
          .toList(),
      choiceOptions: (json['choice_options'] as List<dynamic>)
          .map((e) => ChoiceOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      foodVariations: json['food_variations'] as List<dynamic>,
      nutritions: (json['nutritions'] as List<dynamic>)
          .map((e) => Nutrition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductDetailToJson(_ProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'store_image_url': instance.storeImageUrl,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrls,
      'gallery': instance.gallery,
      'price': instance.price,
      'tax': instance.tax,
      'tax_type': instance.taxType,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'veg': instance.veg,
      'stock': instance.stock,
      'unit_id': instance.unitId,
      'order_count': instance.orderCount,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
      'slug': instance.slug,
      'recommended': instance.recommended,
      'organic': instance.organic,
      'maximum_cart_quantity': instance.maximumCartQuantity,
      'add_ons': instance.addOns,
      'variations': instance.variations,
      'choice_options': instance.choiceOptions,
      'attributes': instance.attributes,
      'food_variations': instance.foodVariations,
      'nutritions': instance.nutritions,
    };

_Variation _$VariationFromJson(Map<String, dynamic> json) => _Variation(
  type: json['type'] as String,
  price: (json['price'] as num).toInt(),
);

Map<String, dynamic> _$VariationToJson(_Variation instance) =>
    <String, dynamic>{'type': instance.type, 'price': instance.price};

_ChoiceOption _$ChoiceOptionFromJson(Map<String, dynamic> json) =>
    _ChoiceOption(
      name: json['name'] as String,
      title: json['title'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ChoiceOptionToJson(_ChoiceOption instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'options': instance.options,
    };

_ProductRecommendation _$ProductRecommendationFromJson(
  Map<String, dynamic> json,
) => _ProductRecommendation(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  imageUrl: json['image_url'] as String,
  price: (json['price'] as num).toInt(),
);

Map<String, dynamic> _$ProductRecommendationToJson(
  _ProductRecommendation instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_url': instance.imageUrl,
  'price': instance.price,
};

_ImageUrl _$ImageUrlFromJson(Map<String, dynamic> json) =>
    _ImageUrl(img: json['img'] as String, storage: json['storage'] as String);

Map<String, dynamic> _$ImageUrlToJson(_ImageUrl instance) => <String, dynamic>{
  'img': instance.img,
  'storage': instance.storage,
};

_Nutrition _$NutritionFromJson(Map<String, dynamic> json) => _Nutrition(
  id: (json['id'] as num).toInt(),
  nutrition: json['nutrition'] as String,
);

Map<String, dynamic> _$NutritionToJson(_Nutrition instance) =>
    <String, dynamic>{'id': instance.id, 'nutrition': instance.nutrition};
