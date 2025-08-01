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

@JsonKey(name: 'item') List<WishlistItem>? get item;@JsonKey(name: 'store') List<WishlistStore>? get store;
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
@JsonKey(name: 'item') List<WishlistItem>? item,@JsonKey(name: 'store') List<WishlistStore>? store
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
  const _WishlistResponse({@JsonKey(name: 'item') final  List<WishlistItem>? item, @JsonKey(name: 'store') final  List<WishlistStore>? store}): _item = item,_store = store;
  factory _WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);

 final  List<WishlistItem>? _item;
@override@JsonKey(name: 'item') List<WishlistItem>? get item {
  final value = _item;
  if (value == null) return null;
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WishlistStore>? _store;
@override@JsonKey(name: 'store') List<WishlistStore>? get store {
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
@JsonKey(name: 'item') List<WishlistItem>? item,@JsonKey(name: 'store') List<WishlistStore>? store
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

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'price') int? get price;@JsonKey(name: 'image_full_url') String? get imageFullUrl;@JsonKey(name: 'store_name') String? get storeName;
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemCopyWith<WishlistItem> get copyWith => _$WishlistItemCopyWithImpl<WishlistItem>(this as WishlistItem, _$identity);

  /// Serializes this WishlistItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&(identical(other.storeName, storeName) || other.storeName == storeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,imageFullUrl,storeName);

@override
String toString() {
  return 'WishlistItem(id: $id, name: $name, price: $price, imageFullUrl: $imageFullUrl, storeName: $storeName)';
}


}

/// @nodoc
abstract mixin class $WishlistItemCopyWith<$Res>  {
  factory $WishlistItemCopyWith(WishlistItem value, $Res Function(WishlistItem) _then) = _$WishlistItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'price') int? price,@JsonKey(name: 'image_full_url') String? imageFullUrl,@JsonKey(name: 'store_name') String? storeName
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? price = freezed,Object? imageFullUrl = freezed,Object? storeName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WistlistItem implements WishlistItem {
  const _WistlistItem({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'price') this.price, @JsonKey(name: 'image_full_url') this.imageFullUrl, @JsonKey(name: 'store_name') this.storeName});
  factory _WistlistItem.fromJson(Map<String, dynamic> json) => _$WistlistItemFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'price') final  int? price;
@override@JsonKey(name: 'image_full_url') final  String? imageFullUrl;
@override@JsonKey(name: 'store_name') final  String? storeName;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WistlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&(identical(other.storeName, storeName) || other.storeName == storeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,imageFullUrl,storeName);

@override
String toString() {
  return 'WishlistItem(id: $id, name: $name, price: $price, imageFullUrl: $imageFullUrl, storeName: $storeName)';
}


}

/// @nodoc
abstract mixin class _$WistlistItemCopyWith<$Res> implements $WishlistItemCopyWith<$Res> {
  factory _$WistlistItemCopyWith(_WistlistItem value, $Res Function(_WistlistItem) _then) = __$WistlistItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'price') int? price,@JsonKey(name: 'image_full_url') String? imageFullUrl,@JsonKey(name: 'store_name') String? storeName
});




}
/// @nodoc
class __$WistlistItemCopyWithImpl<$Res>
    implements _$WistlistItemCopyWith<$Res> {
  __$WistlistItemCopyWithImpl(this._self, this._then);

  final _WistlistItem _self;
  final $Res Function(_WistlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? price = freezed,Object? imageFullUrl = freezed,Object? storeName = freezed,}) {
  return _then(_WistlistItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WishlistStore {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'address') String? get address;@JsonKey(name: 'minimum_shipping_charge') int? get minimumShippingCharge;@JsonKey(name: 'delivery_time') String? get deliveryTime;@JsonKey(name: 'avg_rating') int? get avgRating;@JsonKey(name: 'rating_count') int? get ratingCount;@JsonKey(name: 'logo_full_url') String? get logoFullUrl;@JsonKey(name: 'cover_photo_full_url') String? get coverPhotoFullUrl;
/// Create a copy of WishlistStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistStoreCopyWith<WishlistStore> get copyWith => _$WishlistStoreCopyWithImpl<WishlistStore>(this as WishlistStore, _$identity);

  /// Serializes this WishlistStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,minimumShippingCharge,deliveryTime,avgRating,ratingCount,logoFullUrl,coverPhotoFullUrl);

@override
String toString() {
  return 'WishlistStore(id: $id, name: $name, address: $address, minimumShippingCharge: $minimumShippingCharge, deliveryTime: $deliveryTime, avgRating: $avgRating, ratingCount: $ratingCount, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl)';
}


}

/// @nodoc
abstract mixin class $WishlistStoreCopyWith<$Res>  {
  factory $WishlistStoreCopyWith(WishlistStore value, $Res Function(WishlistStore) _then) = _$WishlistStoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'address') String? address,@JsonKey(name: 'minimum_shipping_charge') int? minimumShippingCharge,@JsonKey(name: 'delivery_time') String? deliveryTime,@JsonKey(name: 'avg_rating') int? avgRating,@JsonKey(name: 'rating_count') int? ratingCount,@JsonKey(name: 'logo_full_url') String? logoFullUrl,@JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? address = freezed,Object? minimumShippingCharge = freezed,Object? deliveryTime = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WishlistStore implements WishlistStore {
  const _WishlistStore({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'address') this.address, @JsonKey(name: 'minimum_shipping_charge') this.minimumShippingCharge, @JsonKey(name: 'delivery_time') this.deliveryTime, @JsonKey(name: 'avg_rating') this.avgRating, @JsonKey(name: 'rating_count') this.ratingCount, @JsonKey(name: 'logo_full_url') this.logoFullUrl, @JsonKey(name: 'cover_photo_full_url') this.coverPhotoFullUrl});
  factory _WishlistStore.fromJson(Map<String, dynamic> json) => _$WishlistStoreFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'address') final  String? address;
@override@JsonKey(name: 'minimum_shipping_charge') final  int? minimumShippingCharge;
@override@JsonKey(name: 'delivery_time') final  String? deliveryTime;
@override@JsonKey(name: 'avg_rating') final  int? avgRating;
@override@JsonKey(name: 'rating_count') final  int? ratingCount;
@override@JsonKey(name: 'logo_full_url') final  String? logoFullUrl;
@override@JsonKey(name: 'cover_photo_full_url') final  String? coverPhotoFullUrl;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,minimumShippingCharge,deliveryTime,avgRating,ratingCount,logoFullUrl,coverPhotoFullUrl);

@override
String toString() {
  return 'WishlistStore(id: $id, name: $name, address: $address, minimumShippingCharge: $minimumShippingCharge, deliveryTime: $deliveryTime, avgRating: $avgRating, ratingCount: $ratingCount, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl)';
}


}

/// @nodoc
abstract mixin class _$WishlistStoreCopyWith<$Res> implements $WishlistStoreCopyWith<$Res> {
  factory _$WishlistStoreCopyWith(_WishlistStore value, $Res Function(_WishlistStore) _then) = __$WishlistStoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'address') String? address,@JsonKey(name: 'minimum_shipping_charge') int? minimumShippingCharge,@JsonKey(name: 'delivery_time') String? deliveryTime,@JsonKey(name: 'avg_rating') int? avgRating,@JsonKey(name: 'rating_count') int? ratingCount,@JsonKey(name: 'logo_full_url') String? logoFullUrl,@JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? address = freezed,Object? minimumShippingCharge = freezed,Object? deliveryTime = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,}) {
  return _then(_WishlistStore(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
