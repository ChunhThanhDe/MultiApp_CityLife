// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_store_infomation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreInfomationResponse {

// Store information (combined from both food and grocery)
 StoreDetail? get store; GroceryStore? get groceryStore;// Food-specific fields
@JsonKey(name: 'popular_items') List<ProductItem>? get popularItems; List<Section>? get sections;// Grocery-specific fields
 List<GroceryCategory>? get categories; List<GrocerySection>? get grocerySections;
/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInfomationResponseCopyWith<StoreInfomationResponse> get copyWith => _$StoreInfomationResponseCopyWithImpl<StoreInfomationResponse>(this as StoreInfomationResponse, _$identity);

  /// Serializes this StoreInfomationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInfomationResponse&&(identical(other.store, store) || other.store == store)&&(identical(other.groceryStore, groceryStore) || other.groceryStore == groceryStore)&&const DeepCollectionEquality().equals(other.popularItems, popularItems)&&const DeepCollectionEquality().equals(other.sections, sections)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.grocerySections, grocerySections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,groceryStore,const DeepCollectionEquality().hash(popularItems),const DeepCollectionEquality().hash(sections),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(grocerySections));

@override
String toString() {
  return 'StoreInfomationResponse(store: $store, groceryStore: $groceryStore, popularItems: $popularItems, sections: $sections, categories: $categories, grocerySections: $grocerySections)';
}


}

/// @nodoc
abstract mixin class $StoreInfomationResponseCopyWith<$Res>  {
  factory $StoreInfomationResponseCopyWith(StoreInfomationResponse value, $Res Function(StoreInfomationResponse) _then) = _$StoreInfomationResponseCopyWithImpl;
@useResult
$Res call({
 StoreDetail? store, GroceryStore? groceryStore,@JsonKey(name: 'popular_items') List<ProductItem>? popularItems, List<Section>? sections, List<GroceryCategory>? categories, List<GrocerySection>? grocerySections
});


$StoreDetailCopyWith<$Res>? get store;$GroceryStoreCopyWith<$Res>? get groceryStore;

}
/// @nodoc
class _$StoreInfomationResponseCopyWithImpl<$Res>
    implements $StoreInfomationResponseCopyWith<$Res> {
  _$StoreInfomationResponseCopyWithImpl(this._self, this._then);

  final StoreInfomationResponse _self;
  final $Res Function(StoreInfomationResponse) _then;

/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = freezed,Object? groceryStore = freezed,Object? popularItems = freezed,Object? sections = freezed,Object? categories = freezed,Object? grocerySections = freezed,}) {
  return _then(_self.copyWith(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreDetail?,groceryStore: freezed == groceryStore ? _self.groceryStore : groceryStore // ignore: cast_nullable_to_non_nullable
as GroceryStore?,popularItems: freezed == popularItems ? _self.popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as List<ProductItem>?,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<Section>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<GroceryCategory>?,grocerySections: freezed == grocerySections ? _self.grocerySections : grocerySections // ignore: cast_nullable_to_non_nullable
as List<GrocerySection>?,
  ));
}
/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDetailCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreDetailCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryStoreCopyWith<$Res>? get groceryStore {
    if (_self.groceryStore == null) {
    return null;
  }

  return $GroceryStoreCopyWith<$Res>(_self.groceryStore!, (value) {
    return _then(_self.copyWith(groceryStore: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _StoreInfomationResponse implements StoreInfomationResponse {
  const _StoreInfomationResponse({this.store, this.groceryStore, @JsonKey(name: 'popular_items') final  List<ProductItem>? popularItems, final  List<Section>? sections, final  List<GroceryCategory>? categories, final  List<GrocerySection>? grocerySections}): _popularItems = popularItems,_sections = sections,_categories = categories,_grocerySections = grocerySections;
  factory _StoreInfomationResponse.fromJson(Map<String, dynamic> json) => _$StoreInfomationResponseFromJson(json);

// Store information (combined from both food and grocery)
@override final  StoreDetail? store;
@override final  GroceryStore? groceryStore;
// Food-specific fields
 final  List<ProductItem>? _popularItems;
// Food-specific fields
@override@JsonKey(name: 'popular_items') List<ProductItem>? get popularItems {
  final value = _popularItems;
  if (value == null) return null;
  if (_popularItems is EqualUnmodifiableListView) return _popularItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Section>? _sections;
@override List<Section>? get sections {
  final value = _sections;
  if (value == null) return null;
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Grocery-specific fields
 final  List<GroceryCategory>? _categories;
// Grocery-specific fields
@override List<GroceryCategory>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GrocerySection>? _grocerySections;
@override List<GrocerySection>? get grocerySections {
  final value = _grocerySections;
  if (value == null) return null;
  if (_grocerySections is EqualUnmodifiableListView) return _grocerySections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInfomationResponseCopyWith<_StoreInfomationResponse> get copyWith => __$StoreInfomationResponseCopyWithImpl<_StoreInfomationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInfomationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInfomationResponse&&(identical(other.store, store) || other.store == store)&&(identical(other.groceryStore, groceryStore) || other.groceryStore == groceryStore)&&const DeepCollectionEquality().equals(other._popularItems, _popularItems)&&const DeepCollectionEquality().equals(other._sections, _sections)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._grocerySections, _grocerySections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,groceryStore,const DeepCollectionEquality().hash(_popularItems),const DeepCollectionEquality().hash(_sections),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_grocerySections));

@override
String toString() {
  return 'StoreInfomationResponse(store: $store, groceryStore: $groceryStore, popularItems: $popularItems, sections: $sections, categories: $categories, grocerySections: $grocerySections)';
}


}

/// @nodoc
abstract mixin class _$StoreInfomationResponseCopyWith<$Res> implements $StoreInfomationResponseCopyWith<$Res> {
  factory _$StoreInfomationResponseCopyWith(_StoreInfomationResponse value, $Res Function(_StoreInfomationResponse) _then) = __$StoreInfomationResponseCopyWithImpl;
@override @useResult
$Res call({
 StoreDetail? store, GroceryStore? groceryStore,@JsonKey(name: 'popular_items') List<ProductItem>? popularItems, List<Section>? sections, List<GroceryCategory>? categories, List<GrocerySection>? grocerySections
});


@override $StoreDetailCopyWith<$Res>? get store;@override $GroceryStoreCopyWith<$Res>? get groceryStore;

}
/// @nodoc
class __$StoreInfomationResponseCopyWithImpl<$Res>
    implements _$StoreInfomationResponseCopyWith<$Res> {
  __$StoreInfomationResponseCopyWithImpl(this._self, this._then);

  final _StoreInfomationResponse _self;
  final $Res Function(_StoreInfomationResponse) _then;

/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? groceryStore = freezed,Object? popularItems = freezed,Object? sections = freezed,Object? categories = freezed,Object? grocerySections = freezed,}) {
  return _then(_StoreInfomationResponse(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreDetail?,groceryStore: freezed == groceryStore ? _self.groceryStore : groceryStore // ignore: cast_nullable_to_non_nullable
as GroceryStore?,popularItems: freezed == popularItems ? _self._popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as List<ProductItem>?,sections: freezed == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<Section>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<GroceryCategory>?,grocerySections: freezed == grocerySections ? _self._grocerySections : grocerySections // ignore: cast_nullable_to_non_nullable
as List<GrocerySection>?,
  ));
}

/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDetailCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreDetailCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of StoreInfomationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryStoreCopyWith<$Res>? get groceryStore {
    if (_self.groceryStore == null) {
    return null;
  }

  return $GroceryStoreCopyWith<$Res>(_self.groceryStore!, (value) {
    return _then(_self.copyWith(groceryStore: value));
  });
}
}


/// @nodoc
mixin _$StoreDetail {

 int? get id; String? get name;@JsonKey(name: 'logo_url') String? get logoUrl;@JsonKey(name: 'cover_photo_url') String? get coverPhotoUrl; double? get rating;@JsonKey(name: 'review_count') int? get reviewCount; StoreServices? get services;
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
 int? id, String? name,@JsonKey(name: 'logo_url') String? logoUrl,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, double? rating,@JsonKey(name: 'review_count') int? reviewCount, StoreServices? services
});


$StoreServicesCopyWith<$Res>? get services;

}
/// @nodoc
class _$StoreDetailCopyWithImpl<$Res>
    implements $StoreDetailCopyWith<$Res> {
  _$StoreDetailCopyWithImpl(this._self, this._then);

  final StoreDetail _self;
  final $Res Function(StoreDetail) _then;

/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? coverPhotoUrl = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? services = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as StoreServices?,
  ));
}
/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreServicesCopyWith<$Res>? get services {
    if (_self.services == null) {
    return null;
  }

  return $StoreServicesCopyWith<$Res>(_self.services!, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _StoreDetail implements StoreDetail {
  const _StoreDetail({this.id, this.name, @JsonKey(name: 'logo_url') this.logoUrl, @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl, this.rating, @JsonKey(name: 'review_count') this.reviewCount, this.services});
  factory _StoreDetail.fromJson(Map<String, dynamic> json) => _$StoreDetailFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;
@override@JsonKey(name: 'cover_photo_url') final  String? coverPhotoUrl;
@override final  double? rating;
@override@JsonKey(name: 'review_count') final  int? reviewCount;
@override final  StoreServices? services;

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
 int? id, String? name,@JsonKey(name: 'logo_url') String? logoUrl,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, double? rating,@JsonKey(name: 'review_count') int? reviewCount, StoreServices? services
});


@override $StoreServicesCopyWith<$Res>? get services;

}
/// @nodoc
class __$StoreDetailCopyWithImpl<$Res>
    implements _$StoreDetailCopyWith<$Res> {
  __$StoreDetailCopyWithImpl(this._self, this._then);

  final _StoreDetail _self;
  final $Res Function(_StoreDetail) _then;

/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? coverPhotoUrl = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? services = freezed,}) {
  return _then(_StoreDetail(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as StoreServices?,
  ));
}

/// Create a copy of StoreDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreServicesCopyWith<$Res>? get services {
    if (_self.services == null) {
    return null;
  }

  return $StoreServicesCopyWith<$Res>(_self.services!, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
mixin _$GroceryStore {

 int? get id; String? get name;@JsonKey(name: 'logo_url') String? get logoUrl;@JsonKey(name: 'cover_photo_url') String? get coverPhotoUrl; GroceryRating? get rating;
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
 int? id, String? name,@JsonKey(name: 'logo_url') String? logoUrl,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, GroceryRating? rating
});


$GroceryRatingCopyWith<$Res>? get rating;

}
/// @nodoc
class _$GroceryStoreCopyWithImpl<$Res>
    implements $GroceryStoreCopyWith<$Res> {
  _$GroceryStoreCopyWithImpl(this._self, this._then);

  final GroceryStore _self;
  final $Res Function(GroceryStore) _then;

/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? coverPhotoUrl = freezed,Object? rating = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as GroceryRating?,
  ));
}
/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryRatingCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $GroceryRatingCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GroceryStore implements GroceryStore {
  const _GroceryStore({this.id, this.name, @JsonKey(name: 'logo_url') this.logoUrl, @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl, this.rating});
  factory _GroceryStore.fromJson(Map<String, dynamic> json) => _$GroceryStoreFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;
@override@JsonKey(name: 'cover_photo_url') final  String? coverPhotoUrl;
@override final  GroceryRating? rating;

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
 int? id, String? name,@JsonKey(name: 'logo_url') String? logoUrl,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, GroceryRating? rating
});


@override $GroceryRatingCopyWith<$Res>? get rating;

}
/// @nodoc
class __$GroceryStoreCopyWithImpl<$Res>
    implements _$GroceryStoreCopyWith<$Res> {
  __$GroceryStoreCopyWithImpl(this._self, this._then);

  final _GroceryStore _self;
  final $Res Function(_GroceryStore) _then;

/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? coverPhotoUrl = freezed,Object? rating = freezed,}) {
  return _then(_GroceryStore(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as GroceryRating?,
  ));
}

/// Create a copy of GroceryStore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryRatingCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $GroceryRatingCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// @nodoc
mixin _$StoreServices {

@JsonKey(name: 'in_store') bool? get inStore; bool? get delivery;@JsonKey(name: 'drive_thru') bool? get driveThru;
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
@JsonKey(name: 'in_store') bool? inStore, bool? delivery,@JsonKey(name: 'drive_thru') bool? driveThru
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
@pragma('vm:prefer-inline') @override $Res call({Object? inStore = freezed,Object? delivery = freezed,Object? driveThru = freezed,}) {
  return _then(_self.copyWith(
inStore: freezed == inStore ? _self.inStore : inStore // ignore: cast_nullable_to_non_nullable
as bool?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,driveThru: freezed == driveThru ? _self.driveThru : driveThru // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StoreServices implements StoreServices {
  const _StoreServices({@JsonKey(name: 'in_store') this.inStore, this.delivery, @JsonKey(name: 'drive_thru') this.driveThru});
  factory _StoreServices.fromJson(Map<String, dynamic> json) => _$StoreServicesFromJson(json);

@override@JsonKey(name: 'in_store') final  bool? inStore;
@override final  bool? delivery;
@override@JsonKey(name: 'drive_thru') final  bool? driveThru;

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
@JsonKey(name: 'in_store') bool? inStore, bool? delivery,@JsonKey(name: 'drive_thru') bool? driveThru
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
@override @pragma('vm:prefer-inline') $Res call({Object? inStore = freezed,Object? delivery = freezed,Object? driveThru = freezed,}) {
  return _then(_StoreServices(
inStore: freezed == inStore ? _self.inStore : inStore // ignore: cast_nullable_to_non_nullable
as bool?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,driveThru: freezed == driveThru ? _self.driveThru : driveThru // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$GroceryRating {

 bool? get delivery; bool? get pickup;
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
 bool? delivery, bool? pickup
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
@pragma('vm:prefer-inline') @override $Res call({Object? delivery = freezed,Object? pickup = freezed,}) {
  return _then(_self.copyWith(
delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,pickup: freezed == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GroceryRating implements GroceryRating {
  const _GroceryRating({this.delivery, this.pickup});
  factory _GroceryRating.fromJson(Map<String, dynamic> json) => _$GroceryRatingFromJson(json);

@override final  bool? delivery;
@override final  bool? pickup;

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
 bool? delivery, bool? pickup
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
@override @pragma('vm:prefer-inline') $Res call({Object? delivery = freezed,Object? pickup = freezed,}) {
  return _then(_GroceryRating(
delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,pickup: freezed == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ProductItem {

 int? get id; String? get name;@JsonKey(name: 'image_url') String? get imageUrl; double? get price;@JsonKey(name: 'avg_rating') double? get avgRating;@JsonKey(name: 'rating_count') int? get ratingCount;
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
 int? id, String? name,@JsonKey(name: 'image_url') String? imageUrl, double? price,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? price = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductItem implements ProductItem {
  const _ProductItem({this.id, this.name, @JsonKey(name: 'image_url') this.imageUrl, this.price, @JsonKey(name: 'avg_rating') this.avgRating, @JsonKey(name: 'rating_count') this.ratingCount});
  factory _ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  double? price;
@override@JsonKey(name: 'avg_rating') final  double? avgRating;
@override@JsonKey(name: 'rating_count') final  int? ratingCount;

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
 int? id, String? name,@JsonKey(name: 'image_url') String? imageUrl, double? price,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? price = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,}) {
  return _then(_ProductItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$GroceryItem {

 int? get id; String? get name;@JsonKey(name: 'image_url') String? get imageUrl; int? get price;@JsonKey(name: 'avg_rating') double? get avgRating;@JsonKey(name: 'rating_count') int? get ratingCount;
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
 int? id, String? name,@JsonKey(name: 'image_url') String? imageUrl, int? price,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? price = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GroceryItem implements GroceryItem {
  const _GroceryItem({this.id, this.name, @JsonKey(name: 'image_url') this.imageUrl, this.price, @JsonKey(name: 'avg_rating') this.avgRating, @JsonKey(name: 'rating_count') this.ratingCount});
  factory _GroceryItem.fromJson(Map<String, dynamic> json) => _$GroceryItemFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  int? price;
@override@JsonKey(name: 'avg_rating') final  double? avgRating;
@override@JsonKey(name: 'rating_count') final  int? ratingCount;

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
 int? id, String? name,@JsonKey(name: 'image_url') String? imageUrl, int? price,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'rating_count') int? ratingCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? price = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,}) {
  return _then(_GroceryItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Section {

@JsonKey(name: 'category_id') int? get categoryId;@JsonKey(name: 'category_name') String? get categoryName; List<ProductItem>? get items;
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
@JsonKey(name: 'category_id') int? categoryId,@JsonKey(name: 'category_name') String? categoryName, List<ProductItem>? items
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
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = freezed,Object? categoryName = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItem>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Section implements Section {
  const _Section({@JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'category_name') this.categoryName, final  List<ProductItem>? items}): _items = items;
  factory _Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);

@override@JsonKey(name: 'category_id') final  int? categoryId;
@override@JsonKey(name: 'category_name') final  String? categoryName;
 final  List<ProductItem>? _items;
@override List<ProductItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
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
@JsonKey(name: 'category_id') int? categoryId,@JsonKey(name: 'category_name') String? categoryName, List<ProductItem>? items
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
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? categoryName = freezed,Object? items = freezed,}) {
  return _then(_Section(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductItem>?,
  ));
}


}


/// @nodoc
mixin _$GroceryCategory {

 int? get id; String? get name;@JsonKey(name: 'image_url') String? get imageUrl;
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
 int? id, String? name,@JsonKey(name: 'image_url') String? imageUrl
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GroceryCategory implements GroceryCategory {
  const _GroceryCategory({this.id, this.name, @JsonKey(name: 'image_url') this.imageUrl});
  factory _GroceryCategory.fromJson(Map<String, dynamic> json) => _$GroceryCategoryFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'image_url') final  String? imageUrl;

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
 int? id, String? name,@JsonKey(name: 'image_url') String? imageUrl
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? imageUrl = freezed,}) {
  return _then(_GroceryCategory(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GrocerySection {

@JsonKey(name: 'category_id') int? get categoryId; List<GroceryItem>? get items;
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
@JsonKey(name: 'category_id') int? categoryId, List<GroceryItem>? items
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
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GroceryItem>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GrocerySection implements GrocerySection {
  const _GrocerySection({@JsonKey(name: 'category_id') this.categoryId, final  List<GroceryItem>? items}): _items = items;
  factory _GrocerySection.fromJson(Map<String, dynamic> json) => _$GrocerySectionFromJson(json);

@override@JsonKey(name: 'category_id') final  int? categoryId;
 final  List<GroceryItem>? _items;
@override List<GroceryItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
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
@JsonKey(name: 'category_id') int? categoryId, List<GroceryItem>? items
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
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? items = freezed,}) {
  return _then(_GrocerySection(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GroceryItem>?,
  ));
}


}

// dart format on
