// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_store_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreInfoResponse {

 StoreInfo get store; List<MenuCategory> get menu;
/// Create a copy of StoreInfoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInfoResponseCopyWith<StoreInfoResponse> get copyWith => _$StoreInfoResponseCopyWithImpl<StoreInfoResponse>(this as StoreInfoResponse, _$identity);

  /// Serializes this StoreInfoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInfoResponse&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.menu, menu));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,const DeepCollectionEquality().hash(menu));

@override
String toString() {
  return 'StoreInfoResponse(store: $store, menu: $menu)';
}


}

/// @nodoc
abstract mixin class $StoreInfoResponseCopyWith<$Res>  {
  factory $StoreInfoResponseCopyWith(StoreInfoResponse value, $Res Function(StoreInfoResponse) _then) = _$StoreInfoResponseCopyWithImpl;
@useResult
$Res call({
 StoreInfo store, List<MenuCategory> menu
});


$StoreInfoCopyWith<$Res> get store;

}
/// @nodoc
class _$StoreInfoResponseCopyWithImpl<$Res>
    implements $StoreInfoResponseCopyWith<$Res> {
  _$StoreInfoResponseCopyWithImpl(this._self, this._then);

  final StoreInfoResponse _self;
  final $Res Function(StoreInfoResponse) _then;

/// Create a copy of StoreInfoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = null,Object? menu = null,}) {
  return _then(_self.copyWith(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreInfo,menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as List<MenuCategory>,
  ));
}
/// Create a copy of StoreInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreInfoCopyWith<$Res> get store {
  
  return $StoreInfoCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _StoreInfoResponse implements StoreInfoResponse {
  const _StoreInfoResponse({required this.store, required final  List<MenuCategory> menu}): _menu = menu;
  factory _StoreInfoResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoResponseFromJson(json);

@override final  StoreInfo store;
 final  List<MenuCategory> _menu;
@override List<MenuCategory> get menu {
  if (_menu is EqualUnmodifiableListView) return _menu;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_menu);
}


/// Create a copy of StoreInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInfoResponseCopyWith<_StoreInfoResponse> get copyWith => __$StoreInfoResponseCopyWithImpl<_StoreInfoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInfoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInfoResponse&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other._menu, _menu));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,const DeepCollectionEquality().hash(_menu));

@override
String toString() {
  return 'StoreInfoResponse(store: $store, menu: $menu)';
}


}

/// @nodoc
abstract mixin class _$StoreInfoResponseCopyWith<$Res> implements $StoreInfoResponseCopyWith<$Res> {
  factory _$StoreInfoResponseCopyWith(_StoreInfoResponse value, $Res Function(_StoreInfoResponse) _then) = __$StoreInfoResponseCopyWithImpl;
@override @useResult
$Res call({
 StoreInfo store, List<MenuCategory> menu
});


@override $StoreInfoCopyWith<$Res> get store;

}
/// @nodoc
class __$StoreInfoResponseCopyWithImpl<$Res>
    implements _$StoreInfoResponseCopyWith<$Res> {
  __$StoreInfoResponseCopyWithImpl(this._self, this._then);

  final _StoreInfoResponse _self;
  final $Res Function(_StoreInfoResponse) _then;

/// Create a copy of StoreInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = null,Object? menu = null,}) {
  return _then(_StoreInfoResponse(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreInfo,menu: null == menu ? _self._menu : menu // ignore: cast_nullable_to_non_nullable
as List<MenuCategory>,
  ));
}

/// Create a copy of StoreInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreInfoCopyWith<$Res> get store {
  
  return $StoreInfoCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
mixin _$StoreInfo {

 int get id; String get name; String get address; double get latitude; double get longitude; double get rating;@JsonKey(name: 'review_count') int get reviewCount; String get module; List<String> get tags; StoreMenuServices get services;@JsonKey(name: 'logo_url') String get logoUrl; String? get comment;
/// Create a copy of StoreInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInfoCopyWith<StoreInfo> get copyWith => _$StoreInfoCopyWithImpl<StoreInfo>(this as StoreInfo, _$identity);

  /// Serializes this StoreInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.services, services) || other.services == services)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,latitude,longitude,rating,reviewCount,module,const DeepCollectionEquality().hash(tags),services,logoUrl,comment);

@override
String toString() {
  return 'StoreInfo(id: $id, name: $name, address: $address, latitude: $latitude, longitude: $longitude, rating: $rating, reviewCount: $reviewCount, module: $module, tags: $tags, services: $services, logoUrl: $logoUrl, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $StoreInfoCopyWith<$Res>  {
  factory $StoreInfoCopyWith(StoreInfo value, $Res Function(StoreInfo) _then) = _$StoreInfoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String address, double latitude, double longitude, double rating,@JsonKey(name: 'review_count') int reviewCount, String module, List<String> tags, StoreMenuServices services,@JsonKey(name: 'logo_url') String logoUrl, String? comment
});


$StoreMenuServicesCopyWith<$Res> get services;

}
/// @nodoc
class _$StoreInfoCopyWithImpl<$Res>
    implements $StoreInfoCopyWith<$Res> {
  _$StoreInfoCopyWithImpl(this._self, this._then);

  final StoreInfo _self;
  final $Res Function(StoreInfo) _then;

/// Create a copy of StoreInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? rating = null,Object? reviewCount = null,Object? module = null,Object? tags = null,Object? services = null,Object? logoUrl = null,Object? comment = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as StoreMenuServices,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of StoreInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreMenuServicesCopyWith<$Res> get services {
  
  return $StoreMenuServicesCopyWith<$Res>(_self.services, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _StoreInfo implements StoreInfo {
  const _StoreInfo({required this.id, required this.name, required this.address, required this.latitude, required this.longitude, required this.rating, @JsonKey(name: 'review_count') required this.reviewCount, required this.module, required final  List<String> tags, required this.services, @JsonKey(name: 'logo_url') required this.logoUrl, this.comment}): _tags = tags;
  factory _StoreInfo.fromJson(Map<String, dynamic> json) => _$StoreInfoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String address;
@override final  double latitude;
@override final  double longitude;
@override final  double rating;
@override@JsonKey(name: 'review_count') final  int reviewCount;
@override final  String module;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  StoreMenuServices services;
@override@JsonKey(name: 'logo_url') final  String logoUrl;
@override final  String? comment;

/// Create a copy of StoreInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInfoCopyWith<_StoreInfo> get copyWith => __$StoreInfoCopyWithImpl<_StoreInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.services, services) || other.services == services)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,latitude,longitude,rating,reviewCount,module,const DeepCollectionEquality().hash(_tags),services,logoUrl,comment);

@override
String toString() {
  return 'StoreInfo(id: $id, name: $name, address: $address, latitude: $latitude, longitude: $longitude, rating: $rating, reviewCount: $reviewCount, module: $module, tags: $tags, services: $services, logoUrl: $logoUrl, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$StoreInfoCopyWith<$Res> implements $StoreInfoCopyWith<$Res> {
  factory _$StoreInfoCopyWith(_StoreInfo value, $Res Function(_StoreInfo) _then) = __$StoreInfoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String address, double latitude, double longitude, double rating,@JsonKey(name: 'review_count') int reviewCount, String module, List<String> tags, StoreMenuServices services,@JsonKey(name: 'logo_url') String logoUrl, String? comment
});


@override $StoreMenuServicesCopyWith<$Res> get services;

}
/// @nodoc
class __$StoreInfoCopyWithImpl<$Res>
    implements _$StoreInfoCopyWith<$Res> {
  __$StoreInfoCopyWithImpl(this._self, this._then);

  final _StoreInfo _self;
  final $Res Function(_StoreInfo) _then;

/// Create a copy of StoreInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? rating = null,Object? reviewCount = null,Object? module = null,Object? tags = null,Object? services = null,Object? logoUrl = null,Object? comment = freezed,}) {
  return _then(_StoreInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as StoreMenuServices,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of StoreInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreMenuServicesCopyWith<$Res> get services {
  
  return $StoreMenuServicesCopyWith<$Res>(_self.services, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
mixin _$StoreMenuServices {

@JsonKey(name: 'delivery_fee') int get deliveryFee;@JsonKey(name: 'delivery_time') String get deliveryTime;@JsonKey(name: 'take_away') bool get takeAway;@JsonKey(name: 'self_drive_thru') bool get selfDriveThru;
/// Create a copy of StoreMenuServices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreMenuServicesCopyWith<StoreMenuServices> get copyWith => _$StoreMenuServicesCopyWithImpl<StoreMenuServices>(this as StoreMenuServices, _$identity);

  /// Serializes this StoreMenuServices to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreMenuServices&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.takeAway, takeAway) || other.takeAway == takeAway)&&(identical(other.selfDriveThru, selfDriveThru) || other.selfDriveThru == selfDriveThru));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryFee,deliveryTime,takeAway,selfDriveThru);

@override
String toString() {
  return 'StoreMenuServices(deliveryFee: $deliveryFee, deliveryTime: $deliveryTime, takeAway: $takeAway, selfDriveThru: $selfDriveThru)';
}


}

/// @nodoc
abstract mixin class $StoreMenuServicesCopyWith<$Res>  {
  factory $StoreMenuServicesCopyWith(StoreMenuServices value, $Res Function(StoreMenuServices) _then) = _$StoreMenuServicesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'delivery_fee') int deliveryFee,@JsonKey(name: 'delivery_time') String deliveryTime,@JsonKey(name: 'take_away') bool takeAway,@JsonKey(name: 'self_drive_thru') bool selfDriveThru
});




}
/// @nodoc
class _$StoreMenuServicesCopyWithImpl<$Res>
    implements $StoreMenuServicesCopyWith<$Res> {
  _$StoreMenuServicesCopyWithImpl(this._self, this._then);

  final StoreMenuServices _self;
  final $Res Function(StoreMenuServices) _then;

/// Create a copy of StoreMenuServices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deliveryFee = null,Object? deliveryTime = null,Object? takeAway = null,Object? selfDriveThru = null,}) {
  return _then(_self.copyWith(
deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,takeAway: null == takeAway ? _self.takeAway : takeAway // ignore: cast_nullable_to_non_nullable
as bool,selfDriveThru: null == selfDriveThru ? _self.selfDriveThru : selfDriveThru // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StoreMenuServices implements StoreMenuServices {
  const _StoreMenuServices({@JsonKey(name: 'delivery_fee') required this.deliveryFee, @JsonKey(name: 'delivery_time') required this.deliveryTime, @JsonKey(name: 'take_away') required this.takeAway, @JsonKey(name: 'self_drive_thru') required this.selfDriveThru});
  factory _StoreMenuServices.fromJson(Map<String, dynamic> json) => _$StoreMenuServicesFromJson(json);

@override@JsonKey(name: 'delivery_fee') final  int deliveryFee;
@override@JsonKey(name: 'delivery_time') final  String deliveryTime;
@override@JsonKey(name: 'take_away') final  bool takeAway;
@override@JsonKey(name: 'self_drive_thru') final  bool selfDriveThru;

/// Create a copy of StoreMenuServices
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreMenuServicesCopyWith<_StoreMenuServices> get copyWith => __$StoreMenuServicesCopyWithImpl<_StoreMenuServices>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreMenuServicesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreMenuServices&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.takeAway, takeAway) || other.takeAway == takeAway)&&(identical(other.selfDriveThru, selfDriveThru) || other.selfDriveThru == selfDriveThru));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryFee,deliveryTime,takeAway,selfDriveThru);

@override
String toString() {
  return 'StoreMenuServices(deliveryFee: $deliveryFee, deliveryTime: $deliveryTime, takeAway: $takeAway, selfDriveThru: $selfDriveThru)';
}


}

/// @nodoc
abstract mixin class _$StoreMenuServicesCopyWith<$Res> implements $StoreMenuServicesCopyWith<$Res> {
  factory _$StoreMenuServicesCopyWith(_StoreMenuServices value, $Res Function(_StoreMenuServices) _then) = __$StoreMenuServicesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'delivery_fee') int deliveryFee,@JsonKey(name: 'delivery_time') String deliveryTime,@JsonKey(name: 'take_away') bool takeAway,@JsonKey(name: 'self_drive_thru') bool selfDriveThru
});




}
/// @nodoc
class __$StoreMenuServicesCopyWithImpl<$Res>
    implements _$StoreMenuServicesCopyWith<$Res> {
  __$StoreMenuServicesCopyWithImpl(this._self, this._then);

  final _StoreMenuServices _self;
  final $Res Function(_StoreMenuServices) _then;

/// Create a copy of StoreMenuServices
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deliveryFee = null,Object? deliveryTime = null,Object? takeAway = null,Object? selfDriveThru = null,}) {
  return _then(_StoreMenuServices(
deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,takeAway: null == takeAway ? _self.takeAway : takeAway // ignore: cast_nullable_to_non_nullable
as bool,selfDriveThru: null == selfDriveThru ? _self.selfDriveThru : selfDriveThru // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MenuCategory {

@JsonKey(name: 'category_id') int get categoryId;@JsonKey(name: 'category_name') String get categoryName; List<MenuItem> get items;
/// Create a copy of MenuCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuCategoryCopyWith<MenuCategory> get copyWith => _$MenuCategoryCopyWithImpl<MenuCategory>(this as MenuCategory, _$identity);

  /// Serializes this MenuCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuCategory&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,categoryName,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MenuCategory(categoryId: $categoryId, categoryName: $categoryName, items: $items)';
}


}

/// @nodoc
abstract mixin class $MenuCategoryCopyWith<$Res>  {
  factory $MenuCategoryCopyWith(MenuCategory value, $Res Function(MenuCategory) _then) = _$MenuCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category_id') int categoryId,@JsonKey(name: 'category_name') String categoryName, List<MenuItem> items
});




}
/// @nodoc
class _$MenuCategoryCopyWithImpl<$Res>
    implements $MenuCategoryCopyWith<$Res> {
  _$MenuCategoryCopyWithImpl(this._self, this._then);

  final MenuCategory _self;
  final $Res Function(MenuCategory) _then;

/// Create a copy of MenuCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? categoryName = null,Object? items = null,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItem>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MenuCategory implements MenuCategory {
  const _MenuCategory({@JsonKey(name: 'category_id') required this.categoryId, @JsonKey(name: 'category_name') required this.categoryName, required final  List<MenuItem> items}): _items = items;
  factory _MenuCategory.fromJson(Map<String, dynamic> json) => _$MenuCategoryFromJson(json);

@override@JsonKey(name: 'category_id') final  int categoryId;
@override@JsonKey(name: 'category_name') final  String categoryName;
 final  List<MenuItem> _items;
@override List<MenuItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MenuCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuCategoryCopyWith<_MenuCategory> get copyWith => __$MenuCategoryCopyWithImpl<_MenuCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuCategory&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,categoryName,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MenuCategory(categoryId: $categoryId, categoryName: $categoryName, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MenuCategoryCopyWith<$Res> implements $MenuCategoryCopyWith<$Res> {
  factory _$MenuCategoryCopyWith(_MenuCategory value, $Res Function(_MenuCategory) _then) = __$MenuCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category_id') int categoryId,@JsonKey(name: 'category_name') String categoryName, List<MenuItem> items
});




}
/// @nodoc
class __$MenuCategoryCopyWithImpl<$Res>
    implements _$MenuCategoryCopyWith<$Res> {
  __$MenuCategoryCopyWithImpl(this._self, this._then);

  final _MenuCategory _self;
  final $Res Function(_MenuCategory) _then;

/// Create a copy of MenuCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? categoryName = null,Object? items = null,}) {
  return _then(_MenuCategory(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItem>,
  ));
}


}


/// @nodoc
mixin _$MenuItem {

 int get id; String get name;@JsonKey(name: 'image_url') String get imageUrl; int get price;@JsonKey(name: 'avg_rating') double get avgRating;
/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuItemCopyWith<MenuItem> get copyWith => _$MenuItemCopyWithImpl<MenuItem>(this as MenuItem, _$identity);

  /// Serializes this MenuItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,avgRating);

@override
String toString() {
  return 'MenuItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, avgRating: $avgRating)';
}


}

/// @nodoc
abstract mixin class $MenuItemCopyWith<$Res>  {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) _then) = _$MenuItemCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, int price,@JsonKey(name: 'avg_rating') double avgRating
});




}
/// @nodoc
class _$MenuItemCopyWithImpl<$Res>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._self, this._then);

  final MenuItem _self;
  final $Res Function(MenuItem) _then;

/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? avgRating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MenuItem implements MenuItem {
  const _MenuItem({required this.id, required this.name, @JsonKey(name: 'image_url') required this.imageUrl, required this.price, @JsonKey(name: 'avg_rating') required this.avgRating});
  factory _MenuItem.fromJson(Map<String, dynamic> json) => _$MenuItemFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override final  int price;
@override@JsonKey(name: 'avg_rating') final  double avgRating;

/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuItemCopyWith<_MenuItem> get copyWith => __$MenuItemCopyWithImpl<_MenuItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,avgRating);

@override
String toString() {
  return 'MenuItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, avgRating: $avgRating)';
}


}

/// @nodoc
abstract mixin class _$MenuItemCopyWith<$Res> implements $MenuItemCopyWith<$Res> {
  factory _$MenuItemCopyWith(_MenuItem value, $Res Function(_MenuItem) _then) = __$MenuItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, int price,@JsonKey(name: 'avg_rating') double avgRating
});




}
/// @nodoc
class __$MenuItemCopyWithImpl<$Res>
    implements _$MenuItemCopyWith<$Res> {
  __$MenuItemCopyWithImpl(this._self, this._then);

  final _MenuItem _self;
  final $Res Function(_MenuItem) _then;

/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? avgRating = null,}) {
  return _then(_MenuItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
