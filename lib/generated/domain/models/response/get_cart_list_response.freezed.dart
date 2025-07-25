// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_cart_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCartListResponse {

@JsonKey(name: "stores") List<GetCartListStore>? get stores;@JsonKey(name: "summary") GetCartListSummary? get summary;
/// Create a copy of GetCartListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartListResponseCopyWith<GetCartListResponse> get copyWith => _$GetCartListResponseCopyWithImpl<GetCartListResponse>(this as GetCartListResponse, _$identity);

  /// Serializes this GetCartListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartListResponse&&const DeepCollectionEquality().equals(other.stores, stores)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stores),summary);

@override
String toString() {
  return 'GetCartListResponse(stores: $stores, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $GetCartListResponseCopyWith<$Res>  {
  factory $GetCartListResponseCopyWith(GetCartListResponse value, $Res Function(GetCartListResponse) _then) = _$GetCartListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "stores") List<GetCartListStore>? stores,@JsonKey(name: "summary") GetCartListSummary? summary
});


$GetCartListSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class _$GetCartListResponseCopyWithImpl<$Res>
    implements $GetCartListResponseCopyWith<$Res> {
  _$GetCartListResponseCopyWithImpl(this._self, this._then);

  final GetCartListResponse _self;
  final $Res Function(GetCartListResponse) _then;

/// Create a copy of GetCartListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stores = freezed,Object? summary = freezed,}) {
  return _then(_self.copyWith(
stores: freezed == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as List<GetCartListStore>?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as GetCartListSummary?,
  ));
}
/// Create a copy of GetCartListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetCartListSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $GetCartListSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GetCartListResponse implements GetCartListResponse {
  const _GetCartListResponse({@JsonKey(name: "stores") final  List<GetCartListStore>? stores, @JsonKey(name: "summary") this.summary}): _stores = stores;
  factory _GetCartListResponse.fromJson(Map<String, dynamic> json) => _$GetCartListResponseFromJson(json);

 final  List<GetCartListStore>? _stores;
@override@JsonKey(name: "stores") List<GetCartListStore>? get stores {
  final value = _stores;
  if (value == null) return null;
  if (_stores is EqualUnmodifiableListView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "summary") final  GetCartListSummary? summary;

/// Create a copy of GetCartListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCartListResponseCopyWith<_GetCartListResponse> get copyWith => __$GetCartListResponseCopyWithImpl<_GetCartListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCartListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCartListResponse&&const DeepCollectionEquality().equals(other._stores, _stores)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stores),summary);

@override
String toString() {
  return 'GetCartListResponse(stores: $stores, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$GetCartListResponseCopyWith<$Res> implements $GetCartListResponseCopyWith<$Res> {
  factory _$GetCartListResponseCopyWith(_GetCartListResponse value, $Res Function(_GetCartListResponse) _then) = __$GetCartListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "stores") List<GetCartListStore>? stores,@JsonKey(name: "summary") GetCartListSummary? summary
});


@override $GetCartListSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class __$GetCartListResponseCopyWithImpl<$Res>
    implements _$GetCartListResponseCopyWith<$Res> {
  __$GetCartListResponseCopyWithImpl(this._self, this._then);

  final _GetCartListResponse _self;
  final $Res Function(_GetCartListResponse) _then;

/// Create a copy of GetCartListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stores = freezed,Object? summary = freezed,}) {
  return _then(_GetCartListResponse(
stores: freezed == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<GetCartListStore>?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as GetCartListSummary?,
  ));
}

/// Create a copy of GetCartListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetCartListSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $GetCartListSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$GetCartListStore {

@JsonKey(name: "store_id") int? get storeId;@JsonKey(name: "store_name") String? get storeName;@JsonKey(name: "store_logo") String? get storeLogo;@JsonKey(name: "store_address") String? get storeAddress;@JsonKey(name: "store_phone") String? get storePhone;@JsonKey(name: "store_minimum_order") int? get storeMinimumOrder;@JsonKey(name: "store_delivery_time") String? get storeDeliveryTime;@JsonKey(name: "items") List<GetCartListItem>? get items;@JsonKey(name: "store_total_items") int? get storeTotalItems;@JsonKey(name: "store_total_price") double? get storeTotalPrice;
/// Create a copy of GetCartListStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartListStoreCopyWith<GetCartListStore> get copyWith => _$GetCartListStoreCopyWithImpl<GetCartListStore>(this as GetCartListStore, _$identity);

  /// Serializes this GetCartListStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartListStore&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeLogo, storeLogo) || other.storeLogo == storeLogo)&&(identical(other.storeAddress, storeAddress) || other.storeAddress == storeAddress)&&(identical(other.storePhone, storePhone) || other.storePhone == storePhone)&&(identical(other.storeMinimumOrder, storeMinimumOrder) || other.storeMinimumOrder == storeMinimumOrder)&&(identical(other.storeDeliveryTime, storeDeliveryTime) || other.storeDeliveryTime == storeDeliveryTime)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.storeTotalItems, storeTotalItems) || other.storeTotalItems == storeTotalItems)&&(identical(other.storeTotalPrice, storeTotalPrice) || other.storeTotalPrice == storeTotalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,storeLogo,storeAddress,storePhone,storeMinimumOrder,storeDeliveryTime,const DeepCollectionEquality().hash(items),storeTotalItems,storeTotalPrice);

@override
String toString() {
  return 'GetCartListStore(storeId: $storeId, storeName: $storeName, storeLogo: $storeLogo, storeAddress: $storeAddress, storePhone: $storePhone, storeMinimumOrder: $storeMinimumOrder, storeDeliveryTime: $storeDeliveryTime, items: $items, storeTotalItems: $storeTotalItems, storeTotalPrice: $storeTotalPrice)';
}


}

/// @nodoc
abstract mixin class $GetCartListStoreCopyWith<$Res>  {
  factory $GetCartListStoreCopyWith(GetCartListStore value, $Res Function(GetCartListStore) _then) = _$GetCartListStoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "store_name") String? storeName,@JsonKey(name: "store_logo") String? storeLogo,@JsonKey(name: "store_address") String? storeAddress,@JsonKey(name: "store_phone") String? storePhone,@JsonKey(name: "store_minimum_order") int? storeMinimumOrder,@JsonKey(name: "store_delivery_time") String? storeDeliveryTime,@JsonKey(name: "items") List<GetCartListItem>? items,@JsonKey(name: "store_total_items") int? storeTotalItems,@JsonKey(name: "store_total_price") double? storeTotalPrice
});




}
/// @nodoc
class _$GetCartListStoreCopyWithImpl<$Res>
    implements $GetCartListStoreCopyWith<$Res> {
  _$GetCartListStoreCopyWithImpl(this._self, this._then);

  final GetCartListStore _self;
  final $Res Function(GetCartListStore) _then;

/// Create a copy of GetCartListStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = freezed,Object? storeName = freezed,Object? storeLogo = freezed,Object? storeAddress = freezed,Object? storePhone = freezed,Object? storeMinimumOrder = freezed,Object? storeDeliveryTime = freezed,Object? items = freezed,Object? storeTotalItems = freezed,Object? storeTotalPrice = freezed,}) {
  return _then(_self.copyWith(
storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,storeLogo: freezed == storeLogo ? _self.storeLogo : storeLogo // ignore: cast_nullable_to_non_nullable
as String?,storeAddress: freezed == storeAddress ? _self.storeAddress : storeAddress // ignore: cast_nullable_to_non_nullable
as String?,storePhone: freezed == storePhone ? _self.storePhone : storePhone // ignore: cast_nullable_to_non_nullable
as String?,storeMinimumOrder: freezed == storeMinimumOrder ? _self.storeMinimumOrder : storeMinimumOrder // ignore: cast_nullable_to_non_nullable
as int?,storeDeliveryTime: freezed == storeDeliveryTime ? _self.storeDeliveryTime : storeDeliveryTime // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GetCartListItem>?,storeTotalItems: freezed == storeTotalItems ? _self.storeTotalItems : storeTotalItems // ignore: cast_nullable_to_non_nullable
as int?,storeTotalPrice: freezed == storeTotalPrice ? _self.storeTotalPrice : storeTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetCartListStore implements GetCartListStore {
  const _GetCartListStore({@JsonKey(name: "store_id") this.storeId, @JsonKey(name: "store_name") this.storeName, @JsonKey(name: "store_logo") this.storeLogo, @JsonKey(name: "store_address") this.storeAddress, @JsonKey(name: "store_phone") this.storePhone, @JsonKey(name: "store_minimum_order") this.storeMinimumOrder, @JsonKey(name: "store_delivery_time") this.storeDeliveryTime, @JsonKey(name: "items") final  List<GetCartListItem>? items, @JsonKey(name: "store_total_items") this.storeTotalItems, @JsonKey(name: "store_total_price") this.storeTotalPrice}): _items = items;
  factory _GetCartListStore.fromJson(Map<String, dynamic> json) => _$GetCartListStoreFromJson(json);

@override@JsonKey(name: "store_id") final  int? storeId;
@override@JsonKey(name: "store_name") final  String? storeName;
@override@JsonKey(name: "store_logo") final  String? storeLogo;
@override@JsonKey(name: "store_address") final  String? storeAddress;
@override@JsonKey(name: "store_phone") final  String? storePhone;
@override@JsonKey(name: "store_minimum_order") final  int? storeMinimumOrder;
@override@JsonKey(name: "store_delivery_time") final  String? storeDeliveryTime;
 final  List<GetCartListItem>? _items;
@override@JsonKey(name: "items") List<GetCartListItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "store_total_items") final  int? storeTotalItems;
@override@JsonKey(name: "store_total_price") final  double? storeTotalPrice;

/// Create a copy of GetCartListStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCartListStoreCopyWith<_GetCartListStore> get copyWith => __$GetCartListStoreCopyWithImpl<_GetCartListStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCartListStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCartListStore&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeLogo, storeLogo) || other.storeLogo == storeLogo)&&(identical(other.storeAddress, storeAddress) || other.storeAddress == storeAddress)&&(identical(other.storePhone, storePhone) || other.storePhone == storePhone)&&(identical(other.storeMinimumOrder, storeMinimumOrder) || other.storeMinimumOrder == storeMinimumOrder)&&(identical(other.storeDeliveryTime, storeDeliveryTime) || other.storeDeliveryTime == storeDeliveryTime)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.storeTotalItems, storeTotalItems) || other.storeTotalItems == storeTotalItems)&&(identical(other.storeTotalPrice, storeTotalPrice) || other.storeTotalPrice == storeTotalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,storeLogo,storeAddress,storePhone,storeMinimumOrder,storeDeliveryTime,const DeepCollectionEquality().hash(_items),storeTotalItems,storeTotalPrice);

@override
String toString() {
  return 'GetCartListStore(storeId: $storeId, storeName: $storeName, storeLogo: $storeLogo, storeAddress: $storeAddress, storePhone: $storePhone, storeMinimumOrder: $storeMinimumOrder, storeDeliveryTime: $storeDeliveryTime, items: $items, storeTotalItems: $storeTotalItems, storeTotalPrice: $storeTotalPrice)';
}


}

/// @nodoc
abstract mixin class _$GetCartListStoreCopyWith<$Res> implements $GetCartListStoreCopyWith<$Res> {
  factory _$GetCartListStoreCopyWith(_GetCartListStore value, $Res Function(_GetCartListStore) _then) = __$GetCartListStoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "store_name") String? storeName,@JsonKey(name: "store_logo") String? storeLogo,@JsonKey(name: "store_address") String? storeAddress,@JsonKey(name: "store_phone") String? storePhone,@JsonKey(name: "store_minimum_order") int? storeMinimumOrder,@JsonKey(name: "store_delivery_time") String? storeDeliveryTime,@JsonKey(name: "items") List<GetCartListItem>? items,@JsonKey(name: "store_total_items") int? storeTotalItems,@JsonKey(name: "store_total_price") double? storeTotalPrice
});




}
/// @nodoc
class __$GetCartListStoreCopyWithImpl<$Res>
    implements _$GetCartListStoreCopyWith<$Res> {
  __$GetCartListStoreCopyWithImpl(this._self, this._then);

  final _GetCartListStore _self;
  final $Res Function(_GetCartListStore) _then;

/// Create a copy of GetCartListStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = freezed,Object? storeName = freezed,Object? storeLogo = freezed,Object? storeAddress = freezed,Object? storePhone = freezed,Object? storeMinimumOrder = freezed,Object? storeDeliveryTime = freezed,Object? items = freezed,Object? storeTotalItems = freezed,Object? storeTotalPrice = freezed,}) {
  return _then(_GetCartListStore(
storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,storeLogo: freezed == storeLogo ? _self.storeLogo : storeLogo // ignore: cast_nullable_to_non_nullable
as String?,storeAddress: freezed == storeAddress ? _self.storeAddress : storeAddress // ignore: cast_nullable_to_non_nullable
as String?,storePhone: freezed == storePhone ? _self.storePhone : storePhone // ignore: cast_nullable_to_non_nullable
as String?,storeMinimumOrder: freezed == storeMinimumOrder ? _self.storeMinimumOrder : storeMinimumOrder // ignore: cast_nullable_to_non_nullable
as int?,storeDeliveryTime: freezed == storeDeliveryTime ? _self.storeDeliveryTime : storeDeliveryTime // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GetCartListItem>?,storeTotalItems: freezed == storeTotalItems ? _self.storeTotalItems : storeTotalItems // ignore: cast_nullable_to_non_nullable
as int?,storeTotalPrice: freezed == storeTotalPrice ? _self.storeTotalPrice : storeTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$GetCartListItem {

@JsonKey(name: "cart_id") int? get cartId;@JsonKey(name: "item_id") int? get itemId;@JsonKey(name: "item_type") String? get itemType;@JsonKey(name: "item_name") String? get itemName;@JsonKey(name: "item_image") String? get itemImage;@JsonKey(name: "item_price") double? get itemPrice;@JsonKey(name: "item_original_price") double? get itemOriginalPrice;@JsonKey(name: "item_discount") int? get itemDiscount;@JsonKey(name: "item_discount_type") String? get itemDiscountType;@JsonKey(name: "item_quantity") int? get itemQuantity;@JsonKey(name: "item_total_price") double? get itemTotalPrice;@JsonKey(name: "item_variation") List<GetCartListItemVariation>? get itemVariation;@JsonKey(name: "item_add_ons") List<dynamic>? get itemAddOns;@JsonKey(name: "item_add_on_quantities") List<dynamic>? get itemAddOnQuantities;@JsonKey(name: "item_description") String? get itemDescription;@JsonKey(name: "item_category") GetCartListItemCategory? get itemCategory;@JsonKey(name: "item_available") int? get itemAvailable;@JsonKey(name: "item_maximum_cart_quantity") dynamic get itemMaximumCartQuantity;@JsonKey(name: "is_favorite") bool? get isFavorite;
/// Create a copy of GetCartListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartListItemCopyWith<GetCartListItem> get copyWith => _$GetCartListItemCopyWithImpl<GetCartListItem>(this as GetCartListItem, _$identity);

  /// Serializes this GetCartListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartListItem&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemImage, itemImage) || other.itemImage == itemImage)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemOriginalPrice, itemOriginalPrice) || other.itemOriginalPrice == itemOriginalPrice)&&(identical(other.itemDiscount, itemDiscount) || other.itemDiscount == itemDiscount)&&(identical(other.itemDiscountType, itemDiscountType) || other.itemDiscountType == itemDiscountType)&&(identical(other.itemQuantity, itemQuantity) || other.itemQuantity == itemQuantity)&&(identical(other.itemTotalPrice, itemTotalPrice) || other.itemTotalPrice == itemTotalPrice)&&const DeepCollectionEquality().equals(other.itemVariation, itemVariation)&&const DeepCollectionEquality().equals(other.itemAddOns, itemAddOns)&&const DeepCollectionEquality().equals(other.itemAddOnQuantities, itemAddOnQuantities)&&(identical(other.itemDescription, itemDescription) || other.itemDescription == itemDescription)&&(identical(other.itemCategory, itemCategory) || other.itemCategory == itemCategory)&&(identical(other.itemAvailable, itemAvailable) || other.itemAvailable == itemAvailable)&&const DeepCollectionEquality().equals(other.itemMaximumCartQuantity, itemMaximumCartQuantity)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,cartId,itemId,itemType,itemName,itemImage,itemPrice,itemOriginalPrice,itemDiscount,itemDiscountType,itemQuantity,itemTotalPrice,const DeepCollectionEquality().hash(itemVariation),const DeepCollectionEquality().hash(itemAddOns),const DeepCollectionEquality().hash(itemAddOnQuantities),itemDescription,itemCategory,itemAvailable,const DeepCollectionEquality().hash(itemMaximumCartQuantity),isFavorite]);

@override
String toString() {
  return 'GetCartListItem(cartId: $cartId, itemId: $itemId, itemType: $itemType, itemName: $itemName, itemImage: $itemImage, itemPrice: $itemPrice, itemOriginalPrice: $itemOriginalPrice, itemDiscount: $itemDiscount, itemDiscountType: $itemDiscountType, itemQuantity: $itemQuantity, itemTotalPrice: $itemTotalPrice, itemVariation: $itemVariation, itemAddOns: $itemAddOns, itemAddOnQuantities: $itemAddOnQuantities, itemDescription: $itemDescription, itemCategory: $itemCategory, itemAvailable: $itemAvailable, itemMaximumCartQuantity: $itemMaximumCartQuantity, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $GetCartListItemCopyWith<$Res>  {
  factory $GetCartListItemCopyWith(GetCartListItem value, $Res Function(GetCartListItem) _then) = _$GetCartListItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "cart_id") int? cartId,@JsonKey(name: "item_id") int? itemId,@JsonKey(name: "item_type") String? itemType,@JsonKey(name: "item_name") String? itemName,@JsonKey(name: "item_image") String? itemImage,@JsonKey(name: "item_price") double? itemPrice,@JsonKey(name: "item_original_price") double? itemOriginalPrice,@JsonKey(name: "item_discount") int? itemDiscount,@JsonKey(name: "item_discount_type") String? itemDiscountType,@JsonKey(name: "item_quantity") int? itemQuantity,@JsonKey(name: "item_total_price") double? itemTotalPrice,@JsonKey(name: "item_variation") List<GetCartListItemVariation>? itemVariation,@JsonKey(name: "item_add_ons") List<dynamic>? itemAddOns,@JsonKey(name: "item_add_on_quantities") List<dynamic>? itemAddOnQuantities,@JsonKey(name: "item_description") String? itemDescription,@JsonKey(name: "item_category") GetCartListItemCategory? itemCategory,@JsonKey(name: "item_available") int? itemAvailable,@JsonKey(name: "item_maximum_cart_quantity") dynamic itemMaximumCartQuantity,@JsonKey(name: "is_favorite") bool? isFavorite
});


$GetCartListItemCategoryCopyWith<$Res>? get itemCategory;

}
/// @nodoc
class _$GetCartListItemCopyWithImpl<$Res>
    implements $GetCartListItemCopyWith<$Res> {
  _$GetCartListItemCopyWithImpl(this._self, this._then);

  final GetCartListItem _self;
  final $Res Function(GetCartListItem) _then;

/// Create a copy of GetCartListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartId = freezed,Object? itemId = freezed,Object? itemType = freezed,Object? itemName = freezed,Object? itemImage = freezed,Object? itemPrice = freezed,Object? itemOriginalPrice = freezed,Object? itemDiscount = freezed,Object? itemDiscountType = freezed,Object? itemQuantity = freezed,Object? itemTotalPrice = freezed,Object? itemVariation = freezed,Object? itemAddOns = freezed,Object? itemAddOnQuantities = freezed,Object? itemDescription = freezed,Object? itemCategory = freezed,Object? itemAvailable = freezed,Object? itemMaximumCartQuantity = freezed,Object? isFavorite = freezed,}) {
  return _then(_self.copyWith(
cartId: freezed == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,itemType: freezed == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,itemImage: freezed == itemImage ? _self.itemImage : itemImage // ignore: cast_nullable_to_non_nullable
as String?,itemPrice: freezed == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double?,itemOriginalPrice: freezed == itemOriginalPrice ? _self.itemOriginalPrice : itemOriginalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemDiscount: freezed == itemDiscount ? _self.itemDiscount : itemDiscount // ignore: cast_nullable_to_non_nullable
as int?,itemDiscountType: freezed == itemDiscountType ? _self.itemDiscountType : itemDiscountType // ignore: cast_nullable_to_non_nullable
as String?,itemQuantity: freezed == itemQuantity ? _self.itemQuantity : itemQuantity // ignore: cast_nullable_to_non_nullable
as int?,itemTotalPrice: freezed == itemTotalPrice ? _self.itemTotalPrice : itemTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemVariation: freezed == itemVariation ? _self.itemVariation : itemVariation // ignore: cast_nullable_to_non_nullable
as List<GetCartListItemVariation>?,itemAddOns: freezed == itemAddOns ? _self.itemAddOns : itemAddOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemAddOnQuantities: freezed == itemAddOnQuantities ? _self.itemAddOnQuantities : itemAddOnQuantities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemDescription: freezed == itemDescription ? _self.itemDescription : itemDescription // ignore: cast_nullable_to_non_nullable
as String?,itemCategory: freezed == itemCategory ? _self.itemCategory : itemCategory // ignore: cast_nullable_to_non_nullable
as GetCartListItemCategory?,itemAvailable: freezed == itemAvailable ? _self.itemAvailable : itemAvailable // ignore: cast_nullable_to_non_nullable
as int?,itemMaximumCartQuantity: freezed == itemMaximumCartQuantity ? _self.itemMaximumCartQuantity : itemMaximumCartQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of GetCartListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetCartListItemCategoryCopyWith<$Res>? get itemCategory {
    if (_self.itemCategory == null) {
    return null;
  }

  return $GetCartListItemCategoryCopyWith<$Res>(_self.itemCategory!, (value) {
    return _then(_self.copyWith(itemCategory: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GetCartListItem implements GetCartListItem {
  const _GetCartListItem({@JsonKey(name: "cart_id") this.cartId, @JsonKey(name: "item_id") this.itemId, @JsonKey(name: "item_type") this.itemType, @JsonKey(name: "item_name") this.itemName, @JsonKey(name: "item_image") this.itemImage, @JsonKey(name: "item_price") this.itemPrice, @JsonKey(name: "item_original_price") this.itemOriginalPrice, @JsonKey(name: "item_discount") this.itemDiscount, @JsonKey(name: "item_discount_type") this.itemDiscountType, @JsonKey(name: "item_quantity") this.itemQuantity, @JsonKey(name: "item_total_price") this.itemTotalPrice, @JsonKey(name: "item_variation") final  List<GetCartListItemVariation>? itemVariation, @JsonKey(name: "item_add_ons") final  List<dynamic>? itemAddOns, @JsonKey(name: "item_add_on_quantities") final  List<dynamic>? itemAddOnQuantities, @JsonKey(name: "item_description") this.itemDescription, @JsonKey(name: "item_category") this.itemCategory, @JsonKey(name: "item_available") this.itemAvailable, @JsonKey(name: "item_maximum_cart_quantity") this.itemMaximumCartQuantity, @JsonKey(name: "is_favorite") this.isFavorite}): _itemVariation = itemVariation,_itemAddOns = itemAddOns,_itemAddOnQuantities = itemAddOnQuantities;
  factory _GetCartListItem.fromJson(Map<String, dynamic> json) => _$GetCartListItemFromJson(json);

@override@JsonKey(name: "cart_id") final  int? cartId;
@override@JsonKey(name: "item_id") final  int? itemId;
@override@JsonKey(name: "item_type") final  String? itemType;
@override@JsonKey(name: "item_name") final  String? itemName;
@override@JsonKey(name: "item_image") final  String? itemImage;
@override@JsonKey(name: "item_price") final  double? itemPrice;
@override@JsonKey(name: "item_original_price") final  double? itemOriginalPrice;
@override@JsonKey(name: "item_discount") final  int? itemDiscount;
@override@JsonKey(name: "item_discount_type") final  String? itemDiscountType;
@override@JsonKey(name: "item_quantity") final  int? itemQuantity;
@override@JsonKey(name: "item_total_price") final  double? itemTotalPrice;
 final  List<GetCartListItemVariation>? _itemVariation;
@override@JsonKey(name: "item_variation") List<GetCartListItemVariation>? get itemVariation {
  final value = _itemVariation;
  if (value == null) return null;
  if (_itemVariation is EqualUnmodifiableListView) return _itemVariation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _itemAddOns;
@override@JsonKey(name: "item_add_ons") List<dynamic>? get itemAddOns {
  final value = _itemAddOns;
  if (value == null) return null;
  if (_itemAddOns is EqualUnmodifiableListView) return _itemAddOns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _itemAddOnQuantities;
@override@JsonKey(name: "item_add_on_quantities") List<dynamic>? get itemAddOnQuantities {
  final value = _itemAddOnQuantities;
  if (value == null) return null;
  if (_itemAddOnQuantities is EqualUnmodifiableListView) return _itemAddOnQuantities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "item_description") final  String? itemDescription;
@override@JsonKey(name: "item_category") final  GetCartListItemCategory? itemCategory;
@override@JsonKey(name: "item_available") final  int? itemAvailable;
@override@JsonKey(name: "item_maximum_cart_quantity") final  dynamic itemMaximumCartQuantity;
@override@JsonKey(name: "is_favorite") final  bool? isFavorite;

/// Create a copy of GetCartListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCartListItemCopyWith<_GetCartListItem> get copyWith => __$GetCartListItemCopyWithImpl<_GetCartListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCartListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCartListItem&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemImage, itemImage) || other.itemImage == itemImage)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemOriginalPrice, itemOriginalPrice) || other.itemOriginalPrice == itemOriginalPrice)&&(identical(other.itemDiscount, itemDiscount) || other.itemDiscount == itemDiscount)&&(identical(other.itemDiscountType, itemDiscountType) || other.itemDiscountType == itemDiscountType)&&(identical(other.itemQuantity, itemQuantity) || other.itemQuantity == itemQuantity)&&(identical(other.itemTotalPrice, itemTotalPrice) || other.itemTotalPrice == itemTotalPrice)&&const DeepCollectionEquality().equals(other._itemVariation, _itemVariation)&&const DeepCollectionEquality().equals(other._itemAddOns, _itemAddOns)&&const DeepCollectionEquality().equals(other._itemAddOnQuantities, _itemAddOnQuantities)&&(identical(other.itemDescription, itemDescription) || other.itemDescription == itemDescription)&&(identical(other.itemCategory, itemCategory) || other.itemCategory == itemCategory)&&(identical(other.itemAvailable, itemAvailable) || other.itemAvailable == itemAvailable)&&const DeepCollectionEquality().equals(other.itemMaximumCartQuantity, itemMaximumCartQuantity)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,cartId,itemId,itemType,itemName,itemImage,itemPrice,itemOriginalPrice,itemDiscount,itemDiscountType,itemQuantity,itemTotalPrice,const DeepCollectionEquality().hash(_itemVariation),const DeepCollectionEquality().hash(_itemAddOns),const DeepCollectionEquality().hash(_itemAddOnQuantities),itemDescription,itemCategory,itemAvailable,const DeepCollectionEquality().hash(itemMaximumCartQuantity),isFavorite]);

@override
String toString() {
  return 'GetCartListItem(cartId: $cartId, itemId: $itemId, itemType: $itemType, itemName: $itemName, itemImage: $itemImage, itemPrice: $itemPrice, itemOriginalPrice: $itemOriginalPrice, itemDiscount: $itemDiscount, itemDiscountType: $itemDiscountType, itemQuantity: $itemQuantity, itemTotalPrice: $itemTotalPrice, itemVariation: $itemVariation, itemAddOns: $itemAddOns, itemAddOnQuantities: $itemAddOnQuantities, itemDescription: $itemDescription, itemCategory: $itemCategory, itemAvailable: $itemAvailable, itemMaximumCartQuantity: $itemMaximumCartQuantity, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$GetCartListItemCopyWith<$Res> implements $GetCartListItemCopyWith<$Res> {
  factory _$GetCartListItemCopyWith(_GetCartListItem value, $Res Function(_GetCartListItem) _then) = __$GetCartListItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "cart_id") int? cartId,@JsonKey(name: "item_id") int? itemId,@JsonKey(name: "item_type") String? itemType,@JsonKey(name: "item_name") String? itemName,@JsonKey(name: "item_image") String? itemImage,@JsonKey(name: "item_price") double? itemPrice,@JsonKey(name: "item_original_price") double? itemOriginalPrice,@JsonKey(name: "item_discount") int? itemDiscount,@JsonKey(name: "item_discount_type") String? itemDiscountType,@JsonKey(name: "item_quantity") int? itemQuantity,@JsonKey(name: "item_total_price") double? itemTotalPrice,@JsonKey(name: "item_variation") List<GetCartListItemVariation>? itemVariation,@JsonKey(name: "item_add_ons") List<dynamic>? itemAddOns,@JsonKey(name: "item_add_on_quantities") List<dynamic>? itemAddOnQuantities,@JsonKey(name: "item_description") String? itemDescription,@JsonKey(name: "item_category") GetCartListItemCategory? itemCategory,@JsonKey(name: "item_available") int? itemAvailable,@JsonKey(name: "item_maximum_cart_quantity") dynamic itemMaximumCartQuantity,@JsonKey(name: "is_favorite") bool? isFavorite
});


@override $GetCartListItemCategoryCopyWith<$Res>? get itemCategory;

}
/// @nodoc
class __$GetCartListItemCopyWithImpl<$Res>
    implements _$GetCartListItemCopyWith<$Res> {
  __$GetCartListItemCopyWithImpl(this._self, this._then);

  final _GetCartListItem _self;
  final $Res Function(_GetCartListItem) _then;

/// Create a copy of GetCartListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartId = freezed,Object? itemId = freezed,Object? itemType = freezed,Object? itemName = freezed,Object? itemImage = freezed,Object? itemPrice = freezed,Object? itemOriginalPrice = freezed,Object? itemDiscount = freezed,Object? itemDiscountType = freezed,Object? itemQuantity = freezed,Object? itemTotalPrice = freezed,Object? itemVariation = freezed,Object? itemAddOns = freezed,Object? itemAddOnQuantities = freezed,Object? itemDescription = freezed,Object? itemCategory = freezed,Object? itemAvailable = freezed,Object? itemMaximumCartQuantity = freezed,Object? isFavorite = freezed,}) {
  return _then(_GetCartListItem(
cartId: freezed == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,itemType: freezed == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,itemImage: freezed == itemImage ? _self.itemImage : itemImage // ignore: cast_nullable_to_non_nullable
as String?,itemPrice: freezed == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double?,itemOriginalPrice: freezed == itemOriginalPrice ? _self.itemOriginalPrice : itemOriginalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemDiscount: freezed == itemDiscount ? _self.itemDiscount : itemDiscount // ignore: cast_nullable_to_non_nullable
as int?,itemDiscountType: freezed == itemDiscountType ? _self.itemDiscountType : itemDiscountType // ignore: cast_nullable_to_non_nullable
as String?,itemQuantity: freezed == itemQuantity ? _self.itemQuantity : itemQuantity // ignore: cast_nullable_to_non_nullable
as int?,itemTotalPrice: freezed == itemTotalPrice ? _self.itemTotalPrice : itemTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemVariation: freezed == itemVariation ? _self._itemVariation : itemVariation // ignore: cast_nullable_to_non_nullable
as List<GetCartListItemVariation>?,itemAddOns: freezed == itemAddOns ? _self._itemAddOns : itemAddOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemAddOnQuantities: freezed == itemAddOnQuantities ? _self._itemAddOnQuantities : itemAddOnQuantities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemDescription: freezed == itemDescription ? _self.itemDescription : itemDescription // ignore: cast_nullable_to_non_nullable
as String?,itemCategory: freezed == itemCategory ? _self.itemCategory : itemCategory // ignore: cast_nullable_to_non_nullable
as GetCartListItemCategory?,itemAvailable: freezed == itemAvailable ? _self.itemAvailable : itemAvailable // ignore: cast_nullable_to_non_nullable
as int?,itemMaximumCartQuantity: freezed == itemMaximumCartQuantity ? _self.itemMaximumCartQuantity : itemMaximumCartQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of GetCartListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetCartListItemCategoryCopyWith<$Res>? get itemCategory {
    if (_self.itemCategory == null) {
    return null;
  }

  return $GetCartListItemCategoryCopyWith<$Res>(_self.itemCategory!, (value) {
    return _then(_self.copyWith(itemCategory: value));
  });
}
}


/// @nodoc
mixin _$GetCartListItemCategory {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "image") String? get image;@JsonKey(name: "parent_id") int? get parentId;@JsonKey(name: "position") int? get position;@JsonKey(name: "status") int? get status;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "priority") int? get priority;@JsonKey(name: "module_id") int? get moduleId;@JsonKey(name: "slug") String? get slug;@JsonKey(name: "featured") int? get featured;@JsonKey(name: "image_full_url") String? get imageFullUrl;
/// Create a copy of GetCartListItemCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartListItemCategoryCopyWith<GetCartListItemCategory> get copyWith => _$GetCartListItemCategoryCopyWithImpl<GetCartListItemCategory>(this as GetCartListItemCategory, _$identity);

  /// Serializes this GetCartListItemCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartListItemCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,parentId,position,status,createdAt,updatedAt,priority,moduleId,slug,featured,imageFullUrl);

@override
String toString() {
  return 'GetCartListItemCategory(id: $id, name: $name, image: $image, parentId: $parentId, position: $position, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, priority: $priority, moduleId: $moduleId, slug: $slug, featured: $featured, imageFullUrl: $imageFullUrl)';
}


}

/// @nodoc
abstract mixin class $GetCartListItemCategoryCopyWith<$Res>  {
  factory $GetCartListItemCategoryCopyWith(GetCartListItemCategory value, $Res Function(GetCartListItemCategory) _then) = _$GetCartListItemCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image,@JsonKey(name: "parent_id") int? parentId,@JsonKey(name: "position") int? position,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "priority") int? priority,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "slug") String? slug,@JsonKey(name: "featured") int? featured,@JsonKey(name: "image_full_url") String? imageFullUrl
});




}
/// @nodoc
class _$GetCartListItemCategoryCopyWithImpl<$Res>
    implements $GetCartListItemCategoryCopyWith<$Res> {
  _$GetCartListItemCategoryCopyWithImpl(this._self, this._then);

  final GetCartListItemCategory _self;
  final $Res Function(GetCartListItemCategory) _then;

/// Create a copy of GetCartListItemCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? parentId = freezed,Object? position = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? priority = freezed,Object? moduleId = freezed,Object? slug = freezed,Object? featured = freezed,Object? imageFullUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetCartListItemCategory implements GetCartListItemCategory {
  const _GetCartListItemCategory({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "image") this.image, @JsonKey(name: "parent_id") this.parentId, @JsonKey(name: "position") this.position, @JsonKey(name: "status") this.status, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "priority") this.priority, @JsonKey(name: "module_id") this.moduleId, @JsonKey(name: "slug") this.slug, @JsonKey(name: "featured") this.featured, @JsonKey(name: "image_full_url") this.imageFullUrl});
  factory _GetCartListItemCategory.fromJson(Map<String, dynamic> json) => _$GetCartListItemCategoryFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "image") final  String? image;
@override@JsonKey(name: "parent_id") final  int? parentId;
@override@JsonKey(name: "position") final  int? position;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "priority") final  int? priority;
@override@JsonKey(name: "module_id") final  int? moduleId;
@override@JsonKey(name: "slug") final  String? slug;
@override@JsonKey(name: "featured") final  int? featured;
@override@JsonKey(name: "image_full_url") final  String? imageFullUrl;

/// Create a copy of GetCartListItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCartListItemCategoryCopyWith<_GetCartListItemCategory> get copyWith => __$GetCartListItemCategoryCopyWithImpl<_GetCartListItemCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCartListItemCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCartListItemCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,parentId,position,status,createdAt,updatedAt,priority,moduleId,slug,featured,imageFullUrl);

@override
String toString() {
  return 'GetCartListItemCategory(id: $id, name: $name, image: $image, parentId: $parentId, position: $position, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, priority: $priority, moduleId: $moduleId, slug: $slug, featured: $featured, imageFullUrl: $imageFullUrl)';
}


}

/// @nodoc
abstract mixin class _$GetCartListItemCategoryCopyWith<$Res> implements $GetCartListItemCategoryCopyWith<$Res> {
  factory _$GetCartListItemCategoryCopyWith(_GetCartListItemCategory value, $Res Function(_GetCartListItemCategory) _then) = __$GetCartListItemCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image,@JsonKey(name: "parent_id") int? parentId,@JsonKey(name: "position") int? position,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "priority") int? priority,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "slug") String? slug,@JsonKey(name: "featured") int? featured,@JsonKey(name: "image_full_url") String? imageFullUrl
});




}
/// @nodoc
class __$GetCartListItemCategoryCopyWithImpl<$Res>
    implements _$GetCartListItemCategoryCopyWith<$Res> {
  __$GetCartListItemCategoryCopyWithImpl(this._self, this._then);

  final _GetCartListItemCategory _self;
  final $Res Function(_GetCartListItemCategory) _then;

/// Create a copy of GetCartListItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? parentId = freezed,Object? position = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? priority = freezed,Object? moduleId = freezed,Object? slug = freezed,Object? featured = freezed,Object? imageFullUrl = freezed,}) {
  return _then(_GetCartListItemCategory(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GetCartListItemVariation {

@JsonKey(name: "name") String? get name;@JsonKey(name: "values") List<GetCartListItemValue>? get values;@JsonKey(name: "type") String? get type;
/// Create a copy of GetCartListItemVariation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartListItemVariationCopyWith<GetCartListItemVariation> get copyWith => _$GetCartListItemVariationCopyWithImpl<GetCartListItemVariation>(this as GetCartListItemVariation, _$identity);

  /// Serializes this GetCartListItemVariation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartListItemVariation&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(values),type);

@override
String toString() {
  return 'GetCartListItemVariation(name: $name, values: $values, type: $type)';
}


}

/// @nodoc
abstract mixin class $GetCartListItemVariationCopyWith<$Res>  {
  factory $GetCartListItemVariationCopyWith(GetCartListItemVariation value, $Res Function(GetCartListItemVariation) _then) = _$GetCartListItemVariationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "values") List<GetCartListItemValue>? values,@JsonKey(name: "type") String? type
});




}
/// @nodoc
class _$GetCartListItemVariationCopyWithImpl<$Res>
    implements $GetCartListItemVariationCopyWith<$Res> {
  _$GetCartListItemVariationCopyWithImpl(this._self, this._then);

  final GetCartListItemVariation _self;
  final $Res Function(GetCartListItemVariation) _then;

/// Create a copy of GetCartListItemVariation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? values = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<GetCartListItemValue>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetCartListItemVariation implements GetCartListItemVariation {
  const _GetCartListItemVariation({@JsonKey(name: "name") this.name, @JsonKey(name: "values") final  List<GetCartListItemValue>? values, @JsonKey(name: "type") this.type}): _values = values;
  factory _GetCartListItemVariation.fromJson(Map<String, dynamic> json) => _$GetCartListItemVariationFromJson(json);

@override@JsonKey(name: "name") final  String? name;
 final  List<GetCartListItemValue>? _values;
@override@JsonKey(name: "values") List<GetCartListItemValue>? get values {
  final value = _values;
  if (value == null) return null;
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "type") final  String? type;

/// Create a copy of GetCartListItemVariation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCartListItemVariationCopyWith<_GetCartListItemVariation> get copyWith => __$GetCartListItemVariationCopyWithImpl<_GetCartListItemVariation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCartListItemVariationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCartListItemVariation&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_values),type);

@override
String toString() {
  return 'GetCartListItemVariation(name: $name, values: $values, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GetCartListItemVariationCopyWith<$Res> implements $GetCartListItemVariationCopyWith<$Res> {
  factory _$GetCartListItemVariationCopyWith(_GetCartListItemVariation value, $Res Function(_GetCartListItemVariation) _then) = __$GetCartListItemVariationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "values") List<GetCartListItemValue>? values,@JsonKey(name: "type") String? type
});




}
/// @nodoc
class __$GetCartListItemVariationCopyWithImpl<$Res>
    implements _$GetCartListItemVariationCopyWith<$Res> {
  __$GetCartListItemVariationCopyWithImpl(this._self, this._then);

  final _GetCartListItemVariation _self;
  final $Res Function(_GetCartListItemVariation) _then;

/// Create a copy of GetCartListItemVariation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? values = freezed,Object? type = freezed,}) {
  return _then(_GetCartListItemVariation(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<GetCartListItemValue>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GetCartListItemValue {

@JsonKey(name: "label") String? get label;
/// Create a copy of GetCartListItemValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartListItemValueCopyWith<GetCartListItemValue> get copyWith => _$GetCartListItemValueCopyWithImpl<GetCartListItemValue>(this as GetCartListItemValue, _$identity);

  /// Serializes this GetCartListItemValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartListItemValue&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'GetCartListItemValue(label: $label)';
}


}

/// @nodoc
abstract mixin class $GetCartListItemValueCopyWith<$Res>  {
  factory $GetCartListItemValueCopyWith(GetCartListItemValue value, $Res Function(GetCartListItemValue) _then) = _$GetCartListItemValueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "label") String? label
});




}
/// @nodoc
class _$GetCartListItemValueCopyWithImpl<$Res>
    implements $GetCartListItemValueCopyWith<$Res> {
  _$GetCartListItemValueCopyWithImpl(this._self, this._then);

  final GetCartListItemValue _self;
  final $Res Function(GetCartListItemValue) _then;

/// Create a copy of GetCartListItemValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetCartListItemValue implements GetCartListItemValue {
  const _GetCartListItemValue({@JsonKey(name: "label") this.label});
  factory _GetCartListItemValue.fromJson(Map<String, dynamic> json) => _$GetCartListItemValueFromJson(json);

@override@JsonKey(name: "label") final  String? label;

/// Create a copy of GetCartListItemValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCartListItemValueCopyWith<_GetCartListItemValue> get copyWith => __$GetCartListItemValueCopyWithImpl<_GetCartListItemValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCartListItemValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCartListItemValue&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'GetCartListItemValue(label: $label)';
}


}

/// @nodoc
abstract mixin class _$GetCartListItemValueCopyWith<$Res> implements $GetCartListItemValueCopyWith<$Res> {
  factory _$GetCartListItemValueCopyWith(_GetCartListItemValue value, $Res Function(_GetCartListItemValue) _then) = __$GetCartListItemValueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "label") String? label
});




}
/// @nodoc
class __$GetCartListItemValueCopyWithImpl<$Res>
    implements _$GetCartListItemValueCopyWith<$Res> {
  __$GetCartListItemValueCopyWithImpl(this._self, this._then);

  final _GetCartListItemValue _self;
  final $Res Function(_GetCartListItemValue) _then;

/// Create a copy of GetCartListItemValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,}) {
  return _then(_GetCartListItemValue(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GetCartListSummary {

@JsonKey(name: "total_stores") int? get totalStores;@JsonKey(name: "total_items") int? get totalItems;@JsonKey(name: "total_price") double? get totalPrice;
/// Create a copy of GetCartListSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartListSummaryCopyWith<GetCartListSummary> get copyWith => _$GetCartListSummaryCopyWithImpl<GetCartListSummary>(this as GetCartListSummary, _$identity);

  /// Serializes this GetCartListSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartListSummary&&(identical(other.totalStores, totalStores) || other.totalStores == totalStores)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStores,totalItems,totalPrice);

@override
String toString() {
  return 'GetCartListSummary(totalStores: $totalStores, totalItems: $totalItems, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $GetCartListSummaryCopyWith<$Res>  {
  factory $GetCartListSummaryCopyWith(GetCartListSummary value, $Res Function(GetCartListSummary) _then) = _$GetCartListSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "total_stores") int? totalStores,@JsonKey(name: "total_items") int? totalItems,@JsonKey(name: "total_price") double? totalPrice
});




}
/// @nodoc
class _$GetCartListSummaryCopyWithImpl<$Res>
    implements $GetCartListSummaryCopyWith<$Res> {
  _$GetCartListSummaryCopyWithImpl(this._self, this._then);

  final GetCartListSummary _self;
  final $Res Function(GetCartListSummary) _then;

/// Create a copy of GetCartListSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalStores = freezed,Object? totalItems = freezed,Object? totalPrice = freezed,}) {
  return _then(_self.copyWith(
totalStores: freezed == totalStores ? _self.totalStores : totalStores // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetCartListSummary implements GetCartListSummary {
  const _GetCartListSummary({@JsonKey(name: "total_stores") this.totalStores, @JsonKey(name: "total_items") this.totalItems, @JsonKey(name: "total_price") this.totalPrice});
  factory _GetCartListSummary.fromJson(Map<String, dynamic> json) => _$GetCartListSummaryFromJson(json);

@override@JsonKey(name: "total_stores") final  int? totalStores;
@override@JsonKey(name: "total_items") final  int? totalItems;
@override@JsonKey(name: "total_price") final  double? totalPrice;

/// Create a copy of GetCartListSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCartListSummaryCopyWith<_GetCartListSummary> get copyWith => __$GetCartListSummaryCopyWithImpl<_GetCartListSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCartListSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCartListSummary&&(identical(other.totalStores, totalStores) || other.totalStores == totalStores)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStores,totalItems,totalPrice);

@override
String toString() {
  return 'GetCartListSummary(totalStores: $totalStores, totalItems: $totalItems, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$GetCartListSummaryCopyWith<$Res> implements $GetCartListSummaryCopyWith<$Res> {
  factory _$GetCartListSummaryCopyWith(_GetCartListSummary value, $Res Function(_GetCartListSummary) _then) = __$GetCartListSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "total_stores") int? totalStores,@JsonKey(name: "total_items") int? totalItems,@JsonKey(name: "total_price") double? totalPrice
});




}
/// @nodoc
class __$GetCartListSummaryCopyWithImpl<$Res>
    implements _$GetCartListSummaryCopyWith<$Res> {
  __$GetCartListSummaryCopyWithImpl(this._self, this._then);

  final _GetCartListSummary _self;
  final $Res Function(_GetCartListSummary) _then;

/// Create a copy of GetCartListSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalStores = freezed,Object? totalItems = freezed,Object? totalPrice = freezed,}) {
  return _then(_GetCartListSummary(
totalStores: freezed == totalStores ? _self.totalStores : totalStores // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
