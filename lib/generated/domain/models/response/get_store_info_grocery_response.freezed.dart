// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_store_info_grocery_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreInfoGroceryResponse {

 GroceryStore get store; List<GroceryCategory> get categories; List<GrocerySection> get sections;
/// Create a copy of StoreInfoGroceryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInfoGroceryResponseCopyWith<StoreInfoGroceryResponse> get copyWith => _$StoreInfoGroceryResponseCopyWithImpl<StoreInfoGroceryResponse>(this as StoreInfoGroceryResponse, _$identity);

  /// Serializes this StoreInfoGroceryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInfoGroceryResponse&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'StoreInfoGroceryResponse(store: $store, categories: $categories, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $StoreInfoGroceryResponseCopyWith<$Res>  {
  factory $StoreInfoGroceryResponseCopyWith(StoreInfoGroceryResponse value, $Res Function(StoreInfoGroceryResponse) _then) = _$StoreInfoGroceryResponseCopyWithImpl;
@useResult
$Res call({
 GroceryStore store, List<GroceryCategory> categories, List<GrocerySection> sections
});


$GroceryStoreCopyWith<$Res> get store;

}
/// @nodoc
class _$StoreInfoGroceryResponseCopyWithImpl<$Res>
    implements $StoreInfoGroceryResponseCopyWith<$Res> {
  _$StoreInfoGroceryResponseCopyWithImpl(this._self, this._then);

  final StoreInfoGroceryResponse _self;
  final $Res Function(StoreInfoGroceryResponse) _then;

/// Create a copy of StoreInfoGroceryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = null,Object? categories = null,Object? sections = null,}) {
  return _then(_self.copyWith(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as GroceryStore,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<GroceryCategory>,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<GrocerySection>,
  ));
}
/// Create a copy of StoreInfoGroceryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryStoreCopyWith<$Res> get store {
  
  return $GroceryStoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _StoreInfoGroceryResponse implements StoreInfoGroceryResponse {
  const _StoreInfoGroceryResponse({required this.store, required final  List<GroceryCategory> categories, required final  List<GrocerySection> sections}): _categories = categories,_sections = sections;
  factory _StoreInfoGroceryResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoGroceryResponseFromJson(json);

@override final  GroceryStore store;
 final  List<GroceryCategory> _categories;
@override List<GroceryCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<GrocerySection> _sections;
@override List<GrocerySection> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of StoreInfoGroceryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInfoGroceryResponseCopyWith<_StoreInfoGroceryResponse> get copyWith => __$StoreInfoGroceryResponseCopyWithImpl<_StoreInfoGroceryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInfoGroceryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInfoGroceryResponse&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'StoreInfoGroceryResponse(store: $store, categories: $categories, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$StoreInfoGroceryResponseCopyWith<$Res> implements $StoreInfoGroceryResponseCopyWith<$Res> {
  factory _$StoreInfoGroceryResponseCopyWith(_StoreInfoGroceryResponse value, $Res Function(_StoreInfoGroceryResponse) _then) = __$StoreInfoGroceryResponseCopyWithImpl;
@override @useResult
$Res call({
 GroceryStore store, List<GroceryCategory> categories, List<GrocerySection> sections
});


@override $GroceryStoreCopyWith<$Res> get store;

}
/// @nodoc
class __$StoreInfoGroceryResponseCopyWithImpl<$Res>
    implements _$StoreInfoGroceryResponseCopyWith<$Res> {
  __$StoreInfoGroceryResponseCopyWithImpl(this._self, this._then);

  final _StoreInfoGroceryResponse _self;
  final $Res Function(_StoreInfoGroceryResponse) _then;

/// Create a copy of StoreInfoGroceryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = null,Object? categories = null,Object? sections = null,}) {
  return _then(_StoreInfoGroceryResponse(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as GroceryStore,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<GroceryCategory>,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<GrocerySection>,
  ));
}

/// Create a copy of StoreInfoGroceryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryStoreCopyWith<$Res> get store {
  
  return $GroceryStoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
mixin _$GroceryStore {

 int get id; String get name;@JsonKey(name: 'logo_url') String get logoUrl;@JsonKey(name: 'cover_photo_url') String get coverPhotoUrl; GroceryRating get rating;
/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryStoreCopyWith<GroceryStore> get copyWith => _$GroceryStoreCopyWithImpl<GroceryStore>(this as GroceryStore, _$identity);

  /// Serializes this GroceryStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.coverPhotoUrl, coverPhotoUrl) || other.coverPhotoUrl == coverPhotoUrl)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoUrl,coverPhotoUrl,rating);

@override
String toString() {
  return 'GroceryStore(id: $id, name: $name, logoUrl: $logoUrl, coverPhotoUrl: $coverPhotoUrl, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $GroceryStoreCopyWith<$Res>  {
  factory $GroceryStoreCopyWith(GroceryStore value, $Res Function(GroceryStore) _then) = _$GroceryStoreCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_url') String logoUrl,@JsonKey(name: 'cover_photo_url') String coverPhotoUrl, GroceryRating rating
});


$GroceryRatingCopyWith<$Res> get rating;

}
/// @nodoc
class _$GroceryStoreCopyWithImpl<$Res>
    implements $GroceryStoreCopyWith<$Res> {
  _$GroceryStoreCopyWithImpl(this._self, this._then);

  final GroceryStore _self;
  final $Res Function(GroceryStore) _then;

/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logoUrl = null,Object? coverPhotoUrl = null,Object? rating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,coverPhotoUrl: null == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as GroceryRating,
  ));
}
/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryRatingCopyWith<$Res> get rating {
  
  return $GroceryRatingCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GroceryStore implements GroceryStore {
  const _GroceryStore({required this.id, required this.name, @JsonKey(name: 'logo_url') required this.logoUrl, @JsonKey(name: 'cover_photo_url') required this.coverPhotoUrl, required this.rating});
  factory _GroceryStore.fromJson(Map<String, dynamic> json) => _$GroceryStoreFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'logo_url') final  String logoUrl;
@override@JsonKey(name: 'cover_photo_url') final  String coverPhotoUrl;
@override final  GroceryRating rating;

/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryStoreCopyWith<_GroceryStore> get copyWith => __$GroceryStoreCopyWithImpl<_GroceryStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroceryStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.coverPhotoUrl, coverPhotoUrl) || other.coverPhotoUrl == coverPhotoUrl)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoUrl,coverPhotoUrl,rating);

@override
String toString() {
  return 'GroceryStore(id: $id, name: $name, logoUrl: $logoUrl, coverPhotoUrl: $coverPhotoUrl, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$GroceryStoreCopyWith<$Res> implements $GroceryStoreCopyWith<$Res> {
  factory _$GroceryStoreCopyWith(_GroceryStore value, $Res Function(_GroceryStore) _then) = __$GroceryStoreCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_url') String logoUrl,@JsonKey(name: 'cover_photo_url') String coverPhotoUrl, GroceryRating rating
});


@override $GroceryRatingCopyWith<$Res> get rating;

}
/// @nodoc
class __$GroceryStoreCopyWithImpl<$Res>
    implements _$GroceryStoreCopyWith<$Res> {
  __$GroceryStoreCopyWithImpl(this._self, this._then);

  final _GroceryStore _self;
  final $Res Function(_GroceryStore) _then;

/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logoUrl = null,Object? coverPhotoUrl = null,Object? rating = null,}) {
  return _then(_GroceryStore(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,coverPhotoUrl: null == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as GroceryRating,
  ));
}

/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryRatingCopyWith<$Res> get rating {
  
  return $GroceryRatingCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// @nodoc
mixin _$GroceryRating {

 bool get delivery; bool get pickup;
/// Create a copy of GroceryRating
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryRatingCopyWith<GroceryRating> get copyWith => _$GroceryRatingCopyWithImpl<GroceryRating>(this as GroceryRating, _$identity);

  /// Serializes this GroceryRating to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryRating&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.pickup, pickup) || other.pickup == pickup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,delivery,pickup);

@override
String toString() {
  return 'GroceryRating(delivery: $delivery, pickup: $pickup)';
}


}

/// @nodoc
abstract mixin class $GroceryRatingCopyWith<$Res>  {
  factory $GroceryRatingCopyWith(GroceryRating value, $Res Function(GroceryRating) _then) = _$GroceryRatingCopyWithImpl;
@useResult
$Res call({
 bool delivery, bool pickup
});




}
/// @nodoc
class _$GroceryRatingCopyWithImpl<$Res>
    implements $GroceryRatingCopyWith<$Res> {
  _$GroceryRatingCopyWithImpl(this._self, this._then);

  final GroceryRating _self;
  final $Res Function(GroceryRating) _then;

/// Create a copy of GroceryRating
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? delivery = null,Object? pickup = null,}) {
  return _then(_self.copyWith(
delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool,pickup: null == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GroceryRating implements GroceryRating {
  const _GroceryRating({required this.delivery, required this.pickup});
  factory _GroceryRating.fromJson(Map<String, dynamic> json) => _$GroceryRatingFromJson(json);

@override final  bool delivery;
@override final  bool pickup;

/// Create a copy of GroceryRating
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryRatingCopyWith<_GroceryRating> get copyWith => __$GroceryRatingCopyWithImpl<_GroceryRating>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroceryRatingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryRating&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.pickup, pickup) || other.pickup == pickup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,delivery,pickup);

@override
String toString() {
  return 'GroceryRating(delivery: $delivery, pickup: $pickup)';
}


}

/// @nodoc
abstract mixin class _$GroceryRatingCopyWith<$Res> implements $GroceryRatingCopyWith<$Res> {
  factory _$GroceryRatingCopyWith(_GroceryRating value, $Res Function(_GroceryRating) _then) = __$GroceryRatingCopyWithImpl;
@override @useResult
$Res call({
 bool delivery, bool pickup
});




}
/// @nodoc
class __$GroceryRatingCopyWithImpl<$Res>
    implements _$GroceryRatingCopyWith<$Res> {
  __$GroceryRatingCopyWithImpl(this._self, this._then);

  final _GroceryRating _self;
  final $Res Function(_GroceryRating) _then;

/// Create a copy of GroceryRating
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? delivery = null,Object? pickup = null,}) {
  return _then(_GroceryRating(
delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool,pickup: null == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$GroceryCategory {

 int get id; String get name;@JsonKey(name: 'image_url') String get imageUrl;
/// Create a copy of GroceryCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryCategoryCopyWith<GroceryCategory> get copyWith => _$GroceryCategoryCopyWithImpl<GroceryCategory>(this as GroceryCategory, _$identity);

  /// Serializes this GroceryCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl);

@override
String toString() {
  return 'GroceryCategory(id: $id, name: $name, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $GroceryCategoryCopyWith<$Res>  {
  factory $GroceryCategoryCopyWith(GroceryCategory value, $Res Function(GroceryCategory) _then) = _$GroceryCategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl
});




}
/// @nodoc
class _$GroceryCategoryCopyWithImpl<$Res>
    implements $GroceryCategoryCopyWith<$Res> {
  _$GroceryCategoryCopyWithImpl(this._self, this._then);

  final GroceryCategory _self;
  final $Res Function(GroceryCategory) _then;

/// Create a copy of GroceryCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GroceryCategory implements GroceryCategory {
  const _GroceryCategory({required this.id, required this.name, @JsonKey(name: 'image_url') required this.imageUrl});
  factory _GroceryCategory.fromJson(Map<String, dynamic> json) => _$GroceryCategoryFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;

/// Create a copy of GroceryCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryCategoryCopyWith<_GroceryCategory> get copyWith => __$GroceryCategoryCopyWithImpl<_GroceryCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroceryCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl);

@override
String toString() {
  return 'GroceryCategory(id: $id, name: $name, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$GroceryCategoryCopyWith<$Res> implements $GroceryCategoryCopyWith<$Res> {
  factory _$GroceryCategoryCopyWith(_GroceryCategory value, $Res Function(_GroceryCategory) _then) = __$GroceryCategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl
});




}
/// @nodoc
class __$GroceryCategoryCopyWithImpl<$Res>
    implements _$GroceryCategoryCopyWith<$Res> {
  __$GroceryCategoryCopyWithImpl(this._self, this._then);

  final _GroceryCategory _self;
  final $Res Function(_GroceryCategory) _then;

/// Create a copy of GroceryCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,}) {
  return _then(_GroceryCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GrocerySection {

@JsonKey(name: 'category_id') int get categoryId; List<GroceryItem> get items;
/// Create a copy of GrocerySection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrocerySectionCopyWith<GrocerySection> get copyWith => _$GrocerySectionCopyWithImpl<GrocerySection>(this as GrocerySection, _$identity);

  /// Serializes this GrocerySection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrocerySection&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'GrocerySection(categoryId: $categoryId, items: $items)';
}


}

/// @nodoc
abstract mixin class $GrocerySectionCopyWith<$Res>  {
  factory $GrocerySectionCopyWith(GrocerySection value, $Res Function(GrocerySection) _then) = _$GrocerySectionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category_id') int categoryId, List<GroceryItem> items
});




}
/// @nodoc
class _$GrocerySectionCopyWithImpl<$Res>
    implements $GrocerySectionCopyWith<$Res> {
  _$GrocerySectionCopyWithImpl(this._self, this._then);

  final GrocerySection _self;
  final $Res Function(GrocerySection) _then;

/// Create a copy of GrocerySection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? items = null,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GroceryItem>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GrocerySection implements GrocerySection {
  const _GrocerySection({@JsonKey(name: 'category_id') required this.categoryId, required final  List<GroceryItem> items}): _items = items;
  factory _GrocerySection.fromJson(Map<String, dynamic> json) => _$GrocerySectionFromJson(json);

@override@JsonKey(name: 'category_id') final  int categoryId;
 final  List<GroceryItem> _items;
@override List<GroceryItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of GrocerySection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrocerySectionCopyWith<_GrocerySection> get copyWith => __$GrocerySectionCopyWithImpl<_GrocerySection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrocerySectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrocerySection&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'GrocerySection(categoryId: $categoryId, items: $items)';
}


}

/// @nodoc
abstract mixin class _$GrocerySectionCopyWith<$Res> implements $GrocerySectionCopyWith<$Res> {
  factory _$GrocerySectionCopyWith(_GrocerySection value, $Res Function(_GrocerySection) _then) = __$GrocerySectionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category_id') int categoryId, List<GroceryItem> items
});




}
/// @nodoc
class __$GrocerySectionCopyWithImpl<$Res>
    implements _$GrocerySectionCopyWith<$Res> {
  __$GrocerySectionCopyWithImpl(this._self, this._then);

  final _GrocerySection _self;
  final $Res Function(_GrocerySection) _then;

/// Create a copy of GrocerySection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? items = null,}) {
  return _then(_GrocerySection(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GroceryItem>,
  ));
}


}


/// @nodoc
mixin _$GroceryItem {

 int get id; String get name;@JsonKey(name: 'image_url') String get imageUrl; int get price;@JsonKey(name: 'avg_rating') double get avgRating;@JsonKey(name: 'rating_count') int get ratingCount;
/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryItemCopyWith<GroceryItem> get copyWith => _$GroceryItemCopyWithImpl<GroceryItem>(this as GroceryItem, _$identity);

  /// Serializes this GroceryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,avgRating,ratingCount);

@override
String toString() {
  return 'GroceryItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, avgRating: $avgRating, ratingCount: $ratingCount)';
}


}

/// @nodoc
abstract mixin class $GroceryItemCopyWith<$Res>  {
  factory $GroceryItemCopyWith(GroceryItem value, $Res Function(GroceryItem) _then) = _$GroceryItemCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, int price,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'rating_count') int ratingCount
});




}
/// @nodoc
class _$GroceryItemCopyWithImpl<$Res>
    implements $GroceryItemCopyWith<$Res> {
  _$GroceryItemCopyWithImpl(this._self, this._then);

  final GroceryItem _self;
  final $Res Function(GroceryItem) _then;

/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? avgRating = null,Object? ratingCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GroceryItem implements GroceryItem {
  const _GroceryItem({required this.id, required this.name, @JsonKey(name: 'image_url') required this.imageUrl, required this.price, @JsonKey(name: 'avg_rating') required this.avgRating, @JsonKey(name: 'rating_count') this.ratingCount = 0});
  factory _GroceryItem.fromJson(Map<String, dynamic> json) => _$GroceryItemFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override final  int price;
@override@JsonKey(name: 'avg_rating') final  double avgRating;
@override@JsonKey(name: 'rating_count') final  int ratingCount;

/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryItemCopyWith<_GroceryItem> get copyWith => __$GroceryItemCopyWithImpl<_GroceryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroceryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,avgRating,ratingCount);

@override
String toString() {
  return 'GroceryItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, avgRating: $avgRating, ratingCount: $ratingCount)';
}


}

/// @nodoc
abstract mixin class _$GroceryItemCopyWith<$Res> implements $GroceryItemCopyWith<$Res> {
  factory _$GroceryItemCopyWith(_GroceryItem value, $Res Function(_GroceryItem) _then) = __$GroceryItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, int price,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'rating_count') int ratingCount
});




}
/// @nodoc
class __$GroceryItemCopyWithImpl<$Res>
    implements _$GroceryItemCopyWith<$Res> {
  __$GroceryItemCopyWithImpl(this._self, this._then);

  final _GroceryItem _self;
  final $Res Function(_GroceryItem) _then;

/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? avgRating = null,Object? ratingCount = null,}) {
  return _then(_GroceryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
