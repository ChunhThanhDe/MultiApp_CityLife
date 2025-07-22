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

 List<WishlistItem> get item; List<WishlistStore> get store;
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
 List<WishlistItem> item, List<WishlistStore> store
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
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? store = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>,store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as List<WishlistStore>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WishlistResponse implements WishlistResponse {
  const _WishlistResponse({required final  List<WishlistItem> item, required final  List<WishlistStore> store}): _item = item,_store = store;
  factory _WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);

 final  List<WishlistItem> _item;
@override List<WishlistItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}

 final  List<WishlistStore> _store;
@override List<WishlistStore> get store {
  if (_store is EqualUnmodifiableListView) return _store;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_store);
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
 List<WishlistItem> item, List<WishlistStore> store
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
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? store = null,}) {
  return _then(_WishlistResponse(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>,store: null == store ? _self._store : store // ignore: cast_nullable_to_non_nullable
as List<WishlistStore>,
  ));
}


}


/// @nodoc
mixin _$WishlistItem {

 int get id; String get name; double get price;@JsonKey(name: 'image_full_url') String get imageFullUrl; String? get description;@JsonKey(name: 'avg_rating') double? get avgRating;@JsonKey(name: 'rating_count') int? get ratingCount;
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemCopyWith<WishlistItem> get copyWith => _$WishlistItemCopyWithImpl<WishlistItem>(this as WishlistItem, _$identity);

  /// Serializes this WishlistItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,imageFullUrl,description,avgRating,ratingCount);

@override
String toString() {
  return 'WishlistItem(id: $id, name: $name, price: $price, imageFullUrl: $imageFullUrl, description: $description, avgRating: $avgRating, ratingCount: $ratingCount)';
}


}

/// @nodoc
abstract mixin class $WishlistItemCopyWith<$Res>  {
  factory $WishlistItemCopyWith(WishlistItem value, $Res Function(WishlistItem) _then) = _$WishlistItemCopyWithImpl;
@useResult
$Res call({
 int id, String name, double price,@JsonKey(name: 'image_full_url') String imageFullUrl, String? description,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount
});




}
/// @nodoc
class _$WishlistItemCopyWithImpl<$Res>
    implements $WishlistItemCopyWith<$Res> {
  _$WishlistItemCopyWithImpl(this._self, this._then);

  final WishlistItem _self;
  final $Res Function(WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? imageFullUrl = null,Object? description = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,imageFullUrl: null == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WishlistItem implements WishlistItem {
  const _WishlistItem({required this.id, required this.name, required this.price, @JsonKey(name: 'image_full_url') required this.imageFullUrl, this.description, @JsonKey(name: 'avg_rating') this.avgRating, @JsonKey(name: 'rating_count') this.ratingCount});
  factory _WishlistItem.fromJson(Map<String, dynamic> json) => _$WishlistItemFromJson(json);

@override final  int id;
@override final  String name;
@override final  double price;
@override@JsonKey(name: 'image_full_url') final  String imageFullUrl;
@override final  String? description;
@override@JsonKey(name: 'avg_rating') final  double? avgRating;
@override@JsonKey(name: 'rating_count') final  int? ratingCount;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistItemCopyWith<_WishlistItem> get copyWith => __$WishlistItemCopyWithImpl<_WishlistItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,imageFullUrl,description,avgRating,ratingCount);

@override
String toString() {
  return 'WishlistItem(id: $id, name: $name, price: $price, imageFullUrl: $imageFullUrl, description: $description, avgRating: $avgRating, ratingCount: $ratingCount)';
}


}

/// @nodoc
abstract mixin class _$WishlistItemCopyWith<$Res> implements $WishlistItemCopyWith<$Res> {
  factory _$WishlistItemCopyWith(_WishlistItem value, $Res Function(_WishlistItem) _then) = __$WishlistItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double price,@JsonKey(name: 'image_full_url') String imageFullUrl, String? description,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount
});




}
/// @nodoc
class __$WishlistItemCopyWithImpl<$Res>
    implements _$WishlistItemCopyWith<$Res> {
  __$WishlistItemCopyWithImpl(this._self, this._then);

  final _WishlistItem _self;
  final $Res Function(_WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? imageFullUrl = null,Object? description = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,}) {
  return _then(_WishlistItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,imageFullUrl: null == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WishlistStore {

 int get id; String get name;@JsonKey(name: 'logo_full_url') String get logoFullUrl;@JsonKey(name: 'cover_photo_full_url') String? get coverPhotoFullUrl;@JsonKey(name: 'avg_rating') double? get avgRating;@JsonKey(name: 'rating_count') int? get ratingCount;@JsonKey(name: 'delivery_time') String? get deliveryTime;@JsonKey(name: 'minimum_order') double? get minimumOrder;@JsonKey(name: 'minimum_shipping_charge') double? get minimumShippingCharge;
/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistStoreCopyWith<WishlistStore> get copyWith => _$WishlistStoreCopyWithImpl<WishlistStore>(this as WishlistStore, _$identity);

  /// Serializes this WishlistStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.minimumOrder, minimumOrder) || other.minimumOrder == minimumOrder)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoFullUrl,coverPhotoFullUrl,avgRating,ratingCount,deliveryTime,minimumOrder,minimumShippingCharge);

@override
String toString() {
  return 'WishlistStore(id: $id, name: $name, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, avgRating: $avgRating, ratingCount: $ratingCount, deliveryTime: $deliveryTime, minimumOrder: $minimumOrder, minimumShippingCharge: $minimumShippingCharge)';
}


}

/// @nodoc
abstract mixin class $WishlistStoreCopyWith<$Res>  {
  factory $WishlistStoreCopyWith(WishlistStore value, $Res Function(WishlistStore) _then) = _$WishlistStoreCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_full_url') String logoFullUrl,@JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount,@JsonKey(name: 'delivery_time') String? deliveryTime,@JsonKey(name: 'minimum_order') double? minimumOrder,@JsonKey(name: 'minimum_shipping_charge') double? minimumShippingCharge
});




}
/// @nodoc
class _$WishlistStoreCopyWithImpl<$Res>
    implements $WishlistStoreCopyWith<$Res> {
  _$WishlistStoreCopyWithImpl(this._self, this._then);

  final WishlistStore _self;
  final $Res Function(WishlistStore) _then;

/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logoFullUrl = null,Object? coverPhotoFullUrl = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? deliveryTime = freezed,Object? minimumOrder = freezed,Object? minimumShippingCharge = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoFullUrl: null == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,minimumOrder: freezed == minimumOrder ? _self.minimumOrder : minimumOrder // ignore: cast_nullable_to_non_nullable
as double?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WishlistStore implements WishlistStore {
  const _WishlistStore({required this.id, required this.name, @JsonKey(name: 'logo_full_url') required this.logoFullUrl, @JsonKey(name: 'cover_photo_full_url') this.coverPhotoFullUrl, @JsonKey(name: 'avg_rating') this.avgRating, @JsonKey(name: 'rating_count') this.ratingCount, @JsonKey(name: 'delivery_time') this.deliveryTime, @JsonKey(name: 'minimum_order') this.minimumOrder, @JsonKey(name: 'minimum_shipping_charge') this.minimumShippingCharge});
  factory _WishlistStore.fromJson(Map<String, dynamic> json) => _$WishlistStoreFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'logo_full_url') final  String logoFullUrl;
@override@JsonKey(name: 'cover_photo_full_url') final  String? coverPhotoFullUrl;
@override@JsonKey(name: 'avg_rating') final  double? avgRating;
@override@JsonKey(name: 'rating_count') final  int? ratingCount;
@override@JsonKey(name: 'delivery_time') final  String? deliveryTime;
@override@JsonKey(name: 'minimum_order') final  double? minimumOrder;
@override@JsonKey(name: 'minimum_shipping_charge') final  double? minimumShippingCharge;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.minimumOrder, minimumOrder) || other.minimumOrder == minimumOrder)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoFullUrl,coverPhotoFullUrl,avgRating,ratingCount,deliveryTime,minimumOrder,minimumShippingCharge);

@override
String toString() {
  return 'WishlistStore(id: $id, name: $name, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, avgRating: $avgRating, ratingCount: $ratingCount, deliveryTime: $deliveryTime, minimumOrder: $minimumOrder, minimumShippingCharge: $minimumShippingCharge)';
}


}

/// @nodoc
abstract mixin class _$WishlistStoreCopyWith<$Res> implements $WishlistStoreCopyWith<$Res> {
  factory _$WishlistStoreCopyWith(_WishlistStore value, $Res Function(_WishlistStore) _then) = __$WishlistStoreCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_full_url') String logoFullUrl,@JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount,@JsonKey(name: 'delivery_time') String? deliveryTime,@JsonKey(name: 'minimum_order') double? minimumOrder,@JsonKey(name: 'minimum_shipping_charge') double? minimumShippingCharge
});




}
/// @nodoc
class __$WishlistStoreCopyWithImpl<$Res>
    implements _$WishlistStoreCopyWith<$Res> {
  __$WishlistStoreCopyWithImpl(this._self, this._then);

  final _WishlistStore _self;
  final $Res Function(_WishlistStore) _then;

/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logoFullUrl = null,Object? coverPhotoFullUrl = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? deliveryTime = freezed,Object? minimumOrder = freezed,Object? minimumShippingCharge = freezed,}) {
  return _then(_WishlistStore(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoFullUrl: null == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,minimumOrder: freezed == minimumOrder ? _self.minimumOrder : minimumOrder // ignore: cast_nullable_to_non_nullable
as double?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
