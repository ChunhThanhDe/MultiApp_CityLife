// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_product_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailResponse {

 ProductDetail get item; String get type; List<ProductRecommendation> get recommendations;
/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith => _$ProductDetailResponseCopyWithImpl<ProductDetailResponse>(this as ProductDetailResponse, _$identity);

  /// Serializes this ProductDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailResponse&&(identical(other.item, item) || other.item == item)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.recommendations, recommendations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,type,const DeepCollectionEquality().hash(recommendations));

@override
String toString() {
  return 'ProductDetailResponse(item: $item, type: $type, recommendations: $recommendations)';
}


}

/// @nodoc
abstract mixin class $ProductDetailResponseCopyWith<$Res>  {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value, $Res Function(ProductDetailResponse) _then) = _$ProductDetailResponseCopyWithImpl;
@useResult
$Res call({
 ProductDetail item, String type, List<ProductRecommendation> recommendations
});


$ProductDetailCopyWith<$Res> get item;

}
/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._self, this._then);

  final ProductDetailResponse _self;
  final $Res Function(ProductDetailResponse) _then;

/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? type = null,Object? recommendations = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ProductDetail,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,recommendations: null == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<ProductRecommendation>,
  ));
}
/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailCopyWith<$Res> get item {
  
  return $ProductDetailCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ProductDetailResponse implements ProductDetailResponse {
  const _ProductDetailResponse({required this.item, this.type = '', final  List<ProductRecommendation> recommendations = const []}): _recommendations = recommendations;
  factory _ProductDetailResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailResponseFromJson(json);

@override final  ProductDetail item;
@override@JsonKey() final  String type;
 final  List<ProductRecommendation> _recommendations;
@override@JsonKey() List<ProductRecommendation> get recommendations {
  if (_recommendations is EqualUnmodifiableListView) return _recommendations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendations);
}


/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailResponseCopyWith<_ProductDetailResponse> get copyWith => __$ProductDetailResponseCopyWithImpl<_ProductDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailResponse&&(identical(other.item, item) || other.item == item)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._recommendations, _recommendations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,type,const DeepCollectionEquality().hash(_recommendations));

@override
String toString() {
  return 'ProductDetailResponse(item: $item, type: $type, recommendations: $recommendations)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailResponseCopyWith<$Res> implements $ProductDetailResponseCopyWith<$Res> {
  factory _$ProductDetailResponseCopyWith(_ProductDetailResponse value, $Res Function(_ProductDetailResponse) _then) = __$ProductDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 ProductDetail item, String type, List<ProductRecommendation> recommendations
});


@override $ProductDetailCopyWith<$Res> get item;

}
/// @nodoc
class __$ProductDetailResponseCopyWithImpl<$Res>
    implements _$ProductDetailResponseCopyWith<$Res> {
  __$ProductDetailResponseCopyWithImpl(this._self, this._then);

  final _ProductDetailResponse _self;
  final $Res Function(_ProductDetailResponse) _then;

/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? type = null,Object? recommendations = null,}) {
  return _then(_ProductDetailResponse(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ProductDetail,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,recommendations: null == recommendations ? _self._recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<ProductRecommendation>,
  ));
}

/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailCopyWith<$Res> get item {
  
  return $ProductDetailCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// @nodoc
mixin _$VariationModel {

@JsonKey(name: 'name') String get name; String get type;@JsonKey(fromJson: _parseToString) String get min;@JsonKey(fromJson: _parseToString) String get max; String get required; List<VariationValue> get values;
/// Create a copy of VariationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariationModelCopyWith<VariationModel> get copyWith => _$VariationModelCopyWithImpl<VariationModel>(this as VariationModel, _$identity);

  /// Serializes this VariationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariationModel&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,min,max,required,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'VariationModel(name: $name, type: $type, min: $min, max: $max, required: $required, values: $values)';
}


}

/// @nodoc
abstract mixin class $VariationModelCopyWith<$Res>  {
  factory $VariationModelCopyWith(VariationModel value, $Res Function(VariationModel) _then) = _$VariationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name, String type,@JsonKey(fromJson: _parseToString) String min,@JsonKey(fromJson: _parseToString) String max, String required, List<VariationValue> values
});




}
/// @nodoc
class _$VariationModelCopyWithImpl<$Res>
    implements $VariationModelCopyWith<$Res> {
  _$VariationModelCopyWithImpl(this._self, this._then);

  final VariationModel _self;
  final $Res Function(VariationModel) _then;

/// Create a copy of VariationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? min = null,Object? max = null,Object? required = null,Object? values = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as String,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<VariationValue>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VariationModel implements VariationModel {
  const _VariationModel({@JsonKey(name: 'name') this.name = '', this.type = '', @JsonKey(fromJson: _parseToString) this.min = '0', @JsonKey(fromJson: _parseToString) this.max = '0', this.required = '', final  List<VariationValue> values = const []}): _values = values;
  factory _VariationModel.fromJson(Map<String, dynamic> json) => _$VariationModelFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey() final  String type;
@override@JsonKey(fromJson: _parseToString) final  String min;
@override@JsonKey(fromJson: _parseToString) final  String max;
@override@JsonKey() final  String required;
 final  List<VariationValue> _values;
@override@JsonKey() List<VariationValue> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of VariationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariationModelCopyWith<_VariationModel> get copyWith => __$VariationModelCopyWithImpl<_VariationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariationModel&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,min,max,required,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'VariationModel(name: $name, type: $type, min: $min, max: $max, required: $required, values: $values)';
}


}

/// @nodoc
abstract mixin class _$VariationModelCopyWith<$Res> implements $VariationModelCopyWith<$Res> {
  factory _$VariationModelCopyWith(_VariationModel value, $Res Function(_VariationModel) _then) = __$VariationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name, String type,@JsonKey(fromJson: _parseToString) String min,@JsonKey(fromJson: _parseToString) String max, String required, List<VariationValue> values
});




}
/// @nodoc
class __$VariationModelCopyWithImpl<$Res>
    implements _$VariationModelCopyWith<$Res> {
  __$VariationModelCopyWithImpl(this._self, this._then);

  final _VariationModel _self;
  final $Res Function(_VariationModel) _then;

/// Create a copy of VariationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? min = null,Object? max = null,Object? required = null,Object? values = null,}) {
  return _then(_VariationModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as String,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<VariationValue>,
  ));
}


}


/// @nodoc
mixin _$VariationValue {

@JsonKey(name: 'label') String get label;@JsonKey(name: 'optionPrice') String get optionPrice;
/// Create a copy of VariationValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariationValueCopyWith<VariationValue> get copyWith => _$VariationValueCopyWithImpl<VariationValue>(this as VariationValue, _$identity);

  /// Serializes this VariationValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariationValue&&(identical(other.label, label) || other.label == label)&&(identical(other.optionPrice, optionPrice) || other.optionPrice == optionPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,optionPrice);

@override
String toString() {
  return 'VariationValue(label: $label, optionPrice: $optionPrice)';
}


}

/// @nodoc
abstract mixin class $VariationValueCopyWith<$Res>  {
  factory $VariationValueCopyWith(VariationValue value, $Res Function(VariationValue) _then) = _$VariationValueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'optionPrice') String optionPrice
});




}
/// @nodoc
class _$VariationValueCopyWithImpl<$Res>
    implements $VariationValueCopyWith<$Res> {
  _$VariationValueCopyWithImpl(this._self, this._then);

  final VariationValue _self;
  final $Res Function(VariationValue) _then;

/// Create a copy of VariationValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? optionPrice = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,optionPrice: null == optionPrice ? _self.optionPrice : optionPrice // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VariationValue implements VariationValue {
  const _VariationValue({@JsonKey(name: 'label') this.label = '', @JsonKey(name: 'optionPrice') this.optionPrice = '0'});
  factory _VariationValue.fromJson(Map<String, dynamic> json) => _$VariationValueFromJson(json);

@override@JsonKey(name: 'label') final  String label;
@override@JsonKey(name: 'optionPrice') final  String optionPrice;

/// Create a copy of VariationValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariationValueCopyWith<_VariationValue> get copyWith => __$VariationValueCopyWithImpl<_VariationValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariationValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariationValue&&(identical(other.label, label) || other.label == label)&&(identical(other.optionPrice, optionPrice) || other.optionPrice == optionPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,optionPrice);

@override
String toString() {
  return 'VariationValue(label: $label, optionPrice: $optionPrice)';
}


}

/// @nodoc
abstract mixin class _$VariationValueCopyWith<$Res> implements $VariationValueCopyWith<$Res> {
  factory _$VariationValueCopyWith(_VariationValue value, $Res Function(_VariationValue) _then) = __$VariationValueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'optionPrice') String optionPrice
});




}
/// @nodoc
class __$VariationValueCopyWithImpl<$Res>
    implements _$VariationValueCopyWith<$Res> {
  __$VariationValueCopyWithImpl(this._self, this._then);

  final _VariationValue _self;
  final $Res Function(_VariationValue) _then;

/// Create a copy of VariationValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? optionPrice = null,}) {
  return _then(_VariationValue(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,optionPrice: null == optionPrice ? _self.optionPrice : optionPrice // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductDetail {

 int get id;@JsonKey(name: 'store_id') int get storeId;@JsonKey(name: 'store_name') String get storeName;@JsonKey(name: 'store_image_url') String get storeImageUrl; String get name; String get description;@JsonKey(name: 'image_url') String get imageUrl; List<String> get gallery; int get price; int get tax;@JsonKey(name: 'tax_type') String get taxType; int get discount;@JsonKey(name: 'discount_type') String get discountType; bool get veg; int get stock;@JsonKey(name: 'unit_id') int get unitId;@JsonKey(name: 'order_count') int get orderCount;@JsonKey(name: 'avg_rating') double get avgRating;@JsonKey(name: 'rating_count') int get ratingCount; String get slug; bool get recommended; bool get organic;@JsonKey(name: 'maximum_cart_quantity') int? get maximumCartQuantity;@JsonKey(name: 'add_ons') List<dynamic> get addOns;@JsonKey(name: 'variations') List<VariationModel> get variations;@JsonKey(name: 'choice_options') List<ChoiceOption> get choiceOptions; List<String> get attributes;@JsonKey(name: 'food_variations') List<dynamic> get foodVariations; List<Nutrition> get nutritions;@JsonKey(name: 'is_favorite') bool get isFavorite;
/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailCopyWith<ProductDetail> get copyWith => _$ProductDetailCopyWithImpl<ProductDetail>(this as ProductDetail, _$identity);

  /// Serializes this ProductDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeImageUrl, storeImageUrl) || other.storeImageUrl == storeImageUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.gallery, gallery)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.recommended, recommended) || other.recommended == recommended)&&(identical(other.organic, organic) || other.organic == organic)&&(identical(other.maximumCartQuantity, maximumCartQuantity) || other.maximumCartQuantity == maximumCartQuantity)&&const DeepCollectionEquality().equals(other.addOns, addOns)&&const DeepCollectionEquality().equals(other.variations, variations)&&const DeepCollectionEquality().equals(other.choiceOptions, choiceOptions)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&const DeepCollectionEquality().equals(other.foodVariations, foodVariations)&&const DeepCollectionEquality().equals(other.nutritions, nutritions)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,storeId,storeName,storeImageUrl,name,description,imageUrl,const DeepCollectionEquality().hash(gallery),price,tax,taxType,discount,discountType,veg,stock,unitId,orderCount,avgRating,ratingCount,slug,recommended,organic,maximumCartQuantity,const DeepCollectionEquality().hash(addOns),const DeepCollectionEquality().hash(variations),const DeepCollectionEquality().hash(choiceOptions),const DeepCollectionEquality().hash(attributes),const DeepCollectionEquality().hash(foodVariations),const DeepCollectionEquality().hash(nutritions),isFavorite]);

@override
String toString() {
  return 'ProductDetail(id: $id, storeId: $storeId, storeName: $storeName, storeImageUrl: $storeImageUrl, name: $name, description: $description, imageUrl: $imageUrl, gallery: $gallery, price: $price, tax: $tax, taxType: $taxType, discount: $discount, discountType: $discountType, veg: $veg, stock: $stock, unitId: $unitId, orderCount: $orderCount, avgRating: $avgRating, ratingCount: $ratingCount, slug: $slug, recommended: $recommended, organic: $organic, maximumCartQuantity: $maximumCartQuantity, addOns: $addOns, variations: $variations, choiceOptions: $choiceOptions, attributes: $attributes, foodVariations: $foodVariations, nutritions: $nutritions, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $ProductDetailCopyWith<$Res>  {
  factory $ProductDetailCopyWith(ProductDetail value, $Res Function(ProductDetail) _then) = _$ProductDetailCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName,@JsonKey(name: 'store_image_url') String storeImageUrl, String name, String description,@JsonKey(name: 'image_url') String imageUrl, List<String> gallery, int price, int tax,@JsonKey(name: 'tax_type') String taxType, int discount,@JsonKey(name: 'discount_type') String discountType, bool veg, int stock,@JsonKey(name: 'unit_id') int unitId,@JsonKey(name: 'order_count') int orderCount,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'rating_count') int ratingCount, String slug, bool recommended, bool organic,@JsonKey(name: 'maximum_cart_quantity') int? maximumCartQuantity,@JsonKey(name: 'add_ons') List<dynamic> addOns,@JsonKey(name: 'variations') List<VariationModel> variations,@JsonKey(name: 'choice_options') List<ChoiceOption> choiceOptions, List<String> attributes,@JsonKey(name: 'food_variations') List<dynamic> foodVariations, List<Nutrition> nutritions,@JsonKey(name: 'is_favorite') bool isFavorite
});




}
/// @nodoc
class _$ProductDetailCopyWithImpl<$Res>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._self, this._then);

  final ProductDetail _self;
  final $Res Function(ProductDetail) _then;

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? storeName = null,Object? storeImageUrl = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? gallery = null,Object? price = null,Object? tax = null,Object? taxType = null,Object? discount = null,Object? discountType = null,Object? veg = null,Object? stock = null,Object? unitId = null,Object? orderCount = null,Object? avgRating = null,Object? ratingCount = null,Object? slug = null,Object? recommended = null,Object? organic = null,Object? maximumCartQuantity = freezed,Object? addOns = null,Object? variations = null,Object? choiceOptions = null,Object? attributes = null,Object? foodVariations = null,Object? nutritions = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,storeImageUrl: null == storeImageUrl ? _self.storeImageUrl : storeImageUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,gallery: null == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,tax: null == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int,taxType: null == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String,veg: null == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as bool,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,recommended: null == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as bool,organic: null == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as bool,maximumCartQuantity: freezed == maximumCartQuantity ? _self.maximumCartQuantity : maximumCartQuantity // ignore: cast_nullable_to_non_nullable
as int?,addOns: null == addOns ? _self.addOns : addOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>,variations: null == variations ? _self.variations : variations // ignore: cast_nullable_to_non_nullable
as List<VariationModel>,choiceOptions: null == choiceOptions ? _self.choiceOptions : choiceOptions // ignore: cast_nullable_to_non_nullable
as List<ChoiceOption>,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<String>,foodVariations: null == foodVariations ? _self.foodVariations : foodVariations // ignore: cast_nullable_to_non_nullable
as List<dynamic>,nutritions: null == nutritions ? _self.nutritions : nutritions // ignore: cast_nullable_to_non_nullable
as List<Nutrition>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductDetail implements ProductDetail {
  const _ProductDetail({this.id = 0, @JsonKey(name: 'store_id') this.storeId = 0, @JsonKey(name: 'store_name') this.storeName = '', @JsonKey(name: 'store_image_url') this.storeImageUrl = '', this.name = '', this.description = '', @JsonKey(name: 'image_url') this.imageUrl = '', final  List<String> gallery = const [], this.price = 0, this.tax = 0, @JsonKey(name: 'tax_type') this.taxType = '', this.discount = 0, @JsonKey(name: 'discount_type') this.discountType = '', this.veg = false, this.stock = 0, @JsonKey(name: 'unit_id') this.unitId = 0, @JsonKey(name: 'order_count') this.orderCount = 0, @JsonKey(name: 'avg_rating') this.avgRating = 0.0, @JsonKey(name: 'rating_count') this.ratingCount = 0, this.slug = '', this.recommended = false, this.organic = false, @JsonKey(name: 'maximum_cart_quantity') this.maximumCartQuantity, @JsonKey(name: 'add_ons') final  List<dynamic> addOns = const [], @JsonKey(name: 'variations') final  List<VariationModel> variations = const [], @JsonKey(name: 'choice_options') final  List<ChoiceOption> choiceOptions = const [], final  List<String> attributes = const [], @JsonKey(name: 'food_variations') final  List<dynamic> foodVariations = const [], final  List<Nutrition> nutritions = const [], @JsonKey(name: 'is_favorite') this.isFavorite = false}): _gallery = gallery,_addOns = addOns,_variations = variations,_choiceOptions = choiceOptions,_attributes = attributes,_foodVariations = foodVariations,_nutritions = nutritions;
  factory _ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey(name: 'store_id') final  int storeId;
@override@JsonKey(name: 'store_name') final  String storeName;
@override@JsonKey(name: 'store_image_url') final  String storeImageUrl;
@override@JsonKey() final  String name;
@override@JsonKey() final  String description;
@override@JsonKey(name: 'image_url') final  String imageUrl;
 final  List<String> _gallery;
@override@JsonKey() List<String> get gallery {
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gallery);
}

@override@JsonKey() final  int price;
@override@JsonKey() final  int tax;
@override@JsonKey(name: 'tax_type') final  String taxType;
@override@JsonKey() final  int discount;
@override@JsonKey(name: 'discount_type') final  String discountType;
@override@JsonKey() final  bool veg;
@override@JsonKey() final  int stock;
@override@JsonKey(name: 'unit_id') final  int unitId;
@override@JsonKey(name: 'order_count') final  int orderCount;
@override@JsonKey(name: 'avg_rating') final  double avgRating;
@override@JsonKey(name: 'rating_count') final  int ratingCount;
@override@JsonKey() final  String slug;
@override@JsonKey() final  bool recommended;
@override@JsonKey() final  bool organic;
@override@JsonKey(name: 'maximum_cart_quantity') final  int? maximumCartQuantity;
 final  List<dynamic> _addOns;
@override@JsonKey(name: 'add_ons') List<dynamic> get addOns {
  if (_addOns is EqualUnmodifiableListView) return _addOns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addOns);
}

 final  List<VariationModel> _variations;
@override@JsonKey(name: 'variations') List<VariationModel> get variations {
  if (_variations is EqualUnmodifiableListView) return _variations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variations);
}

 final  List<ChoiceOption> _choiceOptions;
@override@JsonKey(name: 'choice_options') List<ChoiceOption> get choiceOptions {
  if (_choiceOptions is EqualUnmodifiableListView) return _choiceOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choiceOptions);
}

 final  List<String> _attributes;
@override@JsonKey() List<String> get attributes {
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attributes);
}

 final  List<dynamic> _foodVariations;
@override@JsonKey(name: 'food_variations') List<dynamic> get foodVariations {
  if (_foodVariations is EqualUnmodifiableListView) return _foodVariations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foodVariations);
}

 final  List<Nutrition> _nutritions;
@override@JsonKey() List<Nutrition> get nutritions {
  if (_nutritions is EqualUnmodifiableListView) return _nutritions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nutritions);
}

@override@JsonKey(name: 'is_favorite') final  bool isFavorite;

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailCopyWith<_ProductDetail> get copyWith => __$ProductDetailCopyWithImpl<_ProductDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeImageUrl, storeImageUrl) || other.storeImageUrl == storeImageUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._gallery, _gallery)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.recommended, recommended) || other.recommended == recommended)&&(identical(other.organic, organic) || other.organic == organic)&&(identical(other.maximumCartQuantity, maximumCartQuantity) || other.maximumCartQuantity == maximumCartQuantity)&&const DeepCollectionEquality().equals(other._addOns, _addOns)&&const DeepCollectionEquality().equals(other._variations, _variations)&&const DeepCollectionEquality().equals(other._choiceOptions, _choiceOptions)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&const DeepCollectionEquality().equals(other._foodVariations, _foodVariations)&&const DeepCollectionEquality().equals(other._nutritions, _nutritions)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,storeId,storeName,storeImageUrl,name,description,imageUrl,const DeepCollectionEquality().hash(_gallery),price,tax,taxType,discount,discountType,veg,stock,unitId,orderCount,avgRating,ratingCount,slug,recommended,organic,maximumCartQuantity,const DeepCollectionEquality().hash(_addOns),const DeepCollectionEquality().hash(_variations),const DeepCollectionEquality().hash(_choiceOptions),const DeepCollectionEquality().hash(_attributes),const DeepCollectionEquality().hash(_foodVariations),const DeepCollectionEquality().hash(_nutritions),isFavorite]);

@override
String toString() {
  return 'ProductDetail(id: $id, storeId: $storeId, storeName: $storeName, storeImageUrl: $storeImageUrl, name: $name, description: $description, imageUrl: $imageUrl, gallery: $gallery, price: $price, tax: $tax, taxType: $taxType, discount: $discount, discountType: $discountType, veg: $veg, stock: $stock, unitId: $unitId, orderCount: $orderCount, avgRating: $avgRating, ratingCount: $ratingCount, slug: $slug, recommended: $recommended, organic: $organic, maximumCartQuantity: $maximumCartQuantity, addOns: $addOns, variations: $variations, choiceOptions: $choiceOptions, attributes: $attributes, foodVariations: $foodVariations, nutritions: $nutritions, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailCopyWith<$Res> implements $ProductDetailCopyWith<$Res> {
  factory _$ProductDetailCopyWith(_ProductDetail value, $Res Function(_ProductDetail) _then) = __$ProductDetailCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName,@JsonKey(name: 'store_image_url') String storeImageUrl, String name, String description,@JsonKey(name: 'image_url') String imageUrl, List<String> gallery, int price, int tax,@JsonKey(name: 'tax_type') String taxType, int discount,@JsonKey(name: 'discount_type') String discountType, bool veg, int stock,@JsonKey(name: 'unit_id') int unitId,@JsonKey(name: 'order_count') int orderCount,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'rating_count') int ratingCount, String slug, bool recommended, bool organic,@JsonKey(name: 'maximum_cart_quantity') int? maximumCartQuantity,@JsonKey(name: 'add_ons') List<dynamic> addOns,@JsonKey(name: 'variations') List<VariationModel> variations,@JsonKey(name: 'choice_options') List<ChoiceOption> choiceOptions, List<String> attributes,@JsonKey(name: 'food_variations') List<dynamic> foodVariations, List<Nutrition> nutritions,@JsonKey(name: 'is_favorite') bool isFavorite
});




}
/// @nodoc
class __$ProductDetailCopyWithImpl<$Res>
    implements _$ProductDetailCopyWith<$Res> {
  __$ProductDetailCopyWithImpl(this._self, this._then);

  final _ProductDetail _self;
  final $Res Function(_ProductDetail) _then;

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? storeName = null,Object? storeImageUrl = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? gallery = null,Object? price = null,Object? tax = null,Object? taxType = null,Object? discount = null,Object? discountType = null,Object? veg = null,Object? stock = null,Object? unitId = null,Object? orderCount = null,Object? avgRating = null,Object? ratingCount = null,Object? slug = null,Object? recommended = null,Object? organic = null,Object? maximumCartQuantity = freezed,Object? addOns = null,Object? variations = null,Object? choiceOptions = null,Object? attributes = null,Object? foodVariations = null,Object? nutritions = null,Object? isFavorite = null,}) {
  return _then(_ProductDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,storeImageUrl: null == storeImageUrl ? _self.storeImageUrl : storeImageUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,gallery: null == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,tax: null == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int,taxType: null == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String,veg: null == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as bool,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,recommended: null == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as bool,organic: null == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as bool,maximumCartQuantity: freezed == maximumCartQuantity ? _self.maximumCartQuantity : maximumCartQuantity // ignore: cast_nullable_to_non_nullable
as int?,addOns: null == addOns ? _self._addOns : addOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>,variations: null == variations ? _self._variations : variations // ignore: cast_nullable_to_non_nullable
as List<VariationModel>,choiceOptions: null == choiceOptions ? _self._choiceOptions : choiceOptions // ignore: cast_nullable_to_non_nullable
as List<ChoiceOption>,attributes: null == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<String>,foodVariations: null == foodVariations ? _self._foodVariations : foodVariations // ignore: cast_nullable_to_non_nullable
as List<dynamic>,nutritions: null == nutritions ? _self._nutritions : nutritions // ignore: cast_nullable_to_non_nullable
as List<Nutrition>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Variation {

 String get type; int get price;
/// Create a copy of Variation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariationCopyWith<Variation> get copyWith => _$VariationCopyWithImpl<Variation>(this as Variation, _$identity);

  /// Serializes this Variation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Variation&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,price);

@override
String toString() {
  return 'Variation(type: $type, price: $price)';
}


}

/// @nodoc
abstract mixin class $VariationCopyWith<$Res>  {
  factory $VariationCopyWith(Variation value, $Res Function(Variation) _then) = _$VariationCopyWithImpl;
@useResult
$Res call({
 String type, int price
});




}
/// @nodoc
class _$VariationCopyWithImpl<$Res>
    implements $VariationCopyWith<$Res> {
  _$VariationCopyWithImpl(this._self, this._then);

  final Variation _self;
  final $Res Function(Variation) _then;

/// Create a copy of Variation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? price = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Variation implements Variation {
  const _Variation({this.type = '', this.price = 0});
  factory _Variation.fromJson(Map<String, dynamic> json) => _$VariationFromJson(json);

@override@JsonKey() final  String type;
@override@JsonKey() final  int price;

/// Create a copy of Variation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariationCopyWith<_Variation> get copyWith => __$VariationCopyWithImpl<_Variation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Variation&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,price);

@override
String toString() {
  return 'Variation(type: $type, price: $price)';
}


}

/// @nodoc
abstract mixin class _$VariationCopyWith<$Res> implements $VariationCopyWith<$Res> {
  factory _$VariationCopyWith(_Variation value, $Res Function(_Variation) _then) = __$VariationCopyWithImpl;
@override @useResult
$Res call({
 String type, int price
});




}
/// @nodoc
class __$VariationCopyWithImpl<$Res>
    implements _$VariationCopyWith<$Res> {
  __$VariationCopyWithImpl(this._self, this._then);

  final _Variation _self;
  final $Res Function(_Variation) _then;

/// Create a copy of Variation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? price = null,}) {
  return _then(_Variation(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ChoiceOption {

 String get name; String get title; List<String> get options;
/// Create a copy of ChoiceOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoiceOptionCopyWith<ChoiceOption> get copyWith => _$ChoiceOptionCopyWithImpl<ChoiceOption>(this as ChoiceOption, _$identity);

  /// Serializes this ChoiceOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoiceOption&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'ChoiceOption(name: $name, title: $title, options: $options)';
}


}

/// @nodoc
abstract mixin class $ChoiceOptionCopyWith<$Res>  {
  factory $ChoiceOptionCopyWith(ChoiceOption value, $Res Function(ChoiceOption) _then) = _$ChoiceOptionCopyWithImpl;
@useResult
$Res call({
 String name, String title, List<String> options
});




}
/// @nodoc
class _$ChoiceOptionCopyWithImpl<$Res>
    implements $ChoiceOptionCopyWith<$Res> {
  _$ChoiceOptionCopyWithImpl(this._self, this._then);

  final ChoiceOption _self;
  final $Res Function(ChoiceOption) _then;

/// Create a copy of ChoiceOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? title = null,Object? options = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChoiceOption implements ChoiceOption {
  const _ChoiceOption({this.name = '', this.title = '', final  List<String> options = const []}): _options = options;
  factory _ChoiceOption.fromJson(Map<String, dynamic> json) => _$ChoiceOptionFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String title;
 final  List<String> _options;
@override@JsonKey() List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of ChoiceOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChoiceOptionCopyWith<_ChoiceOption> get copyWith => __$ChoiceOptionCopyWithImpl<_ChoiceOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChoiceOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChoiceOption&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'ChoiceOption(name: $name, title: $title, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ChoiceOptionCopyWith<$Res> implements $ChoiceOptionCopyWith<$Res> {
  factory _$ChoiceOptionCopyWith(_ChoiceOption value, $Res Function(_ChoiceOption) _then) = __$ChoiceOptionCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, List<String> options
});




}
/// @nodoc
class __$ChoiceOptionCopyWithImpl<$Res>
    implements _$ChoiceOptionCopyWith<$Res> {
  __$ChoiceOptionCopyWithImpl(this._self, this._then);

  final _ChoiceOption _self;
  final $Res Function(_ChoiceOption) _then;

/// Create a copy of ChoiceOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? options = null,}) {
  return _then(_ChoiceOption(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ProductRecommendation {

 int get id; String get name;@JsonKey(name: 'image_url') String get imageUrl; int get price;
/// Create a copy of ProductRecommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductRecommendationCopyWith<ProductRecommendation> get copyWith => _$ProductRecommendationCopyWithImpl<ProductRecommendation>(this as ProductRecommendation, _$identity);

  /// Serializes this ProductRecommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductRecommendation&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price);

@override
String toString() {
  return 'ProductRecommendation(id: $id, name: $name, imageUrl: $imageUrl, price: $price)';
}


}

/// @nodoc
abstract mixin class $ProductRecommendationCopyWith<$Res>  {
  factory $ProductRecommendationCopyWith(ProductRecommendation value, $Res Function(ProductRecommendation) _then) = _$ProductRecommendationCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, int price
});




}
/// @nodoc
class _$ProductRecommendationCopyWithImpl<$Res>
    implements $ProductRecommendationCopyWith<$Res> {
  _$ProductRecommendationCopyWithImpl(this._self, this._then);

  final ProductRecommendation _self;
  final $Res Function(ProductRecommendation) _then;

/// Create a copy of ProductRecommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductRecommendation implements ProductRecommendation {
  const _ProductRecommendation({this.id = 0, this.name = '', @JsonKey(name: 'image_url') this.imageUrl = '', this.price = 0});
  factory _ProductRecommendation.fromJson(Map<String, dynamic> json) => _$ProductRecommendationFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey() final  int price;

/// Create a copy of ProductRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductRecommendationCopyWith<_ProductRecommendation> get copyWith => __$ProductRecommendationCopyWithImpl<_ProductRecommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductRecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductRecommendation&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price);

@override
String toString() {
  return 'ProductRecommendation(id: $id, name: $name, imageUrl: $imageUrl, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ProductRecommendationCopyWith<$Res> implements $ProductRecommendationCopyWith<$Res> {
  factory _$ProductRecommendationCopyWith(_ProductRecommendation value, $Res Function(_ProductRecommendation) _then) = __$ProductRecommendationCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, int price
});




}
/// @nodoc
class __$ProductRecommendationCopyWithImpl<$Res>
    implements _$ProductRecommendationCopyWith<$Res> {
  __$ProductRecommendationCopyWithImpl(this._self, this._then);

  final _ProductRecommendation _self;
  final $Res Function(_ProductRecommendation) _then;

/// Create a copy of ProductRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,}) {
  return _then(_ProductRecommendation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ImageUrl {

 String get img; String get storage;
/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageUrlCopyWith<ImageUrl> get copyWith => _$ImageUrlCopyWithImpl<ImageUrl>(this as ImageUrl, _$identity);

  /// Serializes this ImageUrl to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageUrl&&(identical(other.img, img) || other.img == img)&&(identical(other.storage, storage) || other.storage == storage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,img,storage);

@override
String toString() {
  return 'ImageUrl(img: $img, storage: $storage)';
}


}

/// @nodoc
abstract mixin class $ImageUrlCopyWith<$Res>  {
  factory $ImageUrlCopyWith(ImageUrl value, $Res Function(ImageUrl) _then) = _$ImageUrlCopyWithImpl;
@useResult
$Res call({
 String img, String storage
});




}
/// @nodoc
class _$ImageUrlCopyWithImpl<$Res>
    implements $ImageUrlCopyWith<$Res> {
  _$ImageUrlCopyWithImpl(this._self, this._then);

  final ImageUrl _self;
  final $Res Function(ImageUrl) _then;

/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? img = null,Object? storage = null,}) {
  return _then(_self.copyWith(
img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImageUrl implements ImageUrl {
  const _ImageUrl({this.img = '', this.storage = ''});
  factory _ImageUrl.fromJson(Map<String, dynamic> json) => _$ImageUrlFromJson(json);

@override@JsonKey() final  String img;
@override@JsonKey() final  String storage;

/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageUrlCopyWith<_ImageUrl> get copyWith => __$ImageUrlCopyWithImpl<_ImageUrl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageUrlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageUrl&&(identical(other.img, img) || other.img == img)&&(identical(other.storage, storage) || other.storage == storage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,img,storage);

@override
String toString() {
  return 'ImageUrl(img: $img, storage: $storage)';
}


}

/// @nodoc
abstract mixin class _$ImageUrlCopyWith<$Res> implements $ImageUrlCopyWith<$Res> {
  factory _$ImageUrlCopyWith(_ImageUrl value, $Res Function(_ImageUrl) _then) = __$ImageUrlCopyWithImpl;
@override @useResult
$Res call({
 String img, String storage
});




}
/// @nodoc
class __$ImageUrlCopyWithImpl<$Res>
    implements _$ImageUrlCopyWith<$Res> {
  __$ImageUrlCopyWithImpl(this._self, this._then);

  final _ImageUrl _self;
  final $Res Function(_ImageUrl) _then;

/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? img = null,Object? storage = null,}) {
  return _then(_ImageUrl(
img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Nutrition {

 int get id; String get nutrition;
/// Create a copy of Nutrition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionCopyWith<Nutrition> get copyWith => _$NutritionCopyWithImpl<Nutrition>(this as Nutrition, _$identity);

  /// Serializes this Nutrition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nutrition&&(identical(other.id, id) || other.id == id)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nutrition);

@override
String toString() {
  return 'Nutrition(id: $id, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class $NutritionCopyWith<$Res>  {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) _then) = _$NutritionCopyWithImpl;
@useResult
$Res call({
 int id, String nutrition
});




}
/// @nodoc
class _$NutritionCopyWithImpl<$Res>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._self, this._then);

  final Nutrition _self;
  final $Res Function(Nutrition) _then;

/// Create a copy of Nutrition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nutrition = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Nutrition implements Nutrition {
  const _Nutrition({this.id = 0, this.nutrition = ''});
  factory _Nutrition.fromJson(Map<String, dynamic> json) => _$NutritionFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String nutrition;

/// Create a copy of Nutrition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionCopyWith<_Nutrition> get copyWith => __$NutritionCopyWithImpl<_Nutrition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nutrition&&(identical(other.id, id) || other.id == id)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nutrition);

@override
String toString() {
  return 'Nutrition(id: $id, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class _$NutritionCopyWith<$Res> implements $NutritionCopyWith<$Res> {
  factory _$NutritionCopyWith(_Nutrition value, $Res Function(_Nutrition) _then) = __$NutritionCopyWithImpl;
@override @useResult
$Res call({
 int id, String nutrition
});




}
/// @nodoc
class __$NutritionCopyWithImpl<$Res>
    implements _$NutritionCopyWith<$Res> {
  __$NutritionCopyWithImpl(this._self, this._then);

  final _Nutrition _self;
  final $Res Function(_Nutrition) _then;

/// Create a copy of Nutrition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nutrition = null,}) {
  return _then(_Nutrition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
