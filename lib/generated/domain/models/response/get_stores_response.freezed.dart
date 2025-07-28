// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_stores_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetStoresResponse {

@JsonKey(name: 'user_location') UserLocation get userLocation; List<Category> get categories; List<Store> get recent;@JsonKey(name: 'shop_near_you') List<Store> get shopNearYou;@JsonKey(name: 'top_offer') List<Product> get topOffer;@JsonKey(name: 'today_offer') List<Store> get todayOffer;@JsonKey(name: 'popular_near_you') List<Product> get popularNearYou;@JsonKey(name: 'all_store') List<Store> get allStore;
/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStoresResponseCopyWith<GetStoresResponse> get copyWith => _$GetStoresResponseCopyWithImpl<GetStoresResponse>(this as GetStoresResponse, _$identity);

  /// Serializes this GetStoresResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStoresResponse&&(identical(other.userLocation, userLocation) || other.userLocation == userLocation)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.recent, recent)&&const DeepCollectionEquality().equals(other.shopNearYou, shopNearYou)&&const DeepCollectionEquality().equals(other.topOffer, topOffer)&&const DeepCollectionEquality().equals(other.todayOffer, todayOffer)&&const DeepCollectionEquality().equals(other.popularNearYou, popularNearYou)&&const DeepCollectionEquality().equals(other.allStore, allStore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userLocation,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(recent),const DeepCollectionEquality().hash(shopNearYou),const DeepCollectionEquality().hash(topOffer),const DeepCollectionEquality().hash(todayOffer),const DeepCollectionEquality().hash(popularNearYou),const DeepCollectionEquality().hash(allStore));

@override
String toString() {
  return 'GetStoresResponse(userLocation: $userLocation, categories: $categories, recent: $recent, shopNearYou: $shopNearYou, topOffer: $topOffer, todayOffer: $todayOffer, popularNearYou: $popularNearYou, allStore: $allStore)';
}


}

/// @nodoc
abstract mixin class $GetStoresResponseCopyWith<$Res>  {
  factory $GetStoresResponseCopyWith(GetStoresResponse value, $Res Function(GetStoresResponse) _then) = _$GetStoresResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_location') UserLocation userLocation, List<Category> categories, List<Store> recent,@JsonKey(name: 'shop_near_you') List<Store> shopNearYou,@JsonKey(name: 'top_offer') List<Product> topOffer,@JsonKey(name: 'today_offer') List<Store> todayOffer,@JsonKey(name: 'popular_near_you') List<Product> popularNearYou,@JsonKey(name: 'all_store') List<Store> allStore
});


$UserLocationCopyWith<$Res> get userLocation;

}
/// @nodoc
class _$GetStoresResponseCopyWithImpl<$Res>
    implements $GetStoresResponseCopyWith<$Res> {
  _$GetStoresResponseCopyWithImpl(this._self, this._then);

  final GetStoresResponse _self;
  final $Res Function(GetStoresResponse) _then;

/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userLocation = null,Object? categories = null,Object? recent = null,Object? shopNearYou = null,Object? topOffer = null,Object? todayOffer = null,Object? popularNearYou = null,Object? allStore = null,}) {
  return _then(_self.copyWith(
userLocation: null == userLocation ? _self.userLocation : userLocation // ignore: cast_nullable_to_non_nullable
as UserLocation,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,recent: null == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as List<Store>,shopNearYou: null == shopNearYou ? _self.shopNearYou : shopNearYou // ignore: cast_nullable_to_non_nullable
as List<Store>,topOffer: null == topOffer ? _self.topOffer : topOffer // ignore: cast_nullable_to_non_nullable
as List<Product>,todayOffer: null == todayOffer ? _self.todayOffer : todayOffer // ignore: cast_nullable_to_non_nullable
as List<Store>,popularNearYou: null == popularNearYou ? _self.popularNearYou : popularNearYou // ignore: cast_nullable_to_non_nullable
as List<Product>,allStore: null == allStore ? _self.allStore : allStore // ignore: cast_nullable_to_non_nullable
as List<Store>,
  ));
}
/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLocationCopyWith<$Res> get userLocation {
  
  return $UserLocationCopyWith<$Res>(_self.userLocation, (value) {
    return _then(_self.copyWith(userLocation: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GetStoresResponse implements GetStoresResponse {
  const _GetStoresResponse({@JsonKey(name: 'user_location') required this.userLocation, required final  List<Category> categories, required final  List<Store> recent, @JsonKey(name: 'shop_near_you') required final  List<Store> shopNearYou, @JsonKey(name: 'top_offer') required final  List<Product> topOffer, @JsonKey(name: 'today_offer') required final  List<Store> todayOffer, @JsonKey(name: 'popular_near_you') required final  List<Product> popularNearYou, @JsonKey(name: 'all_store') required final  List<Store> allStore}): _categories = categories,_recent = recent,_shopNearYou = shopNearYou,_topOffer = topOffer,_todayOffer = todayOffer,_popularNearYou = popularNearYou,_allStore = allStore;
  factory _GetStoresResponse.fromJson(Map<String, dynamic> json) => _$GetStoresResponseFromJson(json);

@override@JsonKey(name: 'user_location') final  UserLocation userLocation;
 final  List<Category> _categories;
@override List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<Store> _recent;
@override List<Store> get recent {
  if (_recent is EqualUnmodifiableListView) return _recent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recent);
}

 final  List<Store> _shopNearYou;
@override@JsonKey(name: 'shop_near_you') List<Store> get shopNearYou {
  if (_shopNearYou is EqualUnmodifiableListView) return _shopNearYou;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shopNearYou);
}

 final  List<Product> _topOffer;
@override@JsonKey(name: 'top_offer') List<Product> get topOffer {
  if (_topOffer is EqualUnmodifiableListView) return _topOffer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topOffer);
}

 final  List<Store> _todayOffer;
@override@JsonKey(name: 'today_offer') List<Store> get todayOffer {
  if (_todayOffer is EqualUnmodifiableListView) return _todayOffer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayOffer);
}

 final  List<Product> _popularNearYou;
@override@JsonKey(name: 'popular_near_you') List<Product> get popularNearYou {
  if (_popularNearYou is EqualUnmodifiableListView) return _popularNearYou;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularNearYou);
}

 final  List<Store> _allStore;
@override@JsonKey(name: 'all_store') List<Store> get allStore {
  if (_allStore is EqualUnmodifiableListView) return _allStore;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allStore);
}


/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStoresResponseCopyWith<_GetStoresResponse> get copyWith => __$GetStoresResponseCopyWithImpl<_GetStoresResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetStoresResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStoresResponse&&(identical(other.userLocation, userLocation) || other.userLocation == userLocation)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._recent, _recent)&&const DeepCollectionEquality().equals(other._shopNearYou, _shopNearYou)&&const DeepCollectionEquality().equals(other._topOffer, _topOffer)&&const DeepCollectionEquality().equals(other._todayOffer, _todayOffer)&&const DeepCollectionEquality().equals(other._popularNearYou, _popularNearYou)&&const DeepCollectionEquality().equals(other._allStore, _allStore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userLocation,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_recent),const DeepCollectionEquality().hash(_shopNearYou),const DeepCollectionEquality().hash(_topOffer),const DeepCollectionEquality().hash(_todayOffer),const DeepCollectionEquality().hash(_popularNearYou),const DeepCollectionEquality().hash(_allStore));

@override
String toString() {
  return 'GetStoresResponse(userLocation: $userLocation, categories: $categories, recent: $recent, shopNearYou: $shopNearYou, topOffer: $topOffer, todayOffer: $todayOffer, popularNearYou: $popularNearYou, allStore: $allStore)';
}


}

/// @nodoc
abstract mixin class _$GetStoresResponseCopyWith<$Res> implements $GetStoresResponseCopyWith<$Res> {
  factory _$GetStoresResponseCopyWith(_GetStoresResponse value, $Res Function(_GetStoresResponse) _then) = __$GetStoresResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_location') UserLocation userLocation, List<Category> categories, List<Store> recent,@JsonKey(name: 'shop_near_you') List<Store> shopNearYou,@JsonKey(name: 'top_offer') List<Product> topOffer,@JsonKey(name: 'today_offer') List<Store> todayOffer,@JsonKey(name: 'popular_near_you') List<Product> popularNearYou,@JsonKey(name: 'all_store') List<Store> allStore
});


@override $UserLocationCopyWith<$Res> get userLocation;

}
/// @nodoc
class __$GetStoresResponseCopyWithImpl<$Res>
    implements _$GetStoresResponseCopyWith<$Res> {
  __$GetStoresResponseCopyWithImpl(this._self, this._then);

  final _GetStoresResponse _self;
  final $Res Function(_GetStoresResponse) _then;

/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userLocation = null,Object? categories = null,Object? recent = null,Object? shopNearYou = null,Object? topOffer = null,Object? todayOffer = null,Object? popularNearYou = null,Object? allStore = null,}) {
  return _then(_GetStoresResponse(
userLocation: null == userLocation ? _self.userLocation : userLocation // ignore: cast_nullable_to_non_nullable
as UserLocation,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,recent: null == recent ? _self._recent : recent // ignore: cast_nullable_to_non_nullable
as List<Store>,shopNearYou: null == shopNearYou ? _self._shopNearYou : shopNearYou // ignore: cast_nullable_to_non_nullable
as List<Store>,topOffer: null == topOffer ? _self._topOffer : topOffer // ignore: cast_nullable_to_non_nullable
as List<Product>,todayOffer: null == todayOffer ? _self._todayOffer : todayOffer // ignore: cast_nullable_to_non_nullable
as List<Store>,popularNearYou: null == popularNearYou ? _self._popularNearYou : popularNearYou // ignore: cast_nullable_to_non_nullable
as List<Product>,allStore: null == allStore ? _self._allStore : allStore // ignore: cast_nullable_to_non_nullable
as List<Store>,
  ));
}

/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLocationCopyWith<$Res> get userLocation {
  
  return $UserLocationCopyWith<$Res>(_self.userLocation, (value) {
    return _then(_self.copyWith(userLocation: value));
  });
}
}


/// @nodoc
mixin _$UserLocation {

 int get id; double get latitude; double get longitude;
/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLocationCopyWith<UserLocation> get copyWith => _$UserLocationCopyWithImpl<UserLocation>(this as UserLocation, _$identity);

  /// Serializes this UserLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,latitude,longitude);

@override
String toString() {
  return 'UserLocation(id: $id, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $UserLocationCopyWith<$Res>  {
  factory $UserLocationCopyWith(UserLocation value, $Res Function(UserLocation) _then) = _$UserLocationCopyWithImpl;
@useResult
$Res call({
 int id, double latitude, double longitude
});




}
/// @nodoc
class _$UserLocationCopyWithImpl<$Res>
    implements $UserLocationCopyWith<$Res> {
  _$UserLocationCopyWithImpl(this._self, this._then);

  final UserLocation _self;
  final $Res Function(UserLocation) _then;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserLocation implements UserLocation {
  const _UserLocation({required this.id, required this.latitude, required this.longitude});
  factory _UserLocation.fromJson(Map<String, dynamic> json) => _$UserLocationFromJson(json);

@override final  int id;
@override final  double latitude;
@override final  double longitude;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLocationCopyWith<_UserLocation> get copyWith => __$UserLocationCopyWithImpl<_UserLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,latitude,longitude);

@override
String toString() {
  return 'UserLocation(id: $id, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$UserLocationCopyWith<$Res> implements $UserLocationCopyWith<$Res> {
  factory _$UserLocationCopyWith(_UserLocation value, $Res Function(_UserLocation) _then) = __$UserLocationCopyWithImpl;
@override @useResult
$Res call({
 int id, double latitude, double longitude
});




}
/// @nodoc
class __$UserLocationCopyWithImpl<$Res>
    implements _$UserLocationCopyWith<$Res> {
  __$UserLocationCopyWithImpl(this._self, this._then);

  final _UserLocation _self;
  final $Res Function(_UserLocation) _then;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_UserLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Category {

 int get id; String get name; String get image;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'Category(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({required this.id, required this.name, required this.image});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  int id;
@override final  String name;
@override final  String image;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'Category(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Store {

 int get id; String get name; String get logo;@JsonKey(name: 'cover_photo') String get coverPhoto; double get rating;@JsonKey(name: 'delivery_time') String get deliveryTime;@JsonKey(name: 'distance_km') double? get distanceKm;@JsonKey(name: 'delivery_fee') double? get deliveryFee; int? get status;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,coverPhoto,rating,deliveryTime,distanceKm,deliveryFee,status);

@override
String toString() {
  return 'Store(id: $id, name: $name, logo: $logo, coverPhoto: $coverPhoto, rating: $rating, deliveryTime: $deliveryTime, distanceKm: $distanceKm, deliveryFee: $deliveryFee, status: $status)';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
 int id, String name, String logo,@JsonKey(name: 'cover_photo') String coverPhoto, double rating,@JsonKey(name: 'delivery_time') String deliveryTime,@JsonKey(name: 'distance_km') double? distanceKm,@JsonKey(name: 'delivery_fee') double? deliveryFee, int? status
});




}
/// @nodoc
class _$StoreCopyWithImpl<$Res>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? coverPhoto = null,Object? rating = null,Object? deliveryTime = null,Object? distanceKm = freezed,Object? deliveryFee = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,coverPhoto: null == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Store implements Store {
  const _Store({required this.id, required this.name, required this.logo, @JsonKey(name: 'cover_photo') required this.coverPhoto, required this.rating, @JsonKey(name: 'delivery_time') required this.deliveryTime, @JsonKey(name: 'distance_km') this.distanceKm, @JsonKey(name: 'delivery_fee') this.deliveryFee, this.status});
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

@override final  int id;
@override final  String name;
@override final  String logo;
@override@JsonKey(name: 'cover_photo') final  String coverPhoto;
@override final  double rating;
@override@JsonKey(name: 'delivery_time') final  String deliveryTime;
@override@JsonKey(name: 'distance_km') final  double? distanceKm;
@override@JsonKey(name: 'delivery_fee') final  double? deliveryFee;
@override final  int? status;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCopyWith<_Store> get copyWith => __$StoreCopyWithImpl<_Store>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,coverPhoto,rating,deliveryTime,distanceKm,deliveryFee,status);

@override
String toString() {
  return 'Store(id: $id, name: $name, logo: $logo, coverPhoto: $coverPhoto, rating: $rating, deliveryTime: $deliveryTime, distanceKm: $distanceKm, deliveryFee: $deliveryFee, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) = __$StoreCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String logo,@JsonKey(name: 'cover_photo') String coverPhoto, double rating,@JsonKey(name: 'delivery_time') String deliveryTime,@JsonKey(name: 'distance_km') double? distanceKm,@JsonKey(name: 'delivery_fee') double? deliveryFee, int? status
});




}
/// @nodoc
class __$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? coverPhoto = null,Object? rating = null,Object? deliveryTime = null,Object? distanceKm = freezed,Object? deliveryFee = freezed,Object? status = freezed,}) {
  return _then(_Store(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,coverPhoto: null == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Product {

 int get id; String? get name; String get image;@JsonKey(name: 'distance_km') double? get distanceKm;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,distanceKm);

@override
String toString() {
  return 'Product(id: $id, name: $name, image: $image, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int id, String? name, String image,@JsonKey(name: 'distance_km') double? distanceKm
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? image = null,Object? distanceKm = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.id, this.name, required this.image, @JsonKey(name: 'distance_km') this.distanceKm});
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int id;
@override final  String? name;
@override final  String image;
@override@JsonKey(name: 'distance_km') final  double? distanceKm;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,distanceKm);

@override
String toString() {
  return 'Product(id: $id, name: $name, image: $image, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, String image,@JsonKey(name: 'distance_km') double? distanceKm
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? image = null,Object? distanceKm = freezed,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
