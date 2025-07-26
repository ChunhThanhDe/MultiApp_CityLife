// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/wishlist_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WishlistResponse {

@JsonKey(name: "item") List<WishlistItem>? get item;@JsonKey(name: "store") List<WishlistStore>? get store;
/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistResponseCopyWith<WishlistResponse> get copyWith => _$WishlistResponseCopyWithImpl<WishlistResponse>(this as WishlistResponse, _$identity);

  /// Serializes this WishlistResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistResponse&&const DeepCollectionEquality().equals(other.item, item)&&const DeepCollectionEquality().equals(other.store, store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item),const DeepCollectionEquality().hash(store));

@override
String toString() {
  return 'WishlistResponse(item: $item, store: $store)';
}


}

/// @nodoc
abstract mixin class $WishlistResponseCopyWith<$Res>  {
  factory $WishlistResponseCopyWith(WishlistResponse value, $Res Function(WishlistResponse) _then) = _$WishlistResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "item") List<WishlistItem>? item,@JsonKey(name: "store") List<WishlistStore>? store
});




}
/// @nodoc
class _$WishlistResponseCopyWithImpl<$Res>
    implements $WishlistResponseCopyWith<$Res> {
  _$WishlistResponseCopyWithImpl(this._self, this._then);

  final WishlistResponse _self;
  final $Res Function(WishlistResponse) _then;

/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = freezed,Object? store = freezed,}) {
  return _then(_self.copyWith(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as List<WishlistStore>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WishlistResponse implements WishlistResponse {
  const _WishlistResponse({@JsonKey(name: "item") final  List<WishlistItem>? item, @JsonKey(name: "store") final  List<WishlistStore>? store}): _item = item,_store = store;
  factory _WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);

 final  List<WishlistItem>? _item;
@override@JsonKey(name: "item") List<WishlistItem>? get item {
  final value = _item;
  if (value == null) return null;
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WishlistStore>? _store;
@override@JsonKey(name: "store") List<WishlistStore>? get store {
  final value = _store;
  if (value == null) return null;
  if (_store is EqualUnmodifiableListView) return _store;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistResponseCopyWith<_WishlistResponse> get copyWith => __$WishlistResponseCopyWithImpl<_WishlistResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistResponse&&const DeepCollectionEquality().equals(other._item, _item)&&const DeepCollectionEquality().equals(other._store, _store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item),const DeepCollectionEquality().hash(_store));

@override
String toString() {
  return 'WishlistResponse(item: $item, store: $store)';
}


}

/// @nodoc
abstract mixin class _$WishlistResponseCopyWith<$Res> implements $WishlistResponseCopyWith<$Res> {
  factory _$WishlistResponseCopyWith(_WishlistResponse value, $Res Function(_WishlistResponse) _then) = __$WishlistResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "item") List<WishlistItem>? item,@JsonKey(name: "store") List<WishlistStore>? store
});




}
/// @nodoc
class __$WishlistResponseCopyWithImpl<$Res>
    implements _$WishlistResponseCopyWith<$Res> {
  __$WishlistResponseCopyWithImpl(this._self, this._then);

  final _WishlistResponse _self;
  final $Res Function(_WishlistResponse) _then;

/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = freezed,Object? store = freezed,}) {
  return _then(_WishlistResponse(
item: freezed == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>?,store: freezed == store ? _self._store : store // ignore: cast_nullable_to_non_nullable
as List<WishlistStore>?,
  ));
}


}

WishlistItem _$WishlistItemFromJson(
  Map<String, dynamic> json
) {
    return _WistlistItem.fromJson(
      json
    );
}

/// @nodoc
mixin _$WishlistItem {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "description") String? get description;@JsonKey(name: "image") String? get image;@JsonKey(name: "category_id") int? get categoryId;@JsonKey(name: "category_ids") List<CategoryId>? get categoryIds;@JsonKey(name: "variations") List<Variation>? get variations;@JsonKey(name: "add_ons") List<dynamic>? get addOns;@JsonKey(name: "attributes") List<String>? get attributes;@JsonKey(name: "choice_options") List<ChoiceOption>? get choiceOptions;@JsonKey(name: "price") int? get price;@JsonKey(name: "tax") int? get tax;@JsonKey(name: "tax_type") String? get taxType;@JsonKey(name: "discount") int? get discount;@JsonKey(name: "discount_type") String? get discountType;@JsonKey(name: "available_time_starts") String? get availableTimeStarts;@JsonKey(name: "available_time_ends") String? get availableTimeEnds;@JsonKey(name: "veg") int? get veg;@JsonKey(name: "status") int? get status;@JsonKey(name: "store_id") int? get storeId;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "order_count") int? get orderCount;@JsonKey(name: "avg_rating") int? get avgRating;@JsonKey(name: "rating_count") int? get ratingCount;@JsonKey(name: "module_id") int? get moduleId;@JsonKey(name: "stock") int? get stock;@JsonKey(name: "unit_id") int? get unitId;@JsonKey(name: "images") List<Image>? get images;@JsonKey(name: "food_variations") dynamic get foodVariations;@JsonKey(name: "slug") String? get slug;@JsonKey(name: "recommended") int? get recommended;@JsonKey(name: "organic") int? get organic;@JsonKey(name: "maximum_cart_quantity") dynamic get maximumCartQuantity;@JsonKey(name: "is_approved") int? get isApproved;@JsonKey(name: "is_halal") int? get isHalal;@JsonKey(name: "store_name") String? get storeName;@JsonKey(name: "is_campaign") int? get isCampaign;@JsonKey(name: "module_type") String? get moduleType;@JsonKey(name: "zone_id") int? get zoneId;@JsonKey(name: "flash_sale") int? get flashSale;@JsonKey(name: "store_discount") int? get storeDiscount;@JsonKey(name: "schedule_order") bool? get scheduleOrder;@JsonKey(name: "min_delivery_time") int? get minDeliveryTime;@JsonKey(name: "max_delivery_time") int? get maxDeliveryTime;@JsonKey(name: "common_condition_id") int? get commonConditionId;@JsonKey(name: "brand_id") int? get brandId;@JsonKey(name: "is_basic") int? get isBasic;@JsonKey(name: "is_prescription_required") int? get isPrescriptionRequired;@JsonKey(name: "halal_tag_status") int? get halalTagStatus;@JsonKey(name: "nutritions_name") List<dynamic>? get nutritionsName;@JsonKey(name: "allergies_name") List<dynamic>? get allergiesName;@JsonKey(name: "generic_name") List<dynamic>? get genericName;@JsonKey(name: "unit_type") dynamic get unitType;@JsonKey(name: "image_full_url") String? get imageFullUrl;@JsonKey(name: "images_full_url") List<String>? get imagesFullUrl;@JsonKey(name: "storage") List<StorageElement>? get storage;@JsonKey(name: "translations") List<dynamic>? get translations;@JsonKey(name: "module") Module? get module;@JsonKey(name: "ecommerce_item_details") dynamic get ecommerceItemDetails;@JsonKey(name: "unit") dynamic get unit;
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemCopyWith<WishlistItem> get copyWith => _$WishlistItemCopyWithImpl<WishlistItem>(this as WishlistItem, _$identity);

  /// Serializes this WishlistItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other.categoryIds, categoryIds)&&const DeepCollectionEquality().equals(other.variations, variations)&&const DeepCollectionEquality().equals(other.addOns, addOns)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&const DeepCollectionEquality().equals(other.choiceOptions, choiceOptions)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.availableTimeStarts, availableTimeStarts) || other.availableTimeStarts == availableTimeStarts)&&(identical(other.availableTimeEnds, availableTimeEnds) || other.availableTimeEnds == availableTimeEnds)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.foodVariations, foodVariations)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.recommended, recommended) || other.recommended == recommended)&&(identical(other.organic, organic) || other.organic == organic)&&const DeepCollectionEquality().equals(other.maximumCartQuantity, maximumCartQuantity)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isHalal, isHalal) || other.isHalal == isHalal)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.isCampaign, isCampaign) || other.isCampaign == isCampaign)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.flashSale, flashSale) || other.flashSale == flashSale)&&(identical(other.storeDiscount, storeDiscount) || other.storeDiscount == storeDiscount)&&(identical(other.scheduleOrder, scheduleOrder) || other.scheduleOrder == scheduleOrder)&&(identical(other.minDeliveryTime, minDeliveryTime) || other.minDeliveryTime == minDeliveryTime)&&(identical(other.maxDeliveryTime, maxDeliveryTime) || other.maxDeliveryTime == maxDeliveryTime)&&(identical(other.commonConditionId, commonConditionId) || other.commonConditionId == commonConditionId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.isBasic, isBasic) || other.isBasic == isBasic)&&(identical(other.isPrescriptionRequired, isPrescriptionRequired) || other.isPrescriptionRequired == isPrescriptionRequired)&&(identical(other.halalTagStatus, halalTagStatus) || other.halalTagStatus == halalTagStatus)&&const DeepCollectionEquality().equals(other.nutritionsName, nutritionsName)&&const DeepCollectionEquality().equals(other.allergiesName, allergiesName)&&const DeepCollectionEquality().equals(other.genericName, genericName)&&const DeepCollectionEquality().equals(other.unitType, unitType)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&const DeepCollectionEquality().equals(other.imagesFullUrl, imagesFullUrl)&&const DeepCollectionEquality().equals(other.storage, storage)&&const DeepCollectionEquality().equals(other.translations, translations)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other.ecommerceItemDetails, ecommerceItemDetails)&&const DeepCollectionEquality().equals(other.unit, unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,image,categoryId,const DeepCollectionEquality().hash(categoryIds),const DeepCollectionEquality().hash(variations),const DeepCollectionEquality().hash(addOns),const DeepCollectionEquality().hash(attributes),const DeepCollectionEquality().hash(choiceOptions),price,tax,taxType,discount,discountType,availableTimeStarts,availableTimeEnds,veg,status,storeId,createdAt,updatedAt,orderCount,avgRating,ratingCount,moduleId,stock,unitId,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(foodVariations),slug,recommended,organic,const DeepCollectionEquality().hash(maximumCartQuantity),isApproved,isHalal,storeName,isCampaign,moduleType,zoneId,flashSale,storeDiscount,scheduleOrder,minDeliveryTime,maxDeliveryTime,commonConditionId,brandId,isBasic,isPrescriptionRequired,halalTagStatus,const DeepCollectionEquality().hash(nutritionsName),const DeepCollectionEquality().hash(allergiesName),const DeepCollectionEquality().hash(genericName),const DeepCollectionEquality().hash(unitType),imageFullUrl,const DeepCollectionEquality().hash(imagesFullUrl),const DeepCollectionEquality().hash(storage),const DeepCollectionEquality().hash(translations),module,const DeepCollectionEquality().hash(ecommerceItemDetails),const DeepCollectionEquality().hash(unit)]);

@override
String toString() {
  return 'WishlistItem(id: $id, name: $name, description: $description, image: $image, categoryId: $categoryId, categoryIds: $categoryIds, variations: $variations, addOns: $addOns, attributes: $attributes, choiceOptions: $choiceOptions, price: $price, tax: $tax, taxType: $taxType, discount: $discount, discountType: $discountType, availableTimeStarts: $availableTimeStarts, availableTimeEnds: $availableTimeEnds, veg: $veg, status: $status, storeId: $storeId, createdAt: $createdAt, updatedAt: $updatedAt, orderCount: $orderCount, avgRating: $avgRating, ratingCount: $ratingCount, moduleId: $moduleId, stock: $stock, unitId: $unitId, images: $images, foodVariations: $foodVariations, slug: $slug, recommended: $recommended, organic: $organic, maximumCartQuantity: $maximumCartQuantity, isApproved: $isApproved, isHalal: $isHalal, storeName: $storeName, isCampaign: $isCampaign, moduleType: $moduleType, zoneId: $zoneId, flashSale: $flashSale, storeDiscount: $storeDiscount, scheduleOrder: $scheduleOrder, minDeliveryTime: $minDeliveryTime, maxDeliveryTime: $maxDeliveryTime, commonConditionId: $commonConditionId, brandId: $brandId, isBasic: $isBasic, isPrescriptionRequired: $isPrescriptionRequired, halalTagStatus: $halalTagStatus, nutritionsName: $nutritionsName, allergiesName: $allergiesName, genericName: $genericName, unitType: $unitType, imageFullUrl: $imageFullUrl, imagesFullUrl: $imagesFullUrl, storage: $storage, translations: $translations, module: $module, ecommerceItemDetails: $ecommerceItemDetails, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $WishlistItemCopyWith<$Res>  {
  factory $WishlistItemCopyWith(WishlistItem value, $Res Function(WishlistItem) _then) = _$WishlistItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "description") String? description,@JsonKey(name: "image") String? image,@JsonKey(name: "category_id") int? categoryId,@JsonKey(name: "category_ids") List<CategoryId>? categoryIds,@JsonKey(name: "variations") List<Variation>? variations,@JsonKey(name: "add_ons") List<dynamic>? addOns,@JsonKey(name: "attributes") List<String>? attributes,@JsonKey(name: "choice_options") List<ChoiceOption>? choiceOptions,@JsonKey(name: "price") int? price,@JsonKey(name: "tax") int? tax,@JsonKey(name: "tax_type") String? taxType,@JsonKey(name: "discount") int? discount,@JsonKey(name: "discount_type") String? discountType,@JsonKey(name: "available_time_starts") String? availableTimeStarts,@JsonKey(name: "available_time_ends") String? availableTimeEnds,@JsonKey(name: "veg") int? veg,@JsonKey(name: "status") int? status,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "order_count") int? orderCount,@JsonKey(name: "avg_rating") int? avgRating,@JsonKey(name: "rating_count") int? ratingCount,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "stock") int? stock,@JsonKey(name: "unit_id") int? unitId,@JsonKey(name: "images") List<Image>? images,@JsonKey(name: "food_variations") dynamic foodVariations,@JsonKey(name: "slug") String? slug,@JsonKey(name: "recommended") int? recommended,@JsonKey(name: "organic") int? organic,@JsonKey(name: "maximum_cart_quantity") dynamic maximumCartQuantity,@JsonKey(name: "is_approved") int? isApproved,@JsonKey(name: "is_halal") int? isHalal,@JsonKey(name: "store_name") String? storeName,@JsonKey(name: "is_campaign") int? isCampaign,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "flash_sale") int? flashSale,@JsonKey(name: "store_discount") int? storeDiscount,@JsonKey(name: "schedule_order") bool? scheduleOrder,@JsonKey(name: "min_delivery_time") int? minDeliveryTime,@JsonKey(name: "max_delivery_time") int? maxDeliveryTime,@JsonKey(name: "common_condition_id") int? commonConditionId,@JsonKey(name: "brand_id") int? brandId,@JsonKey(name: "is_basic") int? isBasic,@JsonKey(name: "is_prescription_required") int? isPrescriptionRequired,@JsonKey(name: "halal_tag_status") int? halalTagStatus,@JsonKey(name: "nutritions_name") List<dynamic>? nutritionsName,@JsonKey(name: "allergies_name") List<dynamic>? allergiesName,@JsonKey(name: "generic_name") List<dynamic>? genericName,@JsonKey(name: "unit_type") dynamic unitType,@JsonKey(name: "image_full_url") String? imageFullUrl,@JsonKey(name: "images_full_url") List<String>? imagesFullUrl,@JsonKey(name: "storage") List<StorageElement>? storage,@JsonKey(name: "translations") List<dynamic>? translations,@JsonKey(name: "module") Module? module,@JsonKey(name: "ecommerce_item_details") dynamic ecommerceItemDetails,@JsonKey(name: "unit") dynamic unit
});


$ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class _$WishlistItemCopyWithImpl<$Res>
    implements $WishlistItemCopyWith<$Res> {
  _$WishlistItemCopyWithImpl(this._self, this._then);

  final WishlistItem _self;
  final $Res Function(WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? image = freezed,Object? categoryId = freezed,Object? categoryIds = freezed,Object? variations = freezed,Object? addOns = freezed,Object? attributes = freezed,Object? choiceOptions = freezed,Object? price = freezed,Object? tax = freezed,Object? taxType = freezed,Object? discount = freezed,Object? discountType = freezed,Object? availableTimeStarts = freezed,Object? availableTimeEnds = freezed,Object? veg = freezed,Object? status = freezed,Object? storeId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? orderCount = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? moduleId = freezed,Object? stock = freezed,Object? unitId = freezed,Object? images = freezed,Object? foodVariations = freezed,Object? slug = freezed,Object? recommended = freezed,Object? organic = freezed,Object? maximumCartQuantity = freezed,Object? isApproved = freezed,Object? isHalal = freezed,Object? storeName = freezed,Object? isCampaign = freezed,Object? moduleType = freezed,Object? zoneId = freezed,Object? flashSale = freezed,Object? storeDiscount = freezed,Object? scheduleOrder = freezed,Object? minDeliveryTime = freezed,Object? maxDeliveryTime = freezed,Object? commonConditionId = freezed,Object? brandId = freezed,Object? isBasic = freezed,Object? isPrescriptionRequired = freezed,Object? halalTagStatus = freezed,Object? nutritionsName = freezed,Object? allergiesName = freezed,Object? genericName = freezed,Object? unitType = freezed,Object? imageFullUrl = freezed,Object? imagesFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,Object? module = freezed,Object? ecommerceItemDetails = freezed,Object? unit = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryIds: freezed == categoryIds ? _self.categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as List<CategoryId>?,variations: freezed == variations ? _self.variations : variations // ignore: cast_nullable_to_non_nullable
as List<Variation>?,addOns: freezed == addOns ? _self.addOns : addOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<String>?,choiceOptions: freezed == choiceOptions ? _self.choiceOptions : choiceOptions // ignore: cast_nullable_to_non_nullable
as List<ChoiceOption>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int?,taxType: freezed == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,availableTimeStarts: freezed == availableTimeStarts ? _self.availableTimeStarts : availableTimeStarts // ignore: cast_nullable_to_non_nullable
as String?,availableTimeEnds: freezed == availableTimeEnds ? _self.availableTimeEnds : availableTimeEnds // ignore: cast_nullable_to_non_nullable
as String?,veg: freezed == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,orderCount: freezed == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<Image>?,foodVariations: freezed == foodVariations ? _self.foodVariations : foodVariations // ignore: cast_nullable_to_non_nullable
as dynamic,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,recommended: freezed == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as int?,organic: freezed == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as int?,maximumCartQuantity: freezed == maximumCartQuantity ? _self.maximumCartQuantity : maximumCartQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as int?,isHalal: freezed == isHalal ? _self.isHalal : isHalal // ignore: cast_nullable_to_non_nullable
as int?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,isCampaign: freezed == isCampaign ? _self.isCampaign : isCampaign // ignore: cast_nullable_to_non_nullable
as int?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,flashSale: freezed == flashSale ? _self.flashSale : flashSale // ignore: cast_nullable_to_non_nullable
as int?,storeDiscount: freezed == storeDiscount ? _self.storeDiscount : storeDiscount // ignore: cast_nullable_to_non_nullable
as int?,scheduleOrder: freezed == scheduleOrder ? _self.scheduleOrder : scheduleOrder // ignore: cast_nullable_to_non_nullable
as bool?,minDeliveryTime: freezed == minDeliveryTime ? _self.minDeliveryTime : minDeliveryTime // ignore: cast_nullable_to_non_nullable
as int?,maxDeliveryTime: freezed == maxDeliveryTime ? _self.maxDeliveryTime : maxDeliveryTime // ignore: cast_nullable_to_non_nullable
as int?,commonConditionId: freezed == commonConditionId ? _self.commonConditionId : commonConditionId // ignore: cast_nullable_to_non_nullable
as int?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,isBasic: freezed == isBasic ? _self.isBasic : isBasic // ignore: cast_nullable_to_non_nullable
as int?,isPrescriptionRequired: freezed == isPrescriptionRequired ? _self.isPrescriptionRequired : isPrescriptionRequired // ignore: cast_nullable_to_non_nullable
as int?,halalTagStatus: freezed == halalTagStatus ? _self.halalTagStatus : halalTagStatus // ignore: cast_nullable_to_non_nullable
as int?,nutritionsName: freezed == nutritionsName ? _self.nutritionsName : nutritionsName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,allergiesName: freezed == allergiesName ? _self.allergiesName : allergiesName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,genericName: freezed == genericName ? _self.genericName : genericName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,unitType: freezed == unitType ? _self.unitType : unitType // ignore: cast_nullable_to_non_nullable
as dynamic,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,imagesFullUrl: freezed == imagesFullUrl ? _self.imagesFullUrl : imagesFullUrl // ignore: cast_nullable_to_non_nullable
as List<String>?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<StorageElement>?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,ecommerceItemDetails: freezed == ecommerceItemDetails ? _self.ecommerceItemDetails : ecommerceItemDetails // ignore: cast_nullable_to_non_nullable
as dynamic,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _WistlistItem implements WishlistItem {
  const _WistlistItem({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "description") this.description, @JsonKey(name: "image") this.image, @JsonKey(name: "category_id") this.categoryId, @JsonKey(name: "category_ids") final  List<CategoryId>? categoryIds, @JsonKey(name: "variations") final  List<Variation>? variations, @JsonKey(name: "add_ons") final  List<dynamic>? addOns, @JsonKey(name: "attributes") final  List<String>? attributes, @JsonKey(name: "choice_options") final  List<ChoiceOption>? choiceOptions, @JsonKey(name: "price") this.price, @JsonKey(name: "tax") this.tax, @JsonKey(name: "tax_type") this.taxType, @JsonKey(name: "discount") this.discount, @JsonKey(name: "discount_type") this.discountType, @JsonKey(name: "available_time_starts") this.availableTimeStarts, @JsonKey(name: "available_time_ends") this.availableTimeEnds, @JsonKey(name: "veg") this.veg, @JsonKey(name: "status") this.status, @JsonKey(name: "store_id") this.storeId, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "order_count") this.orderCount, @JsonKey(name: "avg_rating") this.avgRating, @JsonKey(name: "rating_count") this.ratingCount, @JsonKey(name: "module_id") this.moduleId, @JsonKey(name: "stock") this.stock, @JsonKey(name: "unit_id") this.unitId, @JsonKey(name: "images") final  List<Image>? images, @JsonKey(name: "food_variations") this.foodVariations, @JsonKey(name: "slug") this.slug, @JsonKey(name: "recommended") this.recommended, @JsonKey(name: "organic") this.organic, @JsonKey(name: "maximum_cart_quantity") this.maximumCartQuantity, @JsonKey(name: "is_approved") this.isApproved, @JsonKey(name: "is_halal") this.isHalal, @JsonKey(name: "store_name") this.storeName, @JsonKey(name: "is_campaign") this.isCampaign, @JsonKey(name: "module_type") this.moduleType, @JsonKey(name: "zone_id") this.zoneId, @JsonKey(name: "flash_sale") this.flashSale, @JsonKey(name: "store_discount") this.storeDiscount, @JsonKey(name: "schedule_order") this.scheduleOrder, @JsonKey(name: "min_delivery_time") this.minDeliveryTime, @JsonKey(name: "max_delivery_time") this.maxDeliveryTime, @JsonKey(name: "common_condition_id") this.commonConditionId, @JsonKey(name: "brand_id") this.brandId, @JsonKey(name: "is_basic") this.isBasic, @JsonKey(name: "is_prescription_required") this.isPrescriptionRequired, @JsonKey(name: "halal_tag_status") this.halalTagStatus, @JsonKey(name: "nutritions_name") final  List<dynamic>? nutritionsName, @JsonKey(name: "allergies_name") final  List<dynamic>? allergiesName, @JsonKey(name: "generic_name") final  List<dynamic>? genericName, @JsonKey(name: "unit_type") this.unitType, @JsonKey(name: "image_full_url") this.imageFullUrl, @JsonKey(name: "images_full_url") final  List<String>? imagesFullUrl, @JsonKey(name: "storage") final  List<StorageElement>? storage, @JsonKey(name: "translations") final  List<dynamic>? translations, @JsonKey(name: "module") this.module, @JsonKey(name: "ecommerce_item_details") this.ecommerceItemDetails, @JsonKey(name: "unit") this.unit}): _categoryIds = categoryIds,_variations = variations,_addOns = addOns,_attributes = attributes,_choiceOptions = choiceOptions,_images = images,_nutritionsName = nutritionsName,_allergiesName = allergiesName,_genericName = genericName,_imagesFullUrl = imagesFullUrl,_storage = storage,_translations = translations;
  factory _WistlistItem.fromJson(Map<String, dynamic> json) => _$WistlistItemFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "image") final  String? image;
@override@JsonKey(name: "category_id") final  int? categoryId;
 final  List<CategoryId>? _categoryIds;
@override@JsonKey(name: "category_ids") List<CategoryId>? get categoryIds {
  final value = _categoryIds;
  if (value == null) return null;
  if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Variation>? _variations;
@override@JsonKey(name: "variations") List<Variation>? get variations {
  final value = _variations;
  if (value == null) return null;
  if (_variations is EqualUnmodifiableListView) return _variations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _addOns;
@override@JsonKey(name: "add_ons") List<dynamic>? get addOns {
  final value = _addOns;
  if (value == null) return null;
  if (_addOns is EqualUnmodifiableListView) return _addOns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _attributes;
@override@JsonKey(name: "attributes") List<String>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ChoiceOption>? _choiceOptions;
@override@JsonKey(name: "choice_options") List<ChoiceOption>? get choiceOptions {
  final value = _choiceOptions;
  if (value == null) return null;
  if (_choiceOptions is EqualUnmodifiableListView) return _choiceOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "price") final  int? price;
@override@JsonKey(name: "tax") final  int? tax;
@override@JsonKey(name: "tax_type") final  String? taxType;
@override@JsonKey(name: "discount") final  int? discount;
@override@JsonKey(name: "discount_type") final  String? discountType;
@override@JsonKey(name: "available_time_starts") final  String? availableTimeStarts;
@override@JsonKey(name: "available_time_ends") final  String? availableTimeEnds;
@override@JsonKey(name: "veg") final  int? veg;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "store_id") final  int? storeId;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "order_count") final  int? orderCount;
@override@JsonKey(name: "avg_rating") final  int? avgRating;
@override@JsonKey(name: "rating_count") final  int? ratingCount;
@override@JsonKey(name: "module_id") final  int? moduleId;
@override@JsonKey(name: "stock") final  int? stock;
@override@JsonKey(name: "unit_id") final  int? unitId;
 final  List<Image>? _images;
@override@JsonKey(name: "images") List<Image>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "food_variations") final  dynamic foodVariations;
@override@JsonKey(name: "slug") final  String? slug;
@override@JsonKey(name: "recommended") final  int? recommended;
@override@JsonKey(name: "organic") final  int? organic;
@override@JsonKey(name: "maximum_cart_quantity") final  dynamic maximumCartQuantity;
@override@JsonKey(name: "is_approved") final  int? isApproved;
@override@JsonKey(name: "is_halal") final  int? isHalal;
@override@JsonKey(name: "store_name") final  String? storeName;
@override@JsonKey(name: "is_campaign") final  int? isCampaign;
@override@JsonKey(name: "module_type") final  String? moduleType;
@override@JsonKey(name: "zone_id") final  int? zoneId;
@override@JsonKey(name: "flash_sale") final  int? flashSale;
@override@JsonKey(name: "store_discount") final  int? storeDiscount;
@override@JsonKey(name: "schedule_order") final  bool? scheduleOrder;
@override@JsonKey(name: "min_delivery_time") final  int? minDeliveryTime;
@override@JsonKey(name: "max_delivery_time") final  int? maxDeliveryTime;
@override@JsonKey(name: "common_condition_id") final  int? commonConditionId;
@override@JsonKey(name: "brand_id") final  int? brandId;
@override@JsonKey(name: "is_basic") final  int? isBasic;
@override@JsonKey(name: "is_prescription_required") final  int? isPrescriptionRequired;
@override@JsonKey(name: "halal_tag_status") final  int? halalTagStatus;
 final  List<dynamic>? _nutritionsName;
@override@JsonKey(name: "nutritions_name") List<dynamic>? get nutritionsName {
  final value = _nutritionsName;
  if (value == null) return null;
  if (_nutritionsName is EqualUnmodifiableListView) return _nutritionsName;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _allergiesName;
@override@JsonKey(name: "allergies_name") List<dynamic>? get allergiesName {
  final value = _allergiesName;
  if (value == null) return null;
  if (_allergiesName is EqualUnmodifiableListView) return _allergiesName;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _genericName;
@override@JsonKey(name: "generic_name") List<dynamic>? get genericName {
  final value = _genericName;
  if (value == null) return null;
  if (_genericName is EqualUnmodifiableListView) return _genericName;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "unit_type") final  dynamic unitType;
@override@JsonKey(name: "image_full_url") final  String? imageFullUrl;
 final  List<String>? _imagesFullUrl;
@override@JsonKey(name: "images_full_url") List<String>? get imagesFullUrl {
  final value = _imagesFullUrl;
  if (value == null) return null;
  if (_imagesFullUrl is EqualUnmodifiableListView) return _imagesFullUrl;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<StorageElement>? _storage;
@override@JsonKey(name: "storage") List<StorageElement>? get storage {
  final value = _storage;
  if (value == null) return null;
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _translations;
@override@JsonKey(name: "translations") List<dynamic>? get translations {
  final value = _translations;
  if (value == null) return null;
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "module") final  Module? module;
@override@JsonKey(name: "ecommerce_item_details") final  dynamic ecommerceItemDetails;
@override@JsonKey(name: "unit") final  dynamic unit;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WistlistItemCopyWith<_WistlistItem> get copyWith => __$WistlistItemCopyWithImpl<_WistlistItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WistlistItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WistlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._categoryIds, _categoryIds)&&const DeepCollectionEquality().equals(other._variations, _variations)&&const DeepCollectionEquality().equals(other._addOns, _addOns)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&const DeepCollectionEquality().equals(other._choiceOptions, _choiceOptions)&&(identical(other.price, price) || other.price == price)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.availableTimeStarts, availableTimeStarts) || other.availableTimeStarts == availableTimeStarts)&&(identical(other.availableTimeEnds, availableTimeEnds) || other.availableTimeEnds == availableTimeEnds)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other.foodVariations, foodVariations)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.recommended, recommended) || other.recommended == recommended)&&(identical(other.organic, organic) || other.organic == organic)&&const DeepCollectionEquality().equals(other.maximumCartQuantity, maximumCartQuantity)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isHalal, isHalal) || other.isHalal == isHalal)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.isCampaign, isCampaign) || other.isCampaign == isCampaign)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.flashSale, flashSale) || other.flashSale == flashSale)&&(identical(other.storeDiscount, storeDiscount) || other.storeDiscount == storeDiscount)&&(identical(other.scheduleOrder, scheduleOrder) || other.scheduleOrder == scheduleOrder)&&(identical(other.minDeliveryTime, minDeliveryTime) || other.minDeliveryTime == minDeliveryTime)&&(identical(other.maxDeliveryTime, maxDeliveryTime) || other.maxDeliveryTime == maxDeliveryTime)&&(identical(other.commonConditionId, commonConditionId) || other.commonConditionId == commonConditionId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.isBasic, isBasic) || other.isBasic == isBasic)&&(identical(other.isPrescriptionRequired, isPrescriptionRequired) || other.isPrescriptionRequired == isPrescriptionRequired)&&(identical(other.halalTagStatus, halalTagStatus) || other.halalTagStatus == halalTagStatus)&&const DeepCollectionEquality().equals(other._nutritionsName, _nutritionsName)&&const DeepCollectionEquality().equals(other._allergiesName, _allergiesName)&&const DeepCollectionEquality().equals(other._genericName, _genericName)&&const DeepCollectionEquality().equals(other.unitType, unitType)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&const DeepCollectionEquality().equals(other._imagesFullUrl, _imagesFullUrl)&&const DeepCollectionEquality().equals(other._storage, _storage)&&const DeepCollectionEquality().equals(other._translations, _translations)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other.ecommerceItemDetails, ecommerceItemDetails)&&const DeepCollectionEquality().equals(other.unit, unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,image,categoryId,const DeepCollectionEquality().hash(_categoryIds),const DeepCollectionEquality().hash(_variations),const DeepCollectionEquality().hash(_addOns),const DeepCollectionEquality().hash(_attributes),const DeepCollectionEquality().hash(_choiceOptions),price,tax,taxType,discount,discountType,availableTimeStarts,availableTimeEnds,veg,status,storeId,createdAt,updatedAt,orderCount,avgRating,ratingCount,moduleId,stock,unitId,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(foodVariations),slug,recommended,organic,const DeepCollectionEquality().hash(maximumCartQuantity),isApproved,isHalal,storeName,isCampaign,moduleType,zoneId,flashSale,storeDiscount,scheduleOrder,minDeliveryTime,maxDeliveryTime,commonConditionId,brandId,isBasic,isPrescriptionRequired,halalTagStatus,const DeepCollectionEquality().hash(_nutritionsName),const DeepCollectionEquality().hash(_allergiesName),const DeepCollectionEquality().hash(_genericName),const DeepCollectionEquality().hash(unitType),imageFullUrl,const DeepCollectionEquality().hash(_imagesFullUrl),const DeepCollectionEquality().hash(_storage),const DeepCollectionEquality().hash(_translations),module,const DeepCollectionEquality().hash(ecommerceItemDetails),const DeepCollectionEquality().hash(unit)]);

@override
String toString() {
  return 'WishlistItem(id: $id, name: $name, description: $description, image: $image, categoryId: $categoryId, categoryIds: $categoryIds, variations: $variations, addOns: $addOns, attributes: $attributes, choiceOptions: $choiceOptions, price: $price, tax: $tax, taxType: $taxType, discount: $discount, discountType: $discountType, availableTimeStarts: $availableTimeStarts, availableTimeEnds: $availableTimeEnds, veg: $veg, status: $status, storeId: $storeId, createdAt: $createdAt, updatedAt: $updatedAt, orderCount: $orderCount, avgRating: $avgRating, ratingCount: $ratingCount, moduleId: $moduleId, stock: $stock, unitId: $unitId, images: $images, foodVariations: $foodVariations, slug: $slug, recommended: $recommended, organic: $organic, maximumCartQuantity: $maximumCartQuantity, isApproved: $isApproved, isHalal: $isHalal, storeName: $storeName, isCampaign: $isCampaign, moduleType: $moduleType, zoneId: $zoneId, flashSale: $flashSale, storeDiscount: $storeDiscount, scheduleOrder: $scheduleOrder, minDeliveryTime: $minDeliveryTime, maxDeliveryTime: $maxDeliveryTime, commonConditionId: $commonConditionId, brandId: $brandId, isBasic: $isBasic, isPrescriptionRequired: $isPrescriptionRequired, halalTagStatus: $halalTagStatus, nutritionsName: $nutritionsName, allergiesName: $allergiesName, genericName: $genericName, unitType: $unitType, imageFullUrl: $imageFullUrl, imagesFullUrl: $imagesFullUrl, storage: $storage, translations: $translations, module: $module, ecommerceItemDetails: $ecommerceItemDetails, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$WistlistItemCopyWith<$Res> implements $WishlistItemCopyWith<$Res> {
  factory _$WistlistItemCopyWith(_WistlistItem value, $Res Function(_WistlistItem) _then) = __$WistlistItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "description") String? description,@JsonKey(name: "image") String? image,@JsonKey(name: "category_id") int? categoryId,@JsonKey(name: "category_ids") List<CategoryId>? categoryIds,@JsonKey(name: "variations") List<Variation>? variations,@JsonKey(name: "add_ons") List<dynamic>? addOns,@JsonKey(name: "attributes") List<String>? attributes,@JsonKey(name: "choice_options") List<ChoiceOption>? choiceOptions,@JsonKey(name: "price") int? price,@JsonKey(name: "tax") int? tax,@JsonKey(name: "tax_type") String? taxType,@JsonKey(name: "discount") int? discount,@JsonKey(name: "discount_type") String? discountType,@JsonKey(name: "available_time_starts") String? availableTimeStarts,@JsonKey(name: "available_time_ends") String? availableTimeEnds,@JsonKey(name: "veg") int? veg,@JsonKey(name: "status") int? status,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "order_count") int? orderCount,@JsonKey(name: "avg_rating") int? avgRating,@JsonKey(name: "rating_count") int? ratingCount,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "stock") int? stock,@JsonKey(name: "unit_id") int? unitId,@JsonKey(name: "images") List<Image>? images,@JsonKey(name: "food_variations") dynamic foodVariations,@JsonKey(name: "slug") String? slug,@JsonKey(name: "recommended") int? recommended,@JsonKey(name: "organic") int? organic,@JsonKey(name: "maximum_cart_quantity") dynamic maximumCartQuantity,@JsonKey(name: "is_approved") int? isApproved,@JsonKey(name: "is_halal") int? isHalal,@JsonKey(name: "store_name") String? storeName,@JsonKey(name: "is_campaign") int? isCampaign,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "flash_sale") int? flashSale,@JsonKey(name: "store_discount") int? storeDiscount,@JsonKey(name: "schedule_order") bool? scheduleOrder,@JsonKey(name: "min_delivery_time") int? minDeliveryTime,@JsonKey(name: "max_delivery_time") int? maxDeliveryTime,@JsonKey(name: "common_condition_id") int? commonConditionId,@JsonKey(name: "brand_id") int? brandId,@JsonKey(name: "is_basic") int? isBasic,@JsonKey(name: "is_prescription_required") int? isPrescriptionRequired,@JsonKey(name: "halal_tag_status") int? halalTagStatus,@JsonKey(name: "nutritions_name") List<dynamic>? nutritionsName,@JsonKey(name: "allergies_name") List<dynamic>? allergiesName,@JsonKey(name: "generic_name") List<dynamic>? genericName,@JsonKey(name: "unit_type") dynamic unitType,@JsonKey(name: "image_full_url") String? imageFullUrl,@JsonKey(name: "images_full_url") List<String>? imagesFullUrl,@JsonKey(name: "storage") List<StorageElement>? storage,@JsonKey(name: "translations") List<dynamic>? translations,@JsonKey(name: "module") Module? module,@JsonKey(name: "ecommerce_item_details") dynamic ecommerceItemDetails,@JsonKey(name: "unit") dynamic unit
});


@override $ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class __$WistlistItemCopyWithImpl<$Res>
    implements _$WistlistItemCopyWith<$Res> {
  __$WistlistItemCopyWithImpl(this._self, this._then);

  final _WistlistItem _self;
  final $Res Function(_WistlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? image = freezed,Object? categoryId = freezed,Object? categoryIds = freezed,Object? variations = freezed,Object? addOns = freezed,Object? attributes = freezed,Object? choiceOptions = freezed,Object? price = freezed,Object? tax = freezed,Object? taxType = freezed,Object? discount = freezed,Object? discountType = freezed,Object? availableTimeStarts = freezed,Object? availableTimeEnds = freezed,Object? veg = freezed,Object? status = freezed,Object? storeId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? orderCount = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? moduleId = freezed,Object? stock = freezed,Object? unitId = freezed,Object? images = freezed,Object? foodVariations = freezed,Object? slug = freezed,Object? recommended = freezed,Object? organic = freezed,Object? maximumCartQuantity = freezed,Object? isApproved = freezed,Object? isHalal = freezed,Object? storeName = freezed,Object? isCampaign = freezed,Object? moduleType = freezed,Object? zoneId = freezed,Object? flashSale = freezed,Object? storeDiscount = freezed,Object? scheduleOrder = freezed,Object? minDeliveryTime = freezed,Object? maxDeliveryTime = freezed,Object? commonConditionId = freezed,Object? brandId = freezed,Object? isBasic = freezed,Object? isPrescriptionRequired = freezed,Object? halalTagStatus = freezed,Object? nutritionsName = freezed,Object? allergiesName = freezed,Object? genericName = freezed,Object? unitType = freezed,Object? imageFullUrl = freezed,Object? imagesFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,Object? module = freezed,Object? ecommerceItemDetails = freezed,Object? unit = freezed,}) {
  return _then(_WistlistItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryIds: freezed == categoryIds ? _self._categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as List<CategoryId>?,variations: freezed == variations ? _self._variations : variations // ignore: cast_nullable_to_non_nullable
as List<Variation>?,addOns: freezed == addOns ? _self._addOns : addOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<String>?,choiceOptions: freezed == choiceOptions ? _self._choiceOptions : choiceOptions // ignore: cast_nullable_to_non_nullable
as List<ChoiceOption>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int?,taxType: freezed == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,availableTimeStarts: freezed == availableTimeStarts ? _self.availableTimeStarts : availableTimeStarts // ignore: cast_nullable_to_non_nullable
as String?,availableTimeEnds: freezed == availableTimeEnds ? _self.availableTimeEnds : availableTimeEnds // ignore: cast_nullable_to_non_nullable
as String?,veg: freezed == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,orderCount: freezed == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<Image>?,foodVariations: freezed == foodVariations ? _self.foodVariations : foodVariations // ignore: cast_nullable_to_non_nullable
as dynamic,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,recommended: freezed == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as int?,organic: freezed == organic ? _self.organic : organic // ignore: cast_nullable_to_non_nullable
as int?,maximumCartQuantity: freezed == maximumCartQuantity ? _self.maximumCartQuantity : maximumCartQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as int?,isHalal: freezed == isHalal ? _self.isHalal : isHalal // ignore: cast_nullable_to_non_nullable
as int?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,isCampaign: freezed == isCampaign ? _self.isCampaign : isCampaign // ignore: cast_nullable_to_non_nullable
as int?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,flashSale: freezed == flashSale ? _self.flashSale : flashSale // ignore: cast_nullable_to_non_nullable
as int?,storeDiscount: freezed == storeDiscount ? _self.storeDiscount : storeDiscount // ignore: cast_nullable_to_non_nullable
as int?,scheduleOrder: freezed == scheduleOrder ? _self.scheduleOrder : scheduleOrder // ignore: cast_nullable_to_non_nullable
as bool?,minDeliveryTime: freezed == minDeliveryTime ? _self.minDeliveryTime : minDeliveryTime // ignore: cast_nullable_to_non_nullable
as int?,maxDeliveryTime: freezed == maxDeliveryTime ? _self.maxDeliveryTime : maxDeliveryTime // ignore: cast_nullable_to_non_nullable
as int?,commonConditionId: freezed == commonConditionId ? _self.commonConditionId : commonConditionId // ignore: cast_nullable_to_non_nullable
as int?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,isBasic: freezed == isBasic ? _self.isBasic : isBasic // ignore: cast_nullable_to_non_nullable
as int?,isPrescriptionRequired: freezed == isPrescriptionRequired ? _self.isPrescriptionRequired : isPrescriptionRequired // ignore: cast_nullable_to_non_nullable
as int?,halalTagStatus: freezed == halalTagStatus ? _self.halalTagStatus : halalTagStatus // ignore: cast_nullable_to_non_nullable
as int?,nutritionsName: freezed == nutritionsName ? _self._nutritionsName : nutritionsName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,allergiesName: freezed == allergiesName ? _self._allergiesName : allergiesName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,genericName: freezed == genericName ? _self._genericName : genericName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,unitType: freezed == unitType ? _self.unitType : unitType // ignore: cast_nullable_to_non_nullable
as dynamic,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,imagesFullUrl: freezed == imagesFullUrl ? _self._imagesFullUrl : imagesFullUrl // ignore: cast_nullable_to_non_nullable
as List<String>?,storage: freezed == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<StorageElement>?,translations: freezed == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,ecommerceItemDetails: freezed == ecommerceItemDetails ? _self.ecommerceItemDetails : ecommerceItemDetails // ignore: cast_nullable_to_non_nullable
as dynamic,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
mixin _$CategoryId {

@JsonKey(name: "id") String? get id;@JsonKey(name: "position") int? get position;@JsonKey(name: "name") String? get name;
/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<CategoryId> get copyWith => _$CategoryIdCopyWithImpl<CategoryId>(this as CategoryId, _$identity);

  /// Serializes this CategoryId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryId&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,position,name);

@override
String toString() {
  return 'CategoryId(id: $id, position: $position, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryIdCopyWith<$Res>  {
  factory $CategoryIdCopyWith(CategoryId value, $Res Function(CategoryId) _then) = _$CategoryIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "position") int? position,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class _$CategoryIdCopyWithImpl<$Res>
    implements $CategoryIdCopyWith<$Res> {
  _$CategoryIdCopyWithImpl(this._self, this._then);

  final CategoryId _self;
  final $Res Function(CategoryId) _then;

/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? position = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CategoryId implements CategoryId {
  const _CategoryId({@JsonKey(name: "id") this.id, @JsonKey(name: "position") this.position, @JsonKey(name: "name") this.name});
  factory _CategoryId.fromJson(Map<String, dynamic> json) => _$CategoryIdFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "position") final  int? position;
@override@JsonKey(name: "name") final  String? name;

/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryIdCopyWith<_CategoryId> get copyWith => __$CategoryIdCopyWithImpl<_CategoryId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryId&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,position,name);

@override
String toString() {
  return 'CategoryId(id: $id, position: $position, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryIdCopyWith<$Res> implements $CategoryIdCopyWith<$Res> {
  factory _$CategoryIdCopyWith(_CategoryId value, $Res Function(_CategoryId) _then) = __$CategoryIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "position") int? position,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class __$CategoryIdCopyWithImpl<$Res>
    implements _$CategoryIdCopyWith<$Res> {
  __$CategoryIdCopyWithImpl(this._self, this._then);

  final _CategoryId _self;
  final $Res Function(_CategoryId) _then;

/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? position = freezed,Object? name = freezed,}) {
  return _then(_CategoryId(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChoiceOption {

@JsonKey(name: "name") String? get name;@JsonKey(name: "title") String? get title;@JsonKey(name: "options") List<String>? get options;
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
@JsonKey(name: "name") String? name,@JsonKey(name: "title") String? title,@JsonKey(name: "options") List<String>? options
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? title = freezed,Object? options = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChoiceOption implements ChoiceOption {
  const _ChoiceOption({@JsonKey(name: "name") this.name, @JsonKey(name: "title") this.title, @JsonKey(name: "options") final  List<String>? options}): _options = options;
  factory _ChoiceOption.fromJson(Map<String, dynamic> json) => _$ChoiceOptionFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "title") final  String? title;
 final  List<String>? _options;
@override@JsonKey(name: "options") List<String>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
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
@JsonKey(name: "name") String? name,@JsonKey(name: "title") String? title,@JsonKey(name: "options") List<String>? options
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? title = freezed,Object? options = freezed,}) {
  return _then(_ChoiceOption(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$FoodVariation {

@JsonKey(name: "name") String? get name;@JsonKey(name: "type") String? get type;@JsonKey(name: "min") int? get min;@JsonKey(name: "max") int? get max;@JsonKey(name: "required") String? get required;@JsonKey(name: "values") List<Value>? get values;
/// Create a copy of FoodVariation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodVariationCopyWith<FoodVariation> get copyWith => _$FoodVariationCopyWithImpl<FoodVariation>(this as FoodVariation, _$identity);

  /// Serializes this FoodVariation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodVariation&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,min,max,required,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'FoodVariation(name: $name, type: $type, min: $min, max: $max, required: $required, values: $values)';
}


}

/// @nodoc
abstract mixin class $FoodVariationCopyWith<$Res>  {
  factory $FoodVariationCopyWith(FoodVariation value, $Res Function(FoodVariation) _then) = _$FoodVariationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "type") String? type,@JsonKey(name: "min") int? min,@JsonKey(name: "max") int? max,@JsonKey(name: "required") String? required,@JsonKey(name: "values") List<Value>? values
});




}
/// @nodoc
class _$FoodVariationCopyWithImpl<$Res>
    implements $FoodVariationCopyWith<$Res> {
  _$FoodVariationCopyWithImpl(this._self, this._then);

  final FoodVariation _self;
  final $Res Function(FoodVariation) _then;

/// Create a copy of FoodVariation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? type = freezed,Object? min = freezed,Object? max = freezed,Object? required = freezed,Object? values = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<Value>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FoodVariation implements FoodVariation {
  const _FoodVariation({@JsonKey(name: "name") this.name, @JsonKey(name: "type") this.type, @JsonKey(name: "min") this.min, @JsonKey(name: "max") this.max, @JsonKey(name: "required") this.required, @JsonKey(name: "values") final  List<Value>? values}): _values = values;
  factory _FoodVariation.fromJson(Map<String, dynamic> json) => _$FoodVariationFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "min") final  int? min;
@override@JsonKey(name: "max") final  int? max;
@override@JsonKey(name: "required") final  String? required;
 final  List<Value>? _values;
@override@JsonKey(name: "values") List<Value>? get values {
  final value = _values;
  if (value == null) return null;
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FoodVariation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodVariationCopyWith<_FoodVariation> get copyWith => __$FoodVariationCopyWithImpl<_FoodVariation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodVariationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodVariation&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,min,max,required,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'FoodVariation(name: $name, type: $type, min: $min, max: $max, required: $required, values: $values)';
}


}

/// @nodoc
abstract mixin class _$FoodVariationCopyWith<$Res> implements $FoodVariationCopyWith<$Res> {
  factory _$FoodVariationCopyWith(_FoodVariation value, $Res Function(_FoodVariation) _then) = __$FoodVariationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "type") String? type,@JsonKey(name: "min") int? min,@JsonKey(name: "max") int? max,@JsonKey(name: "required") String? required,@JsonKey(name: "values") List<Value>? values
});




}
/// @nodoc
class __$FoodVariationCopyWithImpl<$Res>
    implements _$FoodVariationCopyWith<$Res> {
  __$FoodVariationCopyWithImpl(this._self, this._then);

  final _FoodVariation _self;
  final $Res Function(_FoodVariation) _then;

/// Create a copy of FoodVariation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? type = freezed,Object? min = freezed,Object? max = freezed,Object? required = freezed,Object? values = freezed,}) {
  return _then(_FoodVariation(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<Value>?,
  ));
}


}


/// @nodoc
mixin _$Value {

@JsonKey(name: "label") String? get label;@JsonKey(name: "optionPrice") String? get optionPrice;
/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueCopyWith<Value> get copyWith => _$ValueCopyWithImpl<Value>(this as Value, _$identity);

  /// Serializes this Value to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Value&&(identical(other.label, label) || other.label == label)&&(identical(other.optionPrice, optionPrice) || other.optionPrice == optionPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,optionPrice);

@override
String toString() {
  return 'Value(label: $label, optionPrice: $optionPrice)';
}


}

/// @nodoc
abstract mixin class $ValueCopyWith<$Res>  {
  factory $ValueCopyWith(Value value, $Res Function(Value) _then) = _$ValueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "label") String? label,@JsonKey(name: "optionPrice") String? optionPrice
});




}
/// @nodoc
class _$ValueCopyWithImpl<$Res>
    implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._self, this._then);

  final Value _self;
  final $Res Function(Value) _then;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? optionPrice = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,optionPrice: freezed == optionPrice ? _self.optionPrice : optionPrice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Value implements Value {
  const _Value({@JsonKey(name: "label") this.label, @JsonKey(name: "optionPrice") this.optionPrice});
  factory _Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

@override@JsonKey(name: "label") final  String? label;
@override@JsonKey(name: "optionPrice") final  String? optionPrice;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValueCopyWith<_Value> get copyWith => __$ValueCopyWithImpl<_Value>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Value&&(identical(other.label, label) || other.label == label)&&(identical(other.optionPrice, optionPrice) || other.optionPrice == optionPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,optionPrice);

@override
String toString() {
  return 'Value(label: $label, optionPrice: $optionPrice)';
}


}

/// @nodoc
abstract mixin class _$ValueCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$ValueCopyWith(_Value value, $Res Function(_Value) _then) = __$ValueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "label") String? label,@JsonKey(name: "optionPrice") String? optionPrice
});




}
/// @nodoc
class __$ValueCopyWithImpl<$Res>
    implements _$ValueCopyWith<$Res> {
  __$ValueCopyWithImpl(this._self, this._then);

  final _Value _self;
  final $Res Function(_Value) _then;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? optionPrice = freezed,}) {
  return _then(_Value(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,optionPrice: freezed == optionPrice ? _self.optionPrice : optionPrice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Image {

@JsonKey(name: "img") String? get img;@JsonKey(name: "storage") StorageEnum? get storage;
/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageCopyWith<Image> get copyWith => _$ImageCopyWithImpl<Image>(this as Image, _$identity);

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image&&(identical(other.img, img) || other.img == img)&&(identical(other.storage, storage) || other.storage == storage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,img,storage);

@override
String toString() {
  return 'Image(img: $img, storage: $storage)';
}


}

/// @nodoc
abstract mixin class $ImageCopyWith<$Res>  {
  factory $ImageCopyWith(Image value, $Res Function(Image) _then) = _$ImageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "img") String? img,@JsonKey(name: "storage") StorageEnum? storage
});




}
/// @nodoc
class _$ImageCopyWithImpl<$Res>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._self, this._then);

  final Image _self;
  final $Res Function(Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? img = freezed,Object? storage = freezed,}) {
  return _then(_self.copyWith(
img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as StorageEnum?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Image implements Image {
  const _Image({@JsonKey(name: "img") this.img, @JsonKey(name: "storage") this.storage});
  factory _Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

@override@JsonKey(name: "img") final  String? img;
@override@JsonKey(name: "storage") final  StorageEnum? storage;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageCopyWith<_Image> get copyWith => __$ImageCopyWithImpl<_Image>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Image&&(identical(other.img, img) || other.img == img)&&(identical(other.storage, storage) || other.storage == storage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,img,storage);

@override
String toString() {
  return 'Image(img: $img, storage: $storage)';
}


}

/// @nodoc
abstract mixin class _$ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) _then) = __$ImageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "img") String? img,@JsonKey(name: "storage") StorageEnum? storage
});




}
/// @nodoc
class __$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(this._self, this._then);

  final _Image _self;
  final $Res Function(_Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? img = freezed,Object? storage = freezed,}) {
  return _then(_Image(
img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as StorageEnum?,
  ));
}


}


/// @nodoc
mixin _$Module {

@JsonKey(name: "id") int? get id;@JsonKey(name: "module_name") String? get moduleName;@JsonKey(name: "module_type") String? get moduleType;@JsonKey(name: "thumbnail") String? get thumbnail;@JsonKey(name: "status") String? get status;@JsonKey(name: "stores_count") int? get storesCount;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "icon") String? get icon;@JsonKey(name: "theme_id") int? get themeId;@JsonKey(name: "description") String? get description;@JsonKey(name: "all_zone_service") int? get allZoneService;@JsonKey(name: "icon_full_url") String? get iconFullUrl;@JsonKey(name: "thumbnail_full_url") String? get thumbnailFullUrl;@JsonKey(name: "storage") List<StorageElement>? get storage;@JsonKey(name: "translations") List<Translation>? get translations;
/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleCopyWith<Module> get copyWith => _$ModuleCopyWithImpl<Module>(this as Module, _$identity);

  /// Serializes this Module to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Module&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.status, status) || other.status == status)&&(identical(other.storesCount, storesCount) || other.storesCount == storesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.themeId, themeId) || other.themeId == themeId)&&(identical(other.description, description) || other.description == description)&&(identical(other.allZoneService, allZoneService) || other.allZoneService == allZoneService)&&(identical(other.iconFullUrl, iconFullUrl) || other.iconFullUrl == iconFullUrl)&&(identical(other.thumbnailFullUrl, thumbnailFullUrl) || other.thumbnailFullUrl == thumbnailFullUrl)&&const DeepCollectionEquality().equals(other.storage, storage)&&const DeepCollectionEquality().equals(other.translations, translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleName,moduleType,thumbnail,status,storesCount,createdAt,updatedAt,icon,themeId,description,allZoneService,iconFullUrl,thumbnailFullUrl,const DeepCollectionEquality().hash(storage),const DeepCollectionEquality().hash(translations));

@override
String toString() {
  return 'Module(id: $id, moduleName: $moduleName, moduleType: $moduleType, thumbnail: $thumbnail, status: $status, storesCount: $storesCount, createdAt: $createdAt, updatedAt: $updatedAt, icon: $icon, themeId: $themeId, description: $description, allZoneService: $allZoneService, iconFullUrl: $iconFullUrl, thumbnailFullUrl: $thumbnailFullUrl, storage: $storage, translations: $translations)';
}


}

/// @nodoc
abstract mixin class $ModuleCopyWith<$Res>  {
  factory $ModuleCopyWith(Module value, $Res Function(Module) _then) = _$ModuleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "module_name") String? moduleName,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "status") String? status,@JsonKey(name: "stores_count") int? storesCount,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "icon") String? icon,@JsonKey(name: "theme_id") int? themeId,@JsonKey(name: "description") String? description,@JsonKey(name: "all_zone_service") int? allZoneService,@JsonKey(name: "icon_full_url") String? iconFullUrl,@JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl,@JsonKey(name: "storage") List<StorageElement>? storage,@JsonKey(name: "translations") List<Translation>? translations
});




}
/// @nodoc
class _$ModuleCopyWithImpl<$Res>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._self, this._then);

  final Module _self;
  final $Res Function(Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? moduleName = freezed,Object? moduleType = freezed,Object? thumbnail = freezed,Object? status = freezed,Object? storesCount = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? icon = freezed,Object? themeId = freezed,Object? description = freezed,Object? allZoneService = freezed,Object? iconFullUrl = freezed,Object? thumbnailFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storesCount: freezed == storesCount ? _self.storesCount : storesCount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,themeId: freezed == themeId ? _self.themeId : themeId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,allZoneService: freezed == allZoneService ? _self.allZoneService : allZoneService // ignore: cast_nullable_to_non_nullable
as int?,iconFullUrl: freezed == iconFullUrl ? _self.iconFullUrl : iconFullUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailFullUrl: freezed == thumbnailFullUrl ? _self.thumbnailFullUrl : thumbnailFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<StorageElement>?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Module implements Module {
  const _Module({@JsonKey(name: "id") this.id, @JsonKey(name: "module_name") this.moduleName, @JsonKey(name: "module_type") this.moduleType, @JsonKey(name: "thumbnail") this.thumbnail, @JsonKey(name: "status") this.status, @JsonKey(name: "stores_count") this.storesCount, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "icon") this.icon, @JsonKey(name: "theme_id") this.themeId, @JsonKey(name: "description") this.description, @JsonKey(name: "all_zone_service") this.allZoneService, @JsonKey(name: "icon_full_url") this.iconFullUrl, @JsonKey(name: "thumbnail_full_url") this.thumbnailFullUrl, @JsonKey(name: "storage") final  List<StorageElement>? storage, @JsonKey(name: "translations") final  List<Translation>? translations}): _storage = storage,_translations = translations;
  factory _Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "module_name") final  String? moduleName;
@override@JsonKey(name: "module_type") final  String? moduleType;
@override@JsonKey(name: "thumbnail") final  String? thumbnail;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "stores_count") final  int? storesCount;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "icon") final  String? icon;
@override@JsonKey(name: "theme_id") final  int? themeId;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "all_zone_service") final  int? allZoneService;
@override@JsonKey(name: "icon_full_url") final  String? iconFullUrl;
@override@JsonKey(name: "thumbnail_full_url") final  String? thumbnailFullUrl;
 final  List<StorageElement>? _storage;
@override@JsonKey(name: "storage") List<StorageElement>? get storage {
  final value = _storage;
  if (value == null) return null;
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Translation>? _translations;
@override@JsonKey(name: "translations") List<Translation>? get translations {
  final value = _translations;
  if (value == null) return null;
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleCopyWith<_Module> get copyWith => __$ModuleCopyWithImpl<_Module>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Module&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.status, status) || other.status == status)&&(identical(other.storesCount, storesCount) || other.storesCount == storesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.themeId, themeId) || other.themeId == themeId)&&(identical(other.description, description) || other.description == description)&&(identical(other.allZoneService, allZoneService) || other.allZoneService == allZoneService)&&(identical(other.iconFullUrl, iconFullUrl) || other.iconFullUrl == iconFullUrl)&&(identical(other.thumbnailFullUrl, thumbnailFullUrl) || other.thumbnailFullUrl == thumbnailFullUrl)&&const DeepCollectionEquality().equals(other._storage, _storage)&&const DeepCollectionEquality().equals(other._translations, _translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleName,moduleType,thumbnail,status,storesCount,createdAt,updatedAt,icon,themeId,description,allZoneService,iconFullUrl,thumbnailFullUrl,const DeepCollectionEquality().hash(_storage),const DeepCollectionEquality().hash(_translations));

@override
String toString() {
  return 'Module(id: $id, moduleName: $moduleName, moduleType: $moduleType, thumbnail: $thumbnail, status: $status, storesCount: $storesCount, createdAt: $createdAt, updatedAt: $updatedAt, icon: $icon, themeId: $themeId, description: $description, allZoneService: $allZoneService, iconFullUrl: $iconFullUrl, thumbnailFullUrl: $thumbnailFullUrl, storage: $storage, translations: $translations)';
}


}

/// @nodoc
abstract mixin class _$ModuleCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$ModuleCopyWith(_Module value, $Res Function(_Module) _then) = __$ModuleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "module_name") String? moduleName,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "status") String? status,@JsonKey(name: "stores_count") int? storesCount,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "icon") String? icon,@JsonKey(name: "theme_id") int? themeId,@JsonKey(name: "description") String? description,@JsonKey(name: "all_zone_service") int? allZoneService,@JsonKey(name: "icon_full_url") String? iconFullUrl,@JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl,@JsonKey(name: "storage") List<StorageElement>? storage,@JsonKey(name: "translations") List<Translation>? translations
});




}
/// @nodoc
class __$ModuleCopyWithImpl<$Res>
    implements _$ModuleCopyWith<$Res> {
  __$ModuleCopyWithImpl(this._self, this._then);

  final _Module _self;
  final $Res Function(_Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? moduleName = freezed,Object? moduleType = freezed,Object? thumbnail = freezed,Object? status = freezed,Object? storesCount = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? icon = freezed,Object? themeId = freezed,Object? description = freezed,Object? allZoneService = freezed,Object? iconFullUrl = freezed,Object? thumbnailFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,}) {
  return _then(_Module(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storesCount: freezed == storesCount ? _self.storesCount : storesCount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,themeId: freezed == themeId ? _self.themeId : themeId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,allZoneService: freezed == allZoneService ? _self.allZoneService : allZoneService // ignore: cast_nullable_to_non_nullable
as int?,iconFullUrl: freezed == iconFullUrl ? _self.iconFullUrl : iconFullUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailFullUrl: freezed == thumbnailFullUrl ? _self.thumbnailFullUrl : thumbnailFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<StorageElement>?,translations: freezed == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,
  ));
}


}


/// @nodoc
mixin _$StorageElement {

@JsonKey(name: "id") int? get id;@JsonKey(name: "data_type") Type? get dataType;@JsonKey(name: "data_id") String? get dataId;@JsonKey(name: "key") String? get key;@JsonKey(name: "value") StorageEnum? get value;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;
/// Create a copy of StorageElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageElementCopyWith<StorageElement> get copyWith => _$StorageElementCopyWithImpl<StorageElement>(this as StorageElement, _$identity);

  /// Serializes this StorageElement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageElement&&(identical(other.id, id) || other.id == id)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dataType,dataId,key,value,createdAt,updatedAt);

@override
String toString() {
  return 'StorageElement(id: $id, dataType: $dataType, dataId: $dataId, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StorageElementCopyWith<$Res>  {
  factory $StorageElementCopyWith(StorageElement value, $Res Function(StorageElement) _then) = _$StorageElementCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "data_type") Type? dataType,@JsonKey(name: "data_id") String? dataId,@JsonKey(name: "key") String? key,@JsonKey(name: "value") StorageEnum? value,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class _$StorageElementCopyWithImpl<$Res>
    implements $StorageElementCopyWith<$Res> {
  _$StorageElementCopyWithImpl(this._self, this._then);

  final StorageElement _self;
  final $Res Function(StorageElement) _then;

/// Create a copy of StorageElement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? dataType = freezed,Object? dataId = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as Type?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as StorageEnum?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StorageElement implements StorageElement {
  const _StorageElement({@JsonKey(name: "id") this.id, @JsonKey(name: "data_type") this.dataType, @JsonKey(name: "data_id") this.dataId, @JsonKey(name: "key") this.key, @JsonKey(name: "value") this.value, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt});
  factory _StorageElement.fromJson(Map<String, dynamic> json) => _$StorageElementFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "data_type") final  Type? dataType;
@override@JsonKey(name: "data_id") final  String? dataId;
@override@JsonKey(name: "key") final  String? key;
@override@JsonKey(name: "value") final  StorageEnum? value;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;

/// Create a copy of StorageElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorageElementCopyWith<_StorageElement> get copyWith => __$StorageElementCopyWithImpl<_StorageElement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorageElementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorageElement&&(identical(other.id, id) || other.id == id)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dataType,dataId,key,value,createdAt,updatedAt);

@override
String toString() {
  return 'StorageElement(id: $id, dataType: $dataType, dataId: $dataId, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StorageElementCopyWith<$Res> implements $StorageElementCopyWith<$Res> {
  factory _$StorageElementCopyWith(_StorageElement value, $Res Function(_StorageElement) _then) = __$StorageElementCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "data_type") Type? dataType,@JsonKey(name: "data_id") String? dataId,@JsonKey(name: "key") String? key,@JsonKey(name: "value") StorageEnum? value,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class __$StorageElementCopyWithImpl<$Res>
    implements _$StorageElementCopyWith<$Res> {
  __$StorageElementCopyWithImpl(this._self, this._then);

  final _StorageElement _self;
  final $Res Function(_StorageElement) _then;

/// Create a copy of StorageElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? dataType = freezed,Object? dataId = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_StorageElement(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as Type?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as StorageEnum?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$Translation {

@JsonKey(name: "id") int? get id;@JsonKey(name: "translationable_type") Type? get translationableType;@JsonKey(name: "translationable_id") int? get translationableId;@JsonKey(name: "locale") Locale? get locale;@JsonKey(name: "key") String? get key;@JsonKey(name: "value") String? get value;@JsonKey(name: "created_at") dynamic get createdAt;@JsonKey(name: "updated_at") dynamic get updatedAt;
/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationCopyWith<Translation> get copyWith => _$TranslationCopyWithImpl<Translation>(this as Translation, _$identity);

  /// Serializes this Translation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Translation&&(identical(other.id, id) || other.id == id)&&(identical(other.translationableType, translationableType) || other.translationableType == translationableType)&&(identical(other.translationableId, translationableId) || other.translationableId == translationableId)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.createdAt, createdAt)&&const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,translationableType,translationableId,locale,key,value,const DeepCollectionEquality().hash(createdAt),const DeepCollectionEquality().hash(updatedAt));

@override
String toString() {
  return 'Translation(id: $id, translationableType: $translationableType, translationableId: $translationableId, locale: $locale, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TranslationCopyWith<$Res>  {
  factory $TranslationCopyWith(Translation value, $Res Function(Translation) _then) = _$TranslationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "translationable_type") Type? translationableType,@JsonKey(name: "translationable_id") int? translationableId,@JsonKey(name: "locale") Locale? locale,@JsonKey(name: "key") String? key,@JsonKey(name: "value") String? value,@JsonKey(name: "created_at") dynamic createdAt,@JsonKey(name: "updated_at") dynamic updatedAt
});




}
/// @nodoc
class _$TranslationCopyWithImpl<$Res>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._self, this._then);

  final Translation _self;
  final $Res Function(Translation) _then;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? translationableType = freezed,Object? translationableId = freezed,Object? locale = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,translationableType: freezed == translationableType ? _self.translationableType : translationableType // ignore: cast_nullable_to_non_nullable
as Type?,translationableId: freezed == translationableId ? _self.translationableId : translationableId // ignore: cast_nullable_to_non_nullable
as int?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Translation implements Translation {
  const _Translation({@JsonKey(name: "id") this.id, @JsonKey(name: "translationable_type") this.translationableType, @JsonKey(name: "translationable_id") this.translationableId, @JsonKey(name: "locale") this.locale, @JsonKey(name: "key") this.key, @JsonKey(name: "value") this.value, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt});
  factory _Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "translationable_type") final  Type? translationableType;
@override@JsonKey(name: "translationable_id") final  int? translationableId;
@override@JsonKey(name: "locale") final  Locale? locale;
@override@JsonKey(name: "key") final  String? key;
@override@JsonKey(name: "value") final  String? value;
@override@JsonKey(name: "created_at") final  dynamic createdAt;
@override@JsonKey(name: "updated_at") final  dynamic updatedAt;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationCopyWith<_Translation> get copyWith => __$TranslationCopyWithImpl<_Translation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Translation&&(identical(other.id, id) || other.id == id)&&(identical(other.translationableType, translationableType) || other.translationableType == translationableType)&&(identical(other.translationableId, translationableId) || other.translationableId == translationableId)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.createdAt, createdAt)&&const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,translationableType,translationableId,locale,key,value,const DeepCollectionEquality().hash(createdAt),const DeepCollectionEquality().hash(updatedAt));

@override
String toString() {
  return 'Translation(id: $id, translationableType: $translationableType, translationableId: $translationableId, locale: $locale, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TranslationCopyWith<$Res> implements $TranslationCopyWith<$Res> {
  factory _$TranslationCopyWith(_Translation value, $Res Function(_Translation) _then) = __$TranslationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "translationable_type") Type? translationableType,@JsonKey(name: "translationable_id") int? translationableId,@JsonKey(name: "locale") Locale? locale,@JsonKey(name: "key") String? key,@JsonKey(name: "value") String? value,@JsonKey(name: "created_at") dynamic createdAt,@JsonKey(name: "updated_at") dynamic updatedAt
});




}
/// @nodoc
class __$TranslationCopyWithImpl<$Res>
    implements _$TranslationCopyWith<$Res> {
  __$TranslationCopyWithImpl(this._self, this._then);

  final _Translation _self;
  final $Res Function(_Translation) _then;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? translationableType = freezed,Object? translationableId = freezed,Object? locale = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Translation(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,translationableType: freezed == translationableType ? _self.translationableType : translationableType // ignore: cast_nullable_to_non_nullable
as Type?,translationableId: freezed == translationableId ? _self.translationableId : translationableId // ignore: cast_nullable_to_non_nullable
as int?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$Variation {

@JsonKey(name: "type") String? get type;@JsonKey(name: "price") int? get price;@JsonKey(name: "stock") int? get stock;
/// Create a copy of Variation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariationCopyWith<Variation> get copyWith => _$VariationCopyWithImpl<Variation>(this as Variation, _$identity);

  /// Serializes this Variation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Variation&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,price,stock);

@override
String toString() {
  return 'Variation(type: $type, price: $price, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $VariationCopyWith<$Res>  {
  factory $VariationCopyWith(Variation value, $Res Function(Variation) _then) = _$VariationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "type") String? type,@JsonKey(name: "price") int? price,@JsonKey(name: "stock") int? stock
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
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? price = freezed,Object? stock = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Variation implements Variation {
  const _Variation({@JsonKey(name: "type") this.type, @JsonKey(name: "price") this.price, @JsonKey(name: "stock") this.stock});
  factory _Variation.fromJson(Map<String, dynamic> json) => _$VariationFromJson(json);

@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "price") final  int? price;
@override@JsonKey(name: "stock") final  int? stock;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Variation&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,price,stock);

@override
String toString() {
  return 'Variation(type: $type, price: $price, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$VariationCopyWith<$Res> implements $VariationCopyWith<$Res> {
  factory _$VariationCopyWith(_Variation value, $Res Function(_Variation) _then) = __$VariationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "type") String? type,@JsonKey(name: "price") int? price,@JsonKey(name: "stock") int? stock
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
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? price = freezed,Object? stock = freezed,}) {
  return _then(_Variation(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WishlistStore {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "phone") String? get phone;@JsonKey(name: "email") String? get email;@JsonKey(name: "logo") String? get logo;@JsonKey(name: "latitude") String? get latitude;@JsonKey(name: "longitude") String? get longitude;@JsonKey(name: "address") String? get address;@JsonKey(name: "footer_text") dynamic get footerText;@JsonKey(name: "minimum_order") int? get minimumOrder;@JsonKey(name: "comission") dynamic get comission;@JsonKey(name: "schedule_order") bool? get scheduleOrder;@JsonKey(name: "status") int? get status;@JsonKey(name: "vendor_id") int? get vendorId;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "free_delivery") bool? get freeDelivery;@JsonKey(name: "cover_photo") String? get coverPhoto;@JsonKey(name: "delivery") bool? get delivery;@JsonKey(name: "take_away") bool? get takeAway;@JsonKey(name: "item_section") bool? get itemSection;@JsonKey(name: "tax") int? get tax;@JsonKey(name: "zone_id") int? get zoneId;@JsonKey(name: "reviews_section") bool? get reviewsSection;@JsonKey(name: "active") bool? get active;@JsonKey(name: "off_day") String? get offDay;@JsonKey(name: "self_delivery_system") int? get selfDeliverySystem;@JsonKey(name: "pos_system") bool? get posSystem;@JsonKey(name: "minimum_shipping_charge") int? get minimumShippingCharge;@JsonKey(name: "delivery_time") String? get deliveryTime;@JsonKey(name: "veg") int? get veg;@JsonKey(name: "non_veg") int? get nonVeg;@JsonKey(name: "order_count") int? get orderCount;@JsonKey(name: "total_order") int? get totalOrder;@JsonKey(name: "module_id") int? get moduleId;@JsonKey(name: "order_place_to_schedule_interval") int? get orderPlaceToScheduleInterval;@JsonKey(name: "featured") int? get featured;@JsonKey(name: "per_km_shipping_charge") int? get perKmShippingCharge;@JsonKey(name: "prescription_order") bool? get prescriptionOrder;@JsonKey(name: "slug") String? get slug;@JsonKey(name: "maximum_shipping_charge") dynamic get maximumShippingCharge;@JsonKey(name: "cutlery") bool? get cutlery;@JsonKey(name: "meta_title") String? get metaTitle;@JsonKey(name: "meta_description") String? get metaDescription;@JsonKey(name: "meta_image") String? get metaImage;@JsonKey(name: "announcement") int? get announcement;@JsonKey(name: "announcement_message") dynamic get announcementMessage;@JsonKey(name: "store_business_model") String? get storeBusinessModel;@JsonKey(name: "package_id") dynamic get packageId;@JsonKey(name: "pickup_zone_id") dynamic get pickupZoneId;@JsonKey(name: "comment") dynamic get comment;@JsonKey(name: "is_recommended") bool? get isRecommended;@JsonKey(name: "minimum_stock_for_warning") int? get minimumStockForWarning;@JsonKey(name: "halal_tag_status") bool? get halalTagStatus;@JsonKey(name: "extra_packaging_status") bool? get extraPackagingStatus;@JsonKey(name: "extra_packaging_amount") int? get extraPackagingAmount;@JsonKey(name: "ratings") List<int>? get ratings;@JsonKey(name: "avg_rating") int? get avgRating;@JsonKey(name: "rating_count") int? get ratingCount;@JsonKey(name: "positive_rating") int? get positiveRating;@JsonKey(name: "total_items") dynamic get totalItems;@JsonKey(name: "total_campaigns") dynamic get totalCampaigns;@JsonKey(name: "current_opening_time") String? get currentOpeningTime;@JsonKey(name: "gst_status") bool? get gstStatus;@JsonKey(name: "gst_code") String? get gstCode;@JsonKey(name: "logo_full_url") String? get logoFullUrl;@JsonKey(name: "cover_photo_full_url") String? get coverPhotoFullUrl;@JsonKey(name: "meta_image_full_url") String? get metaImageFullUrl;@JsonKey(name: "translations") List<Translation>? get translations;@JsonKey(name: "storage") List<StorageElement>? get storage;@JsonKey(name: "module") Module? get module;@JsonKey(name: "schedules") List<Schedule>? get schedules;
/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistStoreCopyWith<WishlistStore> get copyWith => _$WishlistStoreCopyWithImpl<WishlistStore>(this as WishlistStore, _$identity);

  /// Serializes this WishlistStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.footerText, footerText)&&(identical(other.minimumOrder, minimumOrder) || other.minimumOrder == minimumOrder)&&const DeepCollectionEquality().equals(other.comission, comission)&&(identical(other.scheduleOrder, scheduleOrder) || other.scheduleOrder == scheduleOrder)&&(identical(other.status, status) || other.status == status)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.freeDelivery, freeDelivery) || other.freeDelivery == freeDelivery)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.takeAway, takeAway) || other.takeAway == takeAway)&&(identical(other.itemSection, itemSection) || other.itemSection == itemSection)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.reviewsSection, reviewsSection) || other.reviewsSection == reviewsSection)&&(identical(other.active, active) || other.active == active)&&(identical(other.offDay, offDay) || other.offDay == offDay)&&(identical(other.selfDeliverySystem, selfDeliverySystem) || other.selfDeliverySystem == selfDeliverySystem)&&(identical(other.posSystem, posSystem) || other.posSystem == posSystem)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.nonVeg, nonVeg) || other.nonVeg == nonVeg)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalOrder, totalOrder) || other.totalOrder == totalOrder)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.orderPlaceToScheduleInterval, orderPlaceToScheduleInterval) || other.orderPlaceToScheduleInterval == orderPlaceToScheduleInterval)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.perKmShippingCharge, perKmShippingCharge) || other.perKmShippingCharge == perKmShippingCharge)&&(identical(other.prescriptionOrder, prescriptionOrder) || other.prescriptionOrder == prescriptionOrder)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.maximumShippingCharge, maximumShippingCharge)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&(identical(other.metaTitle, metaTitle) || other.metaTitle == metaTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaImage, metaImage) || other.metaImage == metaImage)&&(identical(other.announcement, announcement) || other.announcement == announcement)&&const DeepCollectionEquality().equals(other.announcementMessage, announcementMessage)&&(identical(other.storeBusinessModel, storeBusinessModel) || other.storeBusinessModel == storeBusinessModel)&&const DeepCollectionEquality().equals(other.packageId, packageId)&&const DeepCollectionEquality().equals(other.pickupZoneId, pickupZoneId)&&const DeepCollectionEquality().equals(other.comment, comment)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.minimumStockForWarning, minimumStockForWarning) || other.minimumStockForWarning == minimumStockForWarning)&&(identical(other.halalTagStatus, halalTagStatus) || other.halalTagStatus == halalTagStatus)&&(identical(other.extraPackagingStatus, extraPackagingStatus) || other.extraPackagingStatus == extraPackagingStatus)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&const DeepCollectionEquality().equals(other.ratings, ratings)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.positiveRating, positiveRating) || other.positiveRating == positiveRating)&&const DeepCollectionEquality().equals(other.totalItems, totalItems)&&const DeepCollectionEquality().equals(other.totalCampaigns, totalCampaigns)&&(identical(other.currentOpeningTime, currentOpeningTime) || other.currentOpeningTime == currentOpeningTime)&&(identical(other.gstStatus, gstStatus) || other.gstStatus == gstStatus)&&(identical(other.gstCode, gstCode) || other.gstCode == gstCode)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&(identical(other.metaImageFullUrl, metaImageFullUrl) || other.metaImageFullUrl == metaImageFullUrl)&&const DeepCollectionEquality().equals(other.translations, translations)&&const DeepCollectionEquality().equals(other.storage, storage)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other.schedules, schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,phone,email,logo,latitude,longitude,address,const DeepCollectionEquality().hash(footerText),minimumOrder,const DeepCollectionEquality().hash(comission),scheduleOrder,status,vendorId,createdAt,updatedAt,freeDelivery,coverPhoto,delivery,takeAway,itemSection,tax,zoneId,reviewsSection,active,offDay,selfDeliverySystem,posSystem,minimumShippingCharge,deliveryTime,veg,nonVeg,orderCount,totalOrder,moduleId,orderPlaceToScheduleInterval,featured,perKmShippingCharge,prescriptionOrder,slug,const DeepCollectionEquality().hash(maximumShippingCharge),cutlery,metaTitle,metaDescription,metaImage,announcement,const DeepCollectionEquality().hash(announcementMessage),storeBusinessModel,const DeepCollectionEquality().hash(packageId),const DeepCollectionEquality().hash(pickupZoneId),const DeepCollectionEquality().hash(comment),isRecommended,minimumStockForWarning,halalTagStatus,extraPackagingStatus,extraPackagingAmount,const DeepCollectionEquality().hash(ratings),avgRating,ratingCount,positiveRating,const DeepCollectionEquality().hash(totalItems),const DeepCollectionEquality().hash(totalCampaigns),currentOpeningTime,gstStatus,gstCode,logoFullUrl,coverPhotoFullUrl,metaImageFullUrl,const DeepCollectionEquality().hash(translations),const DeepCollectionEquality().hash(storage),module,const DeepCollectionEquality().hash(schedules)]);

@override
String toString() {
  return 'WishlistStore(id: $id, name: $name, phone: $phone, email: $email, logo: $logo, latitude: $latitude, longitude: $longitude, address: $address, footerText: $footerText, minimumOrder: $minimumOrder, comission: $comission, scheduleOrder: $scheduleOrder, status: $status, vendorId: $vendorId, createdAt: $createdAt, updatedAt: $updatedAt, freeDelivery: $freeDelivery, coverPhoto: $coverPhoto, delivery: $delivery, takeAway: $takeAway, itemSection: $itemSection, tax: $tax, zoneId: $zoneId, reviewsSection: $reviewsSection, active: $active, offDay: $offDay, selfDeliverySystem: $selfDeliverySystem, posSystem: $posSystem, minimumShippingCharge: $minimumShippingCharge, deliveryTime: $deliveryTime, veg: $veg, nonVeg: $nonVeg, orderCount: $orderCount, totalOrder: $totalOrder, moduleId: $moduleId, orderPlaceToScheduleInterval: $orderPlaceToScheduleInterval, featured: $featured, perKmShippingCharge: $perKmShippingCharge, prescriptionOrder: $prescriptionOrder, slug: $slug, maximumShippingCharge: $maximumShippingCharge, cutlery: $cutlery, metaTitle: $metaTitle, metaDescription: $metaDescription, metaImage: $metaImage, announcement: $announcement, announcementMessage: $announcementMessage, storeBusinessModel: $storeBusinessModel, packageId: $packageId, pickupZoneId: $pickupZoneId, comment: $comment, isRecommended: $isRecommended, minimumStockForWarning: $minimumStockForWarning, halalTagStatus: $halalTagStatus, extraPackagingStatus: $extraPackagingStatus, extraPackagingAmount: $extraPackagingAmount, ratings: $ratings, avgRating: $avgRating, ratingCount: $ratingCount, positiveRating: $positiveRating, totalItems: $totalItems, totalCampaigns: $totalCampaigns, currentOpeningTime: $currentOpeningTime, gstStatus: $gstStatus, gstCode: $gstCode, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, metaImageFullUrl: $metaImageFullUrl, translations: $translations, storage: $storage, module: $module, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class $WishlistStoreCopyWith<$Res>  {
  factory $WishlistStoreCopyWith(WishlistStore value, $Res Function(WishlistStore) _then) = _$WishlistStoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "phone") String? phone,@JsonKey(name: "email") String? email,@JsonKey(name: "logo") String? logo,@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude,@JsonKey(name: "address") String? address,@JsonKey(name: "footer_text") dynamic footerText,@JsonKey(name: "minimum_order") int? minimumOrder,@JsonKey(name: "comission") dynamic comission,@JsonKey(name: "schedule_order") bool? scheduleOrder,@JsonKey(name: "status") int? status,@JsonKey(name: "vendor_id") int? vendorId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "free_delivery") bool? freeDelivery,@JsonKey(name: "cover_photo") String? coverPhoto,@JsonKey(name: "delivery") bool? delivery,@JsonKey(name: "take_away") bool? takeAway,@JsonKey(name: "item_section") bool? itemSection,@JsonKey(name: "tax") int? tax,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "reviews_section") bool? reviewsSection,@JsonKey(name: "active") bool? active,@JsonKey(name: "off_day") String? offDay,@JsonKey(name: "self_delivery_system") int? selfDeliverySystem,@JsonKey(name: "pos_system") bool? posSystem,@JsonKey(name: "minimum_shipping_charge") int? minimumShippingCharge,@JsonKey(name: "delivery_time") String? deliveryTime,@JsonKey(name: "veg") int? veg,@JsonKey(name: "non_veg") int? nonVeg,@JsonKey(name: "order_count") int? orderCount,@JsonKey(name: "total_order") int? totalOrder,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "order_place_to_schedule_interval") int? orderPlaceToScheduleInterval,@JsonKey(name: "featured") int? featured,@JsonKey(name: "per_km_shipping_charge") int? perKmShippingCharge,@JsonKey(name: "prescription_order") bool? prescriptionOrder,@JsonKey(name: "slug") String? slug,@JsonKey(name: "maximum_shipping_charge") dynamic maximumShippingCharge,@JsonKey(name: "cutlery") bool? cutlery,@JsonKey(name: "meta_title") String? metaTitle,@JsonKey(name: "meta_description") String? metaDescription,@JsonKey(name: "meta_image") String? metaImage,@JsonKey(name: "announcement") int? announcement,@JsonKey(name: "announcement_message") dynamic announcementMessage,@JsonKey(name: "store_business_model") String? storeBusinessModel,@JsonKey(name: "package_id") dynamic packageId,@JsonKey(name: "pickup_zone_id") dynamic pickupZoneId,@JsonKey(name: "comment") dynamic comment,@JsonKey(name: "is_recommended") bool? isRecommended,@JsonKey(name: "minimum_stock_for_warning") int? minimumStockForWarning,@JsonKey(name: "halal_tag_status") bool? halalTagStatus,@JsonKey(name: "extra_packaging_status") bool? extraPackagingStatus,@JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,@JsonKey(name: "ratings") List<int>? ratings,@JsonKey(name: "avg_rating") int? avgRating,@JsonKey(name: "rating_count") int? ratingCount,@JsonKey(name: "positive_rating") int? positiveRating,@JsonKey(name: "total_items") dynamic totalItems,@JsonKey(name: "total_campaigns") dynamic totalCampaigns,@JsonKey(name: "current_opening_time") String? currentOpeningTime,@JsonKey(name: "gst_status") bool? gstStatus,@JsonKey(name: "gst_code") String? gstCode,@JsonKey(name: "logo_full_url") String? logoFullUrl,@JsonKey(name: "cover_photo_full_url") String? coverPhotoFullUrl,@JsonKey(name: "meta_image_full_url") String? metaImageFullUrl,@JsonKey(name: "translations") List<Translation>? translations,@JsonKey(name: "storage") List<StorageElement>? storage,@JsonKey(name: "module") Module? module,@JsonKey(name: "schedules") List<Schedule>? schedules
});


$ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class _$WishlistStoreCopyWithImpl<$Res>
    implements $WishlistStoreCopyWith<$Res> {
  _$WishlistStoreCopyWithImpl(this._self, this._then);

  final WishlistStore _self;
  final $Res Function(WishlistStore) _then;

/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? email = freezed,Object? logo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? address = freezed,Object? footerText = freezed,Object? minimumOrder = freezed,Object? comission = freezed,Object? scheduleOrder = freezed,Object? status = freezed,Object? vendorId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? freeDelivery = freezed,Object? coverPhoto = freezed,Object? delivery = freezed,Object? takeAway = freezed,Object? itemSection = freezed,Object? tax = freezed,Object? zoneId = freezed,Object? reviewsSection = freezed,Object? active = freezed,Object? offDay = freezed,Object? selfDeliverySystem = freezed,Object? posSystem = freezed,Object? minimumShippingCharge = freezed,Object? deliveryTime = freezed,Object? veg = freezed,Object? nonVeg = freezed,Object? orderCount = freezed,Object? totalOrder = freezed,Object? moduleId = freezed,Object? orderPlaceToScheduleInterval = freezed,Object? featured = freezed,Object? perKmShippingCharge = freezed,Object? prescriptionOrder = freezed,Object? slug = freezed,Object? maximumShippingCharge = freezed,Object? cutlery = freezed,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaImage = freezed,Object? announcement = freezed,Object? announcementMessage = freezed,Object? storeBusinessModel = freezed,Object? packageId = freezed,Object? pickupZoneId = freezed,Object? comment = freezed,Object? isRecommended = freezed,Object? minimumStockForWarning = freezed,Object? halalTagStatus = freezed,Object? extraPackagingStatus = freezed,Object? extraPackagingAmount = freezed,Object? ratings = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? positiveRating = freezed,Object? totalItems = freezed,Object? totalCampaigns = freezed,Object? currentOpeningTime = freezed,Object? gstStatus = freezed,Object? gstCode = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,Object? metaImageFullUrl = freezed,Object? translations = freezed,Object? storage = freezed,Object? module = freezed,Object? schedules = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,footerText: freezed == footerText ? _self.footerText : footerText // ignore: cast_nullable_to_non_nullable
as dynamic,minimumOrder: freezed == minimumOrder ? _self.minimumOrder : minimumOrder // ignore: cast_nullable_to_non_nullable
as int?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as dynamic,scheduleOrder: freezed == scheduleOrder ? _self.scheduleOrder : scheduleOrder // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,freeDelivery: freezed == freeDelivery ? _self.freeDelivery : freeDelivery // ignore: cast_nullable_to_non_nullable
as bool?,coverPhoto: freezed == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,takeAway: freezed == takeAway ? _self.takeAway : takeAway // ignore: cast_nullable_to_non_nullable
as bool?,itemSection: freezed == itemSection ? _self.itemSection : itemSection // ignore: cast_nullable_to_non_nullable
as bool?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,reviewsSection: freezed == reviewsSection ? _self.reviewsSection : reviewsSection // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,offDay: freezed == offDay ? _self.offDay : offDay // ignore: cast_nullable_to_non_nullable
as String?,selfDeliverySystem: freezed == selfDeliverySystem ? _self.selfDeliverySystem : selfDeliverySystem // ignore: cast_nullable_to_non_nullable
as int?,posSystem: freezed == posSystem ? _self.posSystem : posSystem // ignore: cast_nullable_to_non_nullable
as bool?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,veg: freezed == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as int?,nonVeg: freezed == nonVeg ? _self.nonVeg : nonVeg // ignore: cast_nullable_to_non_nullable
as int?,orderCount: freezed == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int?,totalOrder: freezed == totalOrder ? _self.totalOrder : totalOrder // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,orderPlaceToScheduleInterval: freezed == orderPlaceToScheduleInterval ? _self.orderPlaceToScheduleInterval : orderPlaceToScheduleInterval // ignore: cast_nullable_to_non_nullable
as int?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,perKmShippingCharge: freezed == perKmShippingCharge ? _self.perKmShippingCharge : perKmShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,prescriptionOrder: freezed == prescriptionOrder ? _self.prescriptionOrder : prescriptionOrder // ignore: cast_nullable_to_non_nullable
as bool?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,maximumShippingCharge: freezed == maximumShippingCharge ? _self.maximumShippingCharge : maximumShippingCharge // ignore: cast_nullable_to_non_nullable
as dynamic,cutlery: freezed == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool?,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaImage: freezed == metaImage ? _self.metaImage : metaImage // ignore: cast_nullable_to_non_nullable
as String?,announcement: freezed == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as int?,announcementMessage: freezed == announcementMessage ? _self.announcementMessage : announcementMessage // ignore: cast_nullable_to_non_nullable
as dynamic,storeBusinessModel: freezed == storeBusinessModel ? _self.storeBusinessModel : storeBusinessModel // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as dynamic,pickupZoneId: freezed == pickupZoneId ? _self.pickupZoneId : pickupZoneId // ignore: cast_nullable_to_non_nullable
as dynamic,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,isRecommended: freezed == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool?,minimumStockForWarning: freezed == minimumStockForWarning ? _self.minimumStockForWarning : minimumStockForWarning // ignore: cast_nullable_to_non_nullable
as int?,halalTagStatus: freezed == halalTagStatus ? _self.halalTagStatus : halalTagStatus // ignore: cast_nullable_to_non_nullable
as bool?,extraPackagingStatus: freezed == extraPackagingStatus ? _self.extraPackagingStatus : extraPackagingStatus // ignore: cast_nullable_to_non_nullable
as bool?,extraPackagingAmount: freezed == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as int?,ratings: freezed == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<int>?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,positiveRating: freezed == positiveRating ? _self.positiveRating : positiveRating // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as dynamic,totalCampaigns: freezed == totalCampaigns ? _self.totalCampaigns : totalCampaigns // ignore: cast_nullable_to_non_nullable
as dynamic,currentOpeningTime: freezed == currentOpeningTime ? _self.currentOpeningTime : currentOpeningTime // ignore: cast_nullable_to_non_nullable
as String?,gstStatus: freezed == gstStatus ? _self.gstStatus : gstStatus // ignore: cast_nullable_to_non_nullable
as bool?,gstCode: freezed == gstCode ? _self.gstCode : gstCode // ignore: cast_nullable_to_non_nullable
as String?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,metaImageFullUrl: freezed == metaImageFullUrl ? _self.metaImageFullUrl : metaImageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<StorageElement>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,schedules: freezed == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>?,
  ));
}
/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _WishlistStore implements WishlistStore {
  const _WishlistStore({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "phone") this.phone, @JsonKey(name: "email") this.email, @JsonKey(name: "logo") this.logo, @JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude, @JsonKey(name: "address") this.address, @JsonKey(name: "footer_text") this.footerText, @JsonKey(name: "minimum_order") this.minimumOrder, @JsonKey(name: "comission") this.comission, @JsonKey(name: "schedule_order") this.scheduleOrder, @JsonKey(name: "status") this.status, @JsonKey(name: "vendor_id") this.vendorId, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "free_delivery") this.freeDelivery, @JsonKey(name: "cover_photo") this.coverPhoto, @JsonKey(name: "delivery") this.delivery, @JsonKey(name: "take_away") this.takeAway, @JsonKey(name: "item_section") this.itemSection, @JsonKey(name: "tax") this.tax, @JsonKey(name: "zone_id") this.zoneId, @JsonKey(name: "reviews_section") this.reviewsSection, @JsonKey(name: "active") this.active, @JsonKey(name: "off_day") this.offDay, @JsonKey(name: "self_delivery_system") this.selfDeliverySystem, @JsonKey(name: "pos_system") this.posSystem, @JsonKey(name: "minimum_shipping_charge") this.minimumShippingCharge, @JsonKey(name: "delivery_time") this.deliveryTime, @JsonKey(name: "veg") this.veg, @JsonKey(name: "non_veg") this.nonVeg, @JsonKey(name: "order_count") this.orderCount, @JsonKey(name: "total_order") this.totalOrder, @JsonKey(name: "module_id") this.moduleId, @JsonKey(name: "order_place_to_schedule_interval") this.orderPlaceToScheduleInterval, @JsonKey(name: "featured") this.featured, @JsonKey(name: "per_km_shipping_charge") this.perKmShippingCharge, @JsonKey(name: "prescription_order") this.prescriptionOrder, @JsonKey(name: "slug") this.slug, @JsonKey(name: "maximum_shipping_charge") this.maximumShippingCharge, @JsonKey(name: "cutlery") this.cutlery, @JsonKey(name: "meta_title") this.metaTitle, @JsonKey(name: "meta_description") this.metaDescription, @JsonKey(name: "meta_image") this.metaImage, @JsonKey(name: "announcement") this.announcement, @JsonKey(name: "announcement_message") this.announcementMessage, @JsonKey(name: "store_business_model") this.storeBusinessModel, @JsonKey(name: "package_id") this.packageId, @JsonKey(name: "pickup_zone_id") this.pickupZoneId, @JsonKey(name: "comment") this.comment, @JsonKey(name: "is_recommended") this.isRecommended, @JsonKey(name: "minimum_stock_for_warning") this.minimumStockForWarning, @JsonKey(name: "halal_tag_status") this.halalTagStatus, @JsonKey(name: "extra_packaging_status") this.extraPackagingStatus, @JsonKey(name: "extra_packaging_amount") this.extraPackagingAmount, @JsonKey(name: "ratings") final  List<int>? ratings, @JsonKey(name: "avg_rating") this.avgRating, @JsonKey(name: "rating_count") this.ratingCount, @JsonKey(name: "positive_rating") this.positiveRating, @JsonKey(name: "total_items") this.totalItems, @JsonKey(name: "total_campaigns") this.totalCampaigns, @JsonKey(name: "current_opening_time") this.currentOpeningTime, @JsonKey(name: "gst_status") this.gstStatus, @JsonKey(name: "gst_code") this.gstCode, @JsonKey(name: "logo_full_url") this.logoFullUrl, @JsonKey(name: "cover_photo_full_url") this.coverPhotoFullUrl, @JsonKey(name: "meta_image_full_url") this.metaImageFullUrl, @JsonKey(name: "translations") final  List<Translation>? translations, @JsonKey(name: "storage") final  List<StorageElement>? storage, @JsonKey(name: "module") this.module, @JsonKey(name: "schedules") final  List<Schedule>? schedules}): _ratings = ratings,_translations = translations,_storage = storage,_schedules = schedules;
  factory _WishlistStore.fromJson(Map<String, dynamic> json) => _$WishlistStoreFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "phone") final  String? phone;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "logo") final  String? logo;
@override@JsonKey(name: "latitude") final  String? latitude;
@override@JsonKey(name: "longitude") final  String? longitude;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "footer_text") final  dynamic footerText;
@override@JsonKey(name: "minimum_order") final  int? minimumOrder;
@override@JsonKey(name: "comission") final  dynamic comission;
@override@JsonKey(name: "schedule_order") final  bool? scheduleOrder;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "vendor_id") final  int? vendorId;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "free_delivery") final  bool? freeDelivery;
@override@JsonKey(name: "cover_photo") final  String? coverPhoto;
@override@JsonKey(name: "delivery") final  bool? delivery;
@override@JsonKey(name: "take_away") final  bool? takeAway;
@override@JsonKey(name: "item_section") final  bool? itemSection;
@override@JsonKey(name: "tax") final  int? tax;
@override@JsonKey(name: "zone_id") final  int? zoneId;
@override@JsonKey(name: "reviews_section") final  bool? reviewsSection;
@override@JsonKey(name: "active") final  bool? active;
@override@JsonKey(name: "off_day") final  String? offDay;
@override@JsonKey(name: "self_delivery_system") final  int? selfDeliverySystem;
@override@JsonKey(name: "pos_system") final  bool? posSystem;
@override@JsonKey(name: "minimum_shipping_charge") final  int? minimumShippingCharge;
@override@JsonKey(name: "delivery_time") final  String? deliveryTime;
@override@JsonKey(name: "veg") final  int? veg;
@override@JsonKey(name: "non_veg") final  int? nonVeg;
@override@JsonKey(name: "order_count") final  int? orderCount;
@override@JsonKey(name: "total_order") final  int? totalOrder;
@override@JsonKey(name: "module_id") final  int? moduleId;
@override@JsonKey(name: "order_place_to_schedule_interval") final  int? orderPlaceToScheduleInterval;
@override@JsonKey(name: "featured") final  int? featured;
@override@JsonKey(name: "per_km_shipping_charge") final  int? perKmShippingCharge;
@override@JsonKey(name: "prescription_order") final  bool? prescriptionOrder;
@override@JsonKey(name: "slug") final  String? slug;
@override@JsonKey(name: "maximum_shipping_charge") final  dynamic maximumShippingCharge;
@override@JsonKey(name: "cutlery") final  bool? cutlery;
@override@JsonKey(name: "meta_title") final  String? metaTitle;
@override@JsonKey(name: "meta_description") final  String? metaDescription;
@override@JsonKey(name: "meta_image") final  String? metaImage;
@override@JsonKey(name: "announcement") final  int? announcement;
@override@JsonKey(name: "announcement_message") final  dynamic announcementMessage;
@override@JsonKey(name: "store_business_model") final  String? storeBusinessModel;
@override@JsonKey(name: "package_id") final  dynamic packageId;
@override@JsonKey(name: "pickup_zone_id") final  dynamic pickupZoneId;
@override@JsonKey(name: "comment") final  dynamic comment;
@override@JsonKey(name: "is_recommended") final  bool? isRecommended;
@override@JsonKey(name: "minimum_stock_for_warning") final  int? minimumStockForWarning;
@override@JsonKey(name: "halal_tag_status") final  bool? halalTagStatus;
@override@JsonKey(name: "extra_packaging_status") final  bool? extraPackagingStatus;
@override@JsonKey(name: "extra_packaging_amount") final  int? extraPackagingAmount;
 final  List<int>? _ratings;
@override@JsonKey(name: "ratings") List<int>? get ratings {
  final value = _ratings;
  if (value == null) return null;
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "avg_rating") final  int? avgRating;
@override@JsonKey(name: "rating_count") final  int? ratingCount;
@override@JsonKey(name: "positive_rating") final  int? positiveRating;
@override@JsonKey(name: "total_items") final  dynamic totalItems;
@override@JsonKey(name: "total_campaigns") final  dynamic totalCampaigns;
@override@JsonKey(name: "current_opening_time") final  String? currentOpeningTime;
@override@JsonKey(name: "gst_status") final  bool? gstStatus;
@override@JsonKey(name: "gst_code") final  String? gstCode;
@override@JsonKey(name: "logo_full_url") final  String? logoFullUrl;
@override@JsonKey(name: "cover_photo_full_url") final  String? coverPhotoFullUrl;
@override@JsonKey(name: "meta_image_full_url") final  String? metaImageFullUrl;
 final  List<Translation>? _translations;
@override@JsonKey(name: "translations") List<Translation>? get translations {
  final value = _translations;
  if (value == null) return null;
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<StorageElement>? _storage;
@override@JsonKey(name: "storage") List<StorageElement>? get storage {
  final value = _storage;
  if (value == null) return null;
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "module") final  Module? module;
 final  List<Schedule>? _schedules;
@override@JsonKey(name: "schedules") List<Schedule>? get schedules {
  final value = _schedules;
  if (value == null) return null;
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistStoreCopyWith<_WishlistStore> get copyWith => __$WishlistStoreCopyWithImpl<_WishlistStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.footerText, footerText)&&(identical(other.minimumOrder, minimumOrder) || other.minimumOrder == minimumOrder)&&const DeepCollectionEquality().equals(other.comission, comission)&&(identical(other.scheduleOrder, scheduleOrder) || other.scheduleOrder == scheduleOrder)&&(identical(other.status, status) || other.status == status)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.freeDelivery, freeDelivery) || other.freeDelivery == freeDelivery)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.takeAway, takeAway) || other.takeAway == takeAway)&&(identical(other.itemSection, itemSection) || other.itemSection == itemSection)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.reviewsSection, reviewsSection) || other.reviewsSection == reviewsSection)&&(identical(other.active, active) || other.active == active)&&(identical(other.offDay, offDay) || other.offDay == offDay)&&(identical(other.selfDeliverySystem, selfDeliverySystem) || other.selfDeliverySystem == selfDeliverySystem)&&(identical(other.posSystem, posSystem) || other.posSystem == posSystem)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.nonVeg, nonVeg) || other.nonVeg == nonVeg)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalOrder, totalOrder) || other.totalOrder == totalOrder)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.orderPlaceToScheduleInterval, orderPlaceToScheduleInterval) || other.orderPlaceToScheduleInterval == orderPlaceToScheduleInterval)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.perKmShippingCharge, perKmShippingCharge) || other.perKmShippingCharge == perKmShippingCharge)&&(identical(other.prescriptionOrder, prescriptionOrder) || other.prescriptionOrder == prescriptionOrder)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.maximumShippingCharge, maximumShippingCharge)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&(identical(other.metaTitle, metaTitle) || other.metaTitle == metaTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaImage, metaImage) || other.metaImage == metaImage)&&(identical(other.announcement, announcement) || other.announcement == announcement)&&const DeepCollectionEquality().equals(other.announcementMessage, announcementMessage)&&(identical(other.storeBusinessModel, storeBusinessModel) || other.storeBusinessModel == storeBusinessModel)&&const DeepCollectionEquality().equals(other.packageId, packageId)&&const DeepCollectionEquality().equals(other.pickupZoneId, pickupZoneId)&&const DeepCollectionEquality().equals(other.comment, comment)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.minimumStockForWarning, minimumStockForWarning) || other.minimumStockForWarning == minimumStockForWarning)&&(identical(other.halalTagStatus, halalTagStatus) || other.halalTagStatus == halalTagStatus)&&(identical(other.extraPackagingStatus, extraPackagingStatus) || other.extraPackagingStatus == extraPackagingStatus)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&const DeepCollectionEquality().equals(other._ratings, _ratings)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.positiveRating, positiveRating) || other.positiveRating == positiveRating)&&const DeepCollectionEquality().equals(other.totalItems, totalItems)&&const DeepCollectionEquality().equals(other.totalCampaigns, totalCampaigns)&&(identical(other.currentOpeningTime, currentOpeningTime) || other.currentOpeningTime == currentOpeningTime)&&(identical(other.gstStatus, gstStatus) || other.gstStatus == gstStatus)&&(identical(other.gstCode, gstCode) || other.gstCode == gstCode)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&(identical(other.metaImageFullUrl, metaImageFullUrl) || other.metaImageFullUrl == metaImageFullUrl)&&const DeepCollectionEquality().equals(other._translations, _translations)&&const DeepCollectionEquality().equals(other._storage, _storage)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other._schedules, _schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,phone,email,logo,latitude,longitude,address,const DeepCollectionEquality().hash(footerText),minimumOrder,const DeepCollectionEquality().hash(comission),scheduleOrder,status,vendorId,createdAt,updatedAt,freeDelivery,coverPhoto,delivery,takeAway,itemSection,tax,zoneId,reviewsSection,active,offDay,selfDeliverySystem,posSystem,minimumShippingCharge,deliveryTime,veg,nonVeg,orderCount,totalOrder,moduleId,orderPlaceToScheduleInterval,featured,perKmShippingCharge,prescriptionOrder,slug,const DeepCollectionEquality().hash(maximumShippingCharge),cutlery,metaTitle,metaDescription,metaImage,announcement,const DeepCollectionEquality().hash(announcementMessage),storeBusinessModel,const DeepCollectionEquality().hash(packageId),const DeepCollectionEquality().hash(pickupZoneId),const DeepCollectionEquality().hash(comment),isRecommended,minimumStockForWarning,halalTagStatus,extraPackagingStatus,extraPackagingAmount,const DeepCollectionEquality().hash(_ratings),avgRating,ratingCount,positiveRating,const DeepCollectionEquality().hash(totalItems),const DeepCollectionEquality().hash(totalCampaigns),currentOpeningTime,gstStatus,gstCode,logoFullUrl,coverPhotoFullUrl,metaImageFullUrl,const DeepCollectionEquality().hash(_translations),const DeepCollectionEquality().hash(_storage),module,const DeepCollectionEquality().hash(_schedules)]);

@override
String toString() {
  return 'WishlistStore(id: $id, name: $name, phone: $phone, email: $email, logo: $logo, latitude: $latitude, longitude: $longitude, address: $address, footerText: $footerText, minimumOrder: $minimumOrder, comission: $comission, scheduleOrder: $scheduleOrder, status: $status, vendorId: $vendorId, createdAt: $createdAt, updatedAt: $updatedAt, freeDelivery: $freeDelivery, coverPhoto: $coverPhoto, delivery: $delivery, takeAway: $takeAway, itemSection: $itemSection, tax: $tax, zoneId: $zoneId, reviewsSection: $reviewsSection, active: $active, offDay: $offDay, selfDeliverySystem: $selfDeliverySystem, posSystem: $posSystem, minimumShippingCharge: $minimumShippingCharge, deliveryTime: $deliveryTime, veg: $veg, nonVeg: $nonVeg, orderCount: $orderCount, totalOrder: $totalOrder, moduleId: $moduleId, orderPlaceToScheduleInterval: $orderPlaceToScheduleInterval, featured: $featured, perKmShippingCharge: $perKmShippingCharge, prescriptionOrder: $prescriptionOrder, slug: $slug, maximumShippingCharge: $maximumShippingCharge, cutlery: $cutlery, metaTitle: $metaTitle, metaDescription: $metaDescription, metaImage: $metaImage, announcement: $announcement, announcementMessage: $announcementMessage, storeBusinessModel: $storeBusinessModel, packageId: $packageId, pickupZoneId: $pickupZoneId, comment: $comment, isRecommended: $isRecommended, minimumStockForWarning: $minimumStockForWarning, halalTagStatus: $halalTagStatus, extraPackagingStatus: $extraPackagingStatus, extraPackagingAmount: $extraPackagingAmount, ratings: $ratings, avgRating: $avgRating, ratingCount: $ratingCount, positiveRating: $positiveRating, totalItems: $totalItems, totalCampaigns: $totalCampaigns, currentOpeningTime: $currentOpeningTime, gstStatus: $gstStatus, gstCode: $gstCode, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, metaImageFullUrl: $metaImageFullUrl, translations: $translations, storage: $storage, module: $module, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class _$WishlistStoreCopyWith<$Res> implements $WishlistStoreCopyWith<$Res> {
  factory _$WishlistStoreCopyWith(_WishlistStore value, $Res Function(_WishlistStore) _then) = __$WishlistStoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "phone") String? phone,@JsonKey(name: "email") String? email,@JsonKey(name: "logo") String? logo,@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude,@JsonKey(name: "address") String? address,@JsonKey(name: "footer_text") dynamic footerText,@JsonKey(name: "minimum_order") int? minimumOrder,@JsonKey(name: "comission") dynamic comission,@JsonKey(name: "schedule_order") bool? scheduleOrder,@JsonKey(name: "status") int? status,@JsonKey(name: "vendor_id") int? vendorId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "free_delivery") bool? freeDelivery,@JsonKey(name: "cover_photo") String? coverPhoto,@JsonKey(name: "delivery") bool? delivery,@JsonKey(name: "take_away") bool? takeAway,@JsonKey(name: "item_section") bool? itemSection,@JsonKey(name: "tax") int? tax,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "reviews_section") bool? reviewsSection,@JsonKey(name: "active") bool? active,@JsonKey(name: "off_day") String? offDay,@JsonKey(name: "self_delivery_system") int? selfDeliverySystem,@JsonKey(name: "pos_system") bool? posSystem,@JsonKey(name: "minimum_shipping_charge") int? minimumShippingCharge,@JsonKey(name: "delivery_time") String? deliveryTime,@JsonKey(name: "veg") int? veg,@JsonKey(name: "non_veg") int? nonVeg,@JsonKey(name: "order_count") int? orderCount,@JsonKey(name: "total_order") int? totalOrder,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "order_place_to_schedule_interval") int? orderPlaceToScheduleInterval,@JsonKey(name: "featured") int? featured,@JsonKey(name: "per_km_shipping_charge") int? perKmShippingCharge,@JsonKey(name: "prescription_order") bool? prescriptionOrder,@JsonKey(name: "slug") String? slug,@JsonKey(name: "maximum_shipping_charge") dynamic maximumShippingCharge,@JsonKey(name: "cutlery") bool? cutlery,@JsonKey(name: "meta_title") String? metaTitle,@JsonKey(name: "meta_description") String? metaDescription,@JsonKey(name: "meta_image") String? metaImage,@JsonKey(name: "announcement") int? announcement,@JsonKey(name: "announcement_message") dynamic announcementMessage,@JsonKey(name: "store_business_model") String? storeBusinessModel,@JsonKey(name: "package_id") dynamic packageId,@JsonKey(name: "pickup_zone_id") dynamic pickupZoneId,@JsonKey(name: "comment") dynamic comment,@JsonKey(name: "is_recommended") bool? isRecommended,@JsonKey(name: "minimum_stock_for_warning") int? minimumStockForWarning,@JsonKey(name: "halal_tag_status") bool? halalTagStatus,@JsonKey(name: "extra_packaging_status") bool? extraPackagingStatus,@JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,@JsonKey(name: "ratings") List<int>? ratings,@JsonKey(name: "avg_rating") int? avgRating,@JsonKey(name: "rating_count") int? ratingCount,@JsonKey(name: "positive_rating") int? positiveRating,@JsonKey(name: "total_items") dynamic totalItems,@JsonKey(name: "total_campaigns") dynamic totalCampaigns,@JsonKey(name: "current_opening_time") String? currentOpeningTime,@JsonKey(name: "gst_status") bool? gstStatus,@JsonKey(name: "gst_code") String? gstCode,@JsonKey(name: "logo_full_url") String? logoFullUrl,@JsonKey(name: "cover_photo_full_url") String? coverPhotoFullUrl,@JsonKey(name: "meta_image_full_url") String? metaImageFullUrl,@JsonKey(name: "translations") List<Translation>? translations,@JsonKey(name: "storage") List<StorageElement>? storage,@JsonKey(name: "module") Module? module,@JsonKey(name: "schedules") List<Schedule>? schedules
});


@override $ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class __$WishlistStoreCopyWithImpl<$Res>
    implements _$WishlistStoreCopyWith<$Res> {
  __$WishlistStoreCopyWithImpl(this._self, this._then);

  final _WishlistStore _self;
  final $Res Function(_WishlistStore) _then;

/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? email = freezed,Object? logo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? address = freezed,Object? footerText = freezed,Object? minimumOrder = freezed,Object? comission = freezed,Object? scheduleOrder = freezed,Object? status = freezed,Object? vendorId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? freeDelivery = freezed,Object? coverPhoto = freezed,Object? delivery = freezed,Object? takeAway = freezed,Object? itemSection = freezed,Object? tax = freezed,Object? zoneId = freezed,Object? reviewsSection = freezed,Object? active = freezed,Object? offDay = freezed,Object? selfDeliverySystem = freezed,Object? posSystem = freezed,Object? minimumShippingCharge = freezed,Object? deliveryTime = freezed,Object? veg = freezed,Object? nonVeg = freezed,Object? orderCount = freezed,Object? totalOrder = freezed,Object? moduleId = freezed,Object? orderPlaceToScheduleInterval = freezed,Object? featured = freezed,Object? perKmShippingCharge = freezed,Object? prescriptionOrder = freezed,Object? slug = freezed,Object? maximumShippingCharge = freezed,Object? cutlery = freezed,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaImage = freezed,Object? announcement = freezed,Object? announcementMessage = freezed,Object? storeBusinessModel = freezed,Object? packageId = freezed,Object? pickupZoneId = freezed,Object? comment = freezed,Object? isRecommended = freezed,Object? minimumStockForWarning = freezed,Object? halalTagStatus = freezed,Object? extraPackagingStatus = freezed,Object? extraPackagingAmount = freezed,Object? ratings = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? positiveRating = freezed,Object? totalItems = freezed,Object? totalCampaigns = freezed,Object? currentOpeningTime = freezed,Object? gstStatus = freezed,Object? gstCode = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,Object? metaImageFullUrl = freezed,Object? translations = freezed,Object? storage = freezed,Object? module = freezed,Object? schedules = freezed,}) {
  return _then(_WishlistStore(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,footerText: freezed == footerText ? _self.footerText : footerText // ignore: cast_nullable_to_non_nullable
as dynamic,minimumOrder: freezed == minimumOrder ? _self.minimumOrder : minimumOrder // ignore: cast_nullable_to_non_nullable
as int?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as dynamic,scheduleOrder: freezed == scheduleOrder ? _self.scheduleOrder : scheduleOrder // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,freeDelivery: freezed == freeDelivery ? _self.freeDelivery : freeDelivery // ignore: cast_nullable_to_non_nullable
as bool?,coverPhoto: freezed == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,takeAway: freezed == takeAway ? _self.takeAway : takeAway // ignore: cast_nullable_to_non_nullable
as bool?,itemSection: freezed == itemSection ? _self.itemSection : itemSection // ignore: cast_nullable_to_non_nullable
as bool?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,reviewsSection: freezed == reviewsSection ? _self.reviewsSection : reviewsSection // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,offDay: freezed == offDay ? _self.offDay : offDay // ignore: cast_nullable_to_non_nullable
as String?,selfDeliverySystem: freezed == selfDeliverySystem ? _self.selfDeliverySystem : selfDeliverySystem // ignore: cast_nullable_to_non_nullable
as int?,posSystem: freezed == posSystem ? _self.posSystem : posSystem // ignore: cast_nullable_to_non_nullable
as bool?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,veg: freezed == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as int?,nonVeg: freezed == nonVeg ? _self.nonVeg : nonVeg // ignore: cast_nullable_to_non_nullable
as int?,orderCount: freezed == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int?,totalOrder: freezed == totalOrder ? _self.totalOrder : totalOrder // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,orderPlaceToScheduleInterval: freezed == orderPlaceToScheduleInterval ? _self.orderPlaceToScheduleInterval : orderPlaceToScheduleInterval // ignore: cast_nullable_to_non_nullable
as int?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,perKmShippingCharge: freezed == perKmShippingCharge ? _self.perKmShippingCharge : perKmShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,prescriptionOrder: freezed == prescriptionOrder ? _self.prescriptionOrder : prescriptionOrder // ignore: cast_nullable_to_non_nullable
as bool?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,maximumShippingCharge: freezed == maximumShippingCharge ? _self.maximumShippingCharge : maximumShippingCharge // ignore: cast_nullable_to_non_nullable
as dynamic,cutlery: freezed == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool?,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaImage: freezed == metaImage ? _self.metaImage : metaImage // ignore: cast_nullable_to_non_nullable
as String?,announcement: freezed == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as int?,announcementMessage: freezed == announcementMessage ? _self.announcementMessage : announcementMessage // ignore: cast_nullable_to_non_nullable
as dynamic,storeBusinessModel: freezed == storeBusinessModel ? _self.storeBusinessModel : storeBusinessModel // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as dynamic,pickupZoneId: freezed == pickupZoneId ? _self.pickupZoneId : pickupZoneId // ignore: cast_nullable_to_non_nullable
as dynamic,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,isRecommended: freezed == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool?,minimumStockForWarning: freezed == minimumStockForWarning ? _self.minimumStockForWarning : minimumStockForWarning // ignore: cast_nullable_to_non_nullable
as int?,halalTagStatus: freezed == halalTagStatus ? _self.halalTagStatus : halalTagStatus // ignore: cast_nullable_to_non_nullable
as bool?,extraPackagingStatus: freezed == extraPackagingStatus ? _self.extraPackagingStatus : extraPackagingStatus // ignore: cast_nullable_to_non_nullable
as bool?,extraPackagingAmount: freezed == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as int?,ratings: freezed == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<int>?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,positiveRating: freezed == positiveRating ? _self.positiveRating : positiveRating // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as dynamic,totalCampaigns: freezed == totalCampaigns ? _self.totalCampaigns : totalCampaigns // ignore: cast_nullable_to_non_nullable
as dynamic,currentOpeningTime: freezed == currentOpeningTime ? _self.currentOpeningTime : currentOpeningTime // ignore: cast_nullable_to_non_nullable
as String?,gstStatus: freezed == gstStatus ? _self.gstStatus : gstStatus // ignore: cast_nullable_to_non_nullable
as bool?,gstCode: freezed == gstCode ? _self.gstCode : gstCode // ignore: cast_nullable_to_non_nullable
as String?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,metaImageFullUrl: freezed == metaImageFullUrl ? _self.metaImageFullUrl : metaImageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,translations: freezed == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,storage: freezed == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<StorageElement>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,schedules: freezed == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>?,
  ));
}

/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
mixin _$Schedule {

@JsonKey(name: "id") int? get id;@JsonKey(name: "store_id") int? get storeId;@JsonKey(name: "day") int? get day;@JsonKey(name: "opening_time") String? get openingTime;@JsonKey(name: "closing_time") String? get closingTime;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(this as Schedule, _$identity);

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.day, day) || other.day == day)&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,day,openingTime,closingTime,createdAt,updatedAt);

@override
String toString() {
  return 'Schedule(id: $id, storeId: $storeId, day: $day, openingTime: $openingTime, closingTime: $closingTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ScheduleCopyWith<$Res>  {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) _then) = _$ScheduleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "day") int? day,@JsonKey(name: "opening_time") String? openingTime,@JsonKey(name: "closing_time") String? closingTime,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class _$ScheduleCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._self, this._then);

  final Schedule _self;
  final $Res Function(Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? storeId = freezed,Object? day = freezed,Object? openingTime = freezed,Object? closingTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,openingTime: freezed == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as String?,closingTime: freezed == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Schedule implements Schedule {
  const _Schedule({@JsonKey(name: "id") this.id, @JsonKey(name: "store_id") this.storeId, @JsonKey(name: "day") this.day, @JsonKey(name: "opening_time") this.openingTime, @JsonKey(name: "closing_time") this.closingTime, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt});
  factory _Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "store_id") final  int? storeId;
@override@JsonKey(name: "day") final  int? day;
@override@JsonKey(name: "opening_time") final  String? openingTime;
@override@JsonKey(name: "closing_time") final  String? closingTime;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleCopyWith<_Schedule> get copyWith => __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.day, day) || other.day == day)&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,day,openingTime,closingTime,createdAt,updatedAt);

@override
String toString() {
  return 'Schedule(id: $id, storeId: $storeId, day: $day, openingTime: $openingTime, closingTime: $closingTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) _then) = __$ScheduleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "day") int? day,@JsonKey(name: "opening_time") String? openingTime,@JsonKey(name: "closing_time") String? closingTime,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class __$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(this._self, this._then);

  final _Schedule _self;
  final $Res Function(_Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? storeId = freezed,Object? day = freezed,Object? openingTime = freezed,Object? closingTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Schedule(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,openingTime: freezed == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as String?,closingTime: freezed == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
