// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_store_info_food_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreInfoFoodResponse {

 StoreDetail get store;@JsonKey(name: 'popular_items') List<ProductItem> get popularItems; List<Section> get sections;
/// Create a copy of StoreInfoFoodResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInfoFoodResponseCopyWith<StoreInfoFoodResponse> get copyWith => _$StoreInfoFoodResponseCopyWithImpl<StoreInfoFoodResponse>(this as StoreInfoFoodResponse, _$identity);

  /// Serializes this StoreInfoFoodResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInfoFoodResponse&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.popularItems, popularItems)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,const DeepCollectionEquality().hash(popularItems),const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'StoreInfoFoodResponse(store: $store, popularItems: $popularItems, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $StoreInfoFoodResponseCopyWith<$Res>  {
  factory $StoreInfoFoodResponseCopyWith(StoreInfoFoodResponse value, $Res Function(StoreInfoFoodResponse) _then) = _$StoreInfoFoodResponseCopyWithImpl;
@useResult
$Res call({
 StoreDetail store,@JsonKey(name: 'popular_items') List<ProductItem> popularItems, List<Section> sections
});


$StoreDetailCopyWith<$Res> get store;

}
/// @nodoc
class _$StoreInfoFoodResponseCopyWithImpl<$Res>
    implements $StoreInfoFoodResponseCopyWith<$Res> {
  _$StoreInfoFoodResponseCopyWithImpl(this._self, this._then);

  final StoreInfoFoodResponse _self;
  final $Res Function(StoreInfoFoodResponse) _then;

/// Create a copy of StoreInfoFoodResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = null,Object? popularItems = null,Object? sections = null,}) {
  return _then(_self.copyWith(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreDetail,popularItems: null == popularItems ? _self.popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as List<ProductItem>,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<Section>,
  ));
}
/// Create a copy of StoreInfoFoodResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDetailCopyWith<$Res> get store {
  
  return $StoreDetailCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _StoreInfoFoodResponse implements StoreInfoFoodResponse {
  const _StoreInfoFoodResponse({this.store = const StoreDetail(), @JsonKey(name: 'popular_items') final  List<ProductItem> popularItems = const [], final  List<Section> sections = const []}): _popularItems = popularItems,_sections = sections;
  factory _StoreInfoFoodResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoFoodResponseFromJson(json);

@override@JsonKey() final  StoreDetail store;
 final  List<ProductItem> _popularItems;
@override@JsonKey(name: 'popular_items') List<ProductItem> get popularItems {
  if (_popularItems is EqualUnmodifiableListView) return _popularItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularItems);
}

 final  List<Section> _sections;
@override@JsonKey() List<Section> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of StoreInfoFoodResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInfoFoodResponseCopyWith<_StoreInfoFoodResponse> get copyWith => __$StoreInfoFoodResponseCopyWithImpl<_StoreInfoFoodResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInfoFoodResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInfoFoodResponse&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other._popularItems, _popularItems)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,const DeepCollectionEquality().hash(_popularItems),const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'StoreInfoFoodResponse(store: $store, popularItems: $popularItems, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$StoreInfoFoodResponseCopyWith<$Res> implements $StoreInfoFoodResponseCopyWith<$Res> {
  factory _$StoreInfoFoodResponseCopyWith(_StoreInfoFoodResponse value, $Res Function(_StoreInfoFoodResponse) _then) = __$StoreInfoFoodResponseCopyWithImpl;
@override @useResult
$Res call({
 StoreDetail store,@JsonKey(name: 'popular_items') List<ProductItem> popularItems, List<Section> sections
});


@override $StoreDetailCopyWith<$Res> get store;

}
/// @nodoc
class __$StoreInfoFoodResponseCopyWithImpl<$Res>
    implements _$StoreInfoFoodResponseCopyWith<$Res> {
  __$StoreInfoFoodResponseCopyWithImpl(this._self, this._then);

  final _StoreInfoFoodResponse _self;
  final $Res Function(_StoreInfoFoodResponse) _then;

/// Create a copy of StoreInfoFoodResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = null,Object? popularItems = null,Object? sections = null,}) {
  return _then(_StoreInfoFoodResponse(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreDetail,popularItems: null == popularItems ? _self._popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as List<ProductItem>,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<Section>,
  ));
}

/// Create a copy of StoreInfoFoodResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDetailCopyWith<$Res> get store {
  
  return $StoreDetailCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
mixin _$StoreDetail {

 int get id; String get name;@JsonKey(name: 'logo_url') String get logoUrl;@JsonKey(name: 'cover_photo_url') String get coverPhotoUrl; double get rating;@JsonKey(name: 'review_count') int get reviewCount; StoreServices get services;
/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreDetailCopyWith<StoreDetail> get copyWith => _$StoreDetailCopyWithImpl<StoreDetail>(this as StoreDetail, _$identity);

  /// Serializes this StoreDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.coverPhotoUrl, coverPhotoUrl) || other.coverPhotoUrl == coverPhotoUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.services, services) || other.services == services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoUrl,coverPhotoUrl,rating,reviewCount,services);

@override
String toString() {
  return 'StoreDetail(id: $id, name: $name, logoUrl: $logoUrl, coverPhotoUrl: $coverPhotoUrl, rating: $rating, reviewCount: $reviewCount, services: $services)';
}


}

/// @nodoc
abstract mixin class $StoreDetailCopyWith<$Res>  {
  factory $StoreDetailCopyWith(StoreDetail value, $Res Function(StoreDetail) _then) = _$StoreDetailCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_url') String logoUrl,@JsonKey(name: 'cover_photo_url') String coverPhotoUrl, double rating,@JsonKey(name: 'review_count') int reviewCount, StoreServices services
});


$StoreServicesCopyWith<$Res> get services;

}
/// @nodoc
class _$StoreDetailCopyWithImpl<$Res>
    implements $StoreDetailCopyWith<$Res> {
  _$StoreDetailCopyWithImpl(this._self, this._then);

  final StoreDetail _self;
  final $Res Function(StoreDetail) _then;

/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logoUrl = null,Object? coverPhotoUrl = null,Object? rating = null,Object? reviewCount = null,Object? services = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,coverPhotoUrl: null == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as StoreServices,
  ));
}
/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreServicesCopyWith<$Res> get services {
  
  return $StoreServicesCopyWith<$Res>(_self.services, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _StoreDetail implements StoreDetail {
  const _StoreDetail({this.id = 0, this.name = '', @JsonKey(name: 'logo_url') this.logoUrl = '', @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl = '', this.rating = 0.0, @JsonKey(name: 'review_count') this.reviewCount = 0, this.services = const StoreServices()});
  factory _StoreDetail.fromJson(Map<String, dynamic> json) => _$StoreDetailFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'logo_url') final  String logoUrl;
@override@JsonKey(name: 'cover_photo_url') final  String coverPhotoUrl;
@override@JsonKey() final  double rating;
@override@JsonKey(name: 'review_count') final  int reviewCount;
@override@JsonKey() final  StoreServices services;

/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreDetailCopyWith<_StoreDetail> get copyWith => __$StoreDetailCopyWithImpl<_StoreDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.coverPhotoUrl, coverPhotoUrl) || other.coverPhotoUrl == coverPhotoUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.services, services) || other.services == services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoUrl,coverPhotoUrl,rating,reviewCount,services);

@override
String toString() {
  return 'StoreDetail(id: $id, name: $name, logoUrl: $logoUrl, coverPhotoUrl: $coverPhotoUrl, rating: $rating, reviewCount: $reviewCount, services: $services)';
}


}

/// @nodoc
abstract mixin class _$StoreDetailCopyWith<$Res> implements $StoreDetailCopyWith<$Res> {
  factory _$StoreDetailCopyWith(_StoreDetail value, $Res Function(_StoreDetail) _then) = __$StoreDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_url') String logoUrl,@JsonKey(name: 'cover_photo_url') String coverPhotoUrl, double rating,@JsonKey(name: 'review_count') int reviewCount, StoreServices services
});


@override $StoreServicesCopyWith<$Res> get services;

}
/// @nodoc
class __$StoreDetailCopyWithImpl<$Res>
    implements _$StoreDetailCopyWith<$Res> {
  __$StoreDetailCopyWithImpl(this._self, this._then);

  final _StoreDetail _self;
  final $Res Function(_StoreDetail) _then;

/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logoUrl = null,Object? coverPhotoUrl = null,Object? rating = null,Object? reviewCount = null,Object? services = null,}) {
  return _then(_StoreDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,coverPhotoUrl: null == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as StoreServices,
  ));
}

/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreServicesCopyWith<$Res> get services {
  
  return $StoreServicesCopyWith<$Res>(_self.services, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
mixin _$StoreServices {

@JsonKey(name: 'in_store') bool get inStore; bool get delivery;@JsonKey(name: 'drive_thru') bool get driveThru;
/// Create a copy of StoreServices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreServicesCopyWith<StoreServices> get copyWith => _$StoreServicesCopyWithImpl<StoreServices>(this as StoreServices, _$identity);

  /// Serializes this StoreServices to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreServices&&(identical(other.inStore, inStore) || other.inStore == inStore)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.driveThru, driveThru) || other.driveThru == driveThru));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inStore,delivery,driveThru);

@override
String toString() {
  return 'StoreServices(inStore: $inStore, delivery: $delivery, driveThru: $driveThru)';
}


}

/// @nodoc
abstract mixin class $StoreServicesCopyWith<$Res>  {
  factory $StoreServicesCopyWith(StoreServices value, $Res Function(StoreServices) _then) = _$StoreServicesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'in_store') bool inStore, bool delivery,@JsonKey(name: 'drive_thru') bool driveThru
});




}
/// @nodoc
class _$StoreServicesCopyWithImpl<$Res>
    implements $StoreServicesCopyWith<$Res> {
  _$StoreServicesCopyWithImpl(this._self, this._then);

  final StoreServices _self;
  final $Res Function(StoreServices) _then;

/// Create a copy of StoreServices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inStore = null,Object? delivery = null,Object? driveThru = null,}) {
  return _then(_self.copyWith(
inStore: null == inStore ? _self.inStore : inStore // ignore: cast_nullable_to_non_nullable
as bool,delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool,driveThru: null == driveThru ? _self.driveThru : driveThru // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StoreServices implements StoreServices {
  const _StoreServices({@JsonKey(name: 'in_store') this.inStore = false, this.delivery = false, @JsonKey(name: 'drive_thru') this.driveThru = false});
  factory _StoreServices.fromJson(Map<String, dynamic> json) => _$StoreServicesFromJson(json);

@override@JsonKey(name: 'in_store') final  bool inStore;
@override@JsonKey() final  bool delivery;
@override@JsonKey(name: 'drive_thru') final  bool driveThru;

/// Create a copy of StoreServices
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreServicesCopyWith<_StoreServices> get copyWith => __$StoreServicesCopyWithImpl<_StoreServices>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreServicesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreServices&&(identical(other.inStore, inStore) || other.inStore == inStore)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.driveThru, driveThru) || other.driveThru == driveThru));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inStore,delivery,driveThru);

@override
String toString() {
  return 'StoreServices(inStore: $inStore, delivery: $delivery, driveThru: $driveThru)';
}


}

/// @nodoc
abstract mixin class _$StoreServicesCopyWith<$Res> implements $StoreServicesCopyWith<$Res> {
  factory _$StoreServicesCopyWith(_StoreServices value, $Res Function(_StoreServices) _then) = __$StoreServicesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'in_store') bool inStore, bool delivery,@JsonKey(name: 'drive_thru') bool driveThru
});




}
/// @nodoc
class __$StoreServicesCopyWithImpl<$Res>
    implements _$StoreServicesCopyWith<$Res> {
  __$StoreServicesCopyWithImpl(this._self, this._then);

  final _StoreServices _self;
  final $Res Function(_StoreServices) _then;

/// Create a copy of StoreServices
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inStore = null,Object? delivery = null,Object? driveThru = null,}) {
  return _then(_StoreServices(
inStore: null == inStore ? _self.inStore : inStore // ignore: cast_nullable_to_non_nullable
as bool,delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool,driveThru: null == driveThru ? _self.driveThru : driveThru // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ProductItem {

 int get id; String get name;@JsonKey(name: 'image_url') String get imageUrl; double get price;@JsonKey(name: 'avg_rating') double get avgRating;@JsonKey(name: 'rating_count') int get ratingCount;
/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductItemCopyWith<ProductItem> get copyWith => _$ProductItemCopyWithImpl<ProductItem>(this as ProductItem, _$identity);

  /// Serializes this ProductItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,avgRating,ratingCount);

@override
String toString() {
  return 'ProductItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, avgRating: $avgRating, ratingCount: $ratingCount)';
}


}

/// @nodoc
abstract mixin class $ProductItemCopyWith<$Res>  {
  factory $ProductItemCopyWith(ProductItem value, $Res Function(ProductItem) _then) = _$ProductItemCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, double price,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'rating_count') int ratingCount
});




}
/// @nodoc
class _$ProductItemCopyWithImpl<$Res>
    implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._self, this._then);

  final ProductItem _self;
  final $Res Function(ProductItem) _then;

/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? avgRating = null,Object? ratingCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductItem implements ProductItem {
  const _ProductItem({this.id = 0, this.name = '', @JsonKey(name: 'image_url') this.imageUrl = '', this.price = 0.0, @JsonKey(name: 'avg_rating') this.avgRating = 0.0, @JsonKey(name: 'rating_count') this.ratingCount = 0});
  factory _ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey() final  double price;
@override@JsonKey(name: 'avg_rating') final  double avgRating;
@override@JsonKey(name: 'rating_count') final  int ratingCount;

/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductItemCopyWith<_ProductItem> get copyWith => __$ProductItemCopyWithImpl<_ProductItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,avgRating,ratingCount);

@override
String toString() {
  return 'ProductItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, avgRating: $avgRating, ratingCount: $ratingCount)';
}


}

/// @nodoc
abstract mixin class _$ProductItemCopyWith<$Res> implements $ProductItemCopyWith<$Res> {
  factory _$ProductItemCopyWith(_ProductItem value, $Res Function(_ProductItem) _then) = __$ProductItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, double price,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'rating_count') int ratingCount
});




}
/// @nodoc
class __$ProductItemCopyWithImpl<$Res>
    implements _$ProductItemCopyWith<$Res> {
  __$ProductItemCopyWithImpl(this._self, this._then);

  final _ProductItem _self;
  final $Res Function(_ProductItem) _then;

/// Create a copy of ProductItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? avgRating = null,Object? ratingCount = null,}) {
  return _then(_ProductItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Section {

@JsonKey(name: 'category_id') int get categoryId;@JsonKey(name: 'category_name') String get categoryName; List<ProductItem> get items;
/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionCopyWith<Section> get copyWith => _$SectionCopyWithImpl<Section>(this as Section, _$identity);

  /// Serializes this Section to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Section&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,categoryName,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'Section(categoryId: $categoryId, categoryName: $categoryName, items: $items)';
}


}

/// @nodoc
abstract mixin class $SectionCopyWith<$Res>  {
  factory $SectionCopyWith(Section value, $Res Function(Section) _then) = _$SectionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category_id') int categoryId,@JsonKey(name: 'category_name') String categoryName, List<ProductItem> items
});




}
/// @nodoc
class _$SectionCopyWithImpl<$Res>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._self, this._then);

  final Section _self;
  final $Res Function(Section) _then;

/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? categoryName = null,Object? items = null,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItem>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Section implements Section {
  const _Section({@JsonKey(name: 'category_id') this.categoryId = 0, @JsonKey(name: 'category_name') this.categoryName = '', final  List<ProductItem> items = const []}): _items = items;
  factory _Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);

@override@JsonKey(name: 'category_id') final  int categoryId;
@override@JsonKey(name: 'category_name') final  String categoryName;
 final  List<ProductItem> _items;
@override@JsonKey() List<ProductItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionCopyWith<_Section> get copyWith => __$SectionCopyWithImpl<_Section>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Section&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,categoryName,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'Section(categoryId: $categoryId, categoryName: $categoryName, items: $items)';
}


}

/// @nodoc
abstract mixin class _$SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$SectionCopyWith(_Section value, $Res Function(_Section) _then) = __$SectionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category_id') int categoryId,@JsonKey(name: 'category_name') String categoryName, List<ProductItem> items
});




}
/// @nodoc
class __$SectionCopyWithImpl<$Res>
    implements _$SectionCopyWith<$Res> {
  __$SectionCopyWithImpl(this._self, this._then);

  final _Section _self;
  final $Res Function(_Section) _then;

/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? categoryName = null,Object? items = null,}) {
  return _then(_Section(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItem>,
  ));
}


}

// dart format on
