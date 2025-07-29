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

 List<Category>? get categories; Map<String, dynamic>? get data;
/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStoresResponseCopyWith<GetStoresResponse> get copyWith => _$GetStoresResponseCopyWithImpl<GetStoresResponse>(this as GetStoresResponse, _$identity);

  /// Serializes this GetStoresResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStoresResponse&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetStoresResponse(categories: $categories, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetStoresResponseCopyWith<$Res>  {
  factory $GetStoresResponseCopyWith(GetStoresResponse value, $Res Function(GetStoresResponse) _then) = _$GetStoresResponseCopyWithImpl;
@useResult
$Res call({
 List<Category>? categories, Map<String, dynamic>? data
});




}
/// @nodoc
class _$GetStoresResponseCopyWithImpl<$Res>
    implements $GetStoresResponseCopyWith<$Res> {
  _$GetStoresResponseCopyWithImpl(this._self, this._then);

  final GetStoresResponse _self;
  final $Res Function(GetStoresResponse) _then;

/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetStoresResponse implements GetStoresResponse {
  const _GetStoresResponse({final  List<Category>? categories, final  Map<String, dynamic>? data}): _categories = categories,_data = data;
  factory _GetStoresResponse.fromJson(Map<String, dynamic> json) => _$GetStoresResponseFromJson(json);

 final  List<Category>? _categories;
@override List<Category>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _data;
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStoresResponse&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetStoresResponse(categories: $categories, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetStoresResponseCopyWith<$Res> implements $GetStoresResponseCopyWith<$Res> {
  factory _$GetStoresResponseCopyWith(_GetStoresResponse value, $Res Function(_GetStoresResponse) _then) = __$GetStoresResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Category>? categories, Map<String, dynamic>? data
});




}
/// @nodoc
class __$GetStoresResponseCopyWithImpl<$Res>
    implements _$GetStoresResponseCopyWith<$Res> {
  __$GetStoresResponseCopyWithImpl(this._self, this._then);

  final _GetStoresResponse _self;
  final $Res Function(_GetStoresResponse) _then;

/// Create a copy of GetStoresResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? data = freezed,}) {
  return _then(_GetStoresResponse(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
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
mixin _$BannerEntity {

 int get id; String? get name; String? get logo; String? get coverPhoto; double? get rating; double? get ratingCount; String? get deliveryTime; double? get distanceKm; double? get deliveryFee; int get status; String? get image;
/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerEntityCopyWith<BannerEntity> get copyWith => _$BannerEntityCopyWithImpl<BannerEntity>(this as BannerEntity, _$identity);

  /// Serializes this BannerEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,coverPhoto,rating,ratingCount,deliveryTime,distanceKm,deliveryFee,status,image);

@override
String toString() {
  return 'BannerEntity(id: $id, name: $name, logo: $logo, coverPhoto: $coverPhoto, rating: $rating, ratingCount: $ratingCount, deliveryTime: $deliveryTime, distanceKm: $distanceKm, deliveryFee: $deliveryFee, status: $status, image: $image)';
}


}

/// @nodoc
abstract mixin class $BannerEntityCopyWith<$Res>  {
  factory $BannerEntityCopyWith(BannerEntity value, $Res Function(BannerEntity) _then) = _$BannerEntityCopyWithImpl;
@useResult
$Res call({
 int id, String? name, String? logo, String? coverPhoto, double? rating, double? ratingCount, String? deliveryTime, double? distanceKm, double? deliveryFee, int status, String? image
});




}
/// @nodoc
class _$BannerEntityCopyWithImpl<$Res>
    implements $BannerEntityCopyWith<$Res> {
  _$BannerEntityCopyWithImpl(this._self, this._then);

  final BannerEntity _self;
  final $Res Function(BannerEntity) _then;

/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? logo = freezed,Object? coverPhoto = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? deliveryTime = freezed,Object? distanceKm = freezed,Object? deliveryFee = freezed,Object? status = null,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,coverPhoto: freezed == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as double?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _BannerEntity implements BannerEntity {
  const _BannerEntity({required this.id, this.name, this.logo, this.coverPhoto, this.rating, this.ratingCount, this.deliveryTime, this.distanceKm, this.deliveryFee, this.status = 1, this.image});
  factory _BannerEntity.fromJson(Map<String, dynamic> json) => _$BannerEntityFromJson(json);

@override final  int id;
@override final  String? name;
@override final  String? logo;
@override final  String? coverPhoto;
@override final  double? rating;
@override final  double? ratingCount;
@override final  String? deliveryTime;
@override final  double? distanceKm;
@override final  double? deliveryFee;
@override@JsonKey() final  int status;
@override final  String? image;

/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerEntityCopyWith<_BannerEntity> get copyWith => __$BannerEntityCopyWithImpl<_BannerEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,coverPhoto,rating,ratingCount,deliveryTime,distanceKm,deliveryFee,status,image);

@override
String toString() {
  return 'BannerEntity(id: $id, name: $name, logo: $logo, coverPhoto: $coverPhoto, rating: $rating, ratingCount: $ratingCount, deliveryTime: $deliveryTime, distanceKm: $distanceKm, deliveryFee: $deliveryFee, status: $status, image: $image)';
}


}

/// @nodoc
abstract mixin class _$BannerEntityCopyWith<$Res> implements $BannerEntityCopyWith<$Res> {
  factory _$BannerEntityCopyWith(_BannerEntity value, $Res Function(_BannerEntity) _then) = __$BannerEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, String? logo, String? coverPhoto, double? rating, double? ratingCount, String? deliveryTime, double? distanceKm, double? deliveryFee, int status, String? image
});




}
/// @nodoc
class __$BannerEntityCopyWithImpl<$Res>
    implements _$BannerEntityCopyWith<$Res> {
  __$BannerEntityCopyWithImpl(this._self, this._then);

  final _BannerEntity _self;
  final $Res Function(_BannerEntity) _then;

/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? logo = freezed,Object? coverPhoto = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? deliveryTime = freezed,Object? distanceKm = freezed,Object? deliveryFee = freezed,Object? status = null,Object? image = freezed,}) {
  return _then(_BannerEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,coverPhoto: freezed == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as double?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
