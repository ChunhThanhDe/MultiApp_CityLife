// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponse {

@JsonKey(name: 'top_searches') List<String>? get topSearches;@JsonKey(name: 'recent_searches') List<String>? get recentSearches;@JsonKey(name: 'top_categories') List<TopCategories>? get topCategories;@JsonKey(name: 'items_by_store') List<ItemByStore>? get itemsByStore;@JsonKey(name: 'recent_stores') List<RecentStores>? get recentStores;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&const DeepCollectionEquality().equals(other.topSearches, topSearches)&&const DeepCollectionEquality().equals(other.recentSearches, recentSearches)&&const DeepCollectionEquality().equals(other.topCategories, topCategories)&&const DeepCollectionEquality().equals(other.itemsByStore, itemsByStore)&&const DeepCollectionEquality().equals(other.recentStores, recentStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(topSearches),const DeepCollectionEquality().hash(recentSearches),const DeepCollectionEquality().hash(topCategories),const DeepCollectionEquality().hash(itemsByStore),const DeepCollectionEquality().hash(recentStores));

@override
String toString() {
  return 'SearchResponse(topSearches: $topSearches, recentSearches: $recentSearches, topCategories: $topCategories, itemsByStore: $itemsByStore, recentStores: $recentStores)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'top_searches') List<String>? topSearches,@JsonKey(name: 'recent_searches') List<String>? recentSearches,@JsonKey(name: 'top_categories') List<TopCategories>? topCategories,@JsonKey(name: 'items_by_store') List<ItemByStore>? itemsByStore,@JsonKey(name: 'recent_stores') List<RecentStores>? recentStores
});




}
/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topSearches = freezed,Object? recentSearches = freezed,Object? topCategories = freezed,Object? itemsByStore = freezed,Object? recentStores = freezed,}) {
  return _then(_self.copyWith(
topSearches: freezed == topSearches ? _self.topSearches : topSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentSearches: freezed == recentSearches ? _self.recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,topCategories: freezed == topCategories ? _self.topCategories : topCategories // ignore: cast_nullable_to_non_nullable
as List<TopCategories>?,itemsByStore: freezed == itemsByStore ? _self.itemsByStore : itemsByStore // ignore: cast_nullable_to_non_nullable
as List<ItemByStore>?,recentStores: freezed == recentStores ? _self.recentStores : recentStores // ignore: cast_nullable_to_non_nullable
as List<RecentStores>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchResponse implements SearchResponse {
  const _SearchResponse({@JsonKey(name: 'top_searches') final  List<String>? topSearches, @JsonKey(name: 'recent_searches') final  List<String>? recentSearches, @JsonKey(name: 'top_categories') final  List<TopCategories>? topCategories, @JsonKey(name: 'items_by_store') final  List<ItemByStore>? itemsByStore, @JsonKey(name: 'recent_stores') final  List<RecentStores>? recentStores}): _topSearches = topSearches,_recentSearches = recentSearches,_topCategories = topCategories,_itemsByStore = itemsByStore,_recentStores = recentStores;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

 final  List<String>? _topSearches;
@override@JsonKey(name: 'top_searches') List<String>? get topSearches {
  final value = _topSearches;
  if (value == null) return null;
  if (_topSearches is EqualUnmodifiableListView) return _topSearches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _recentSearches;
@override@JsonKey(name: 'recent_searches') List<String>? get recentSearches {
  final value = _recentSearches;
  if (value == null) return null;
  if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TopCategories>? _topCategories;
@override@JsonKey(name: 'top_categories') List<TopCategories>? get topCategories {
  final value = _topCategories;
  if (value == null) return null;
  if (_topCategories is EqualUnmodifiableListView) return _topCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ItemByStore>? _itemsByStore;
@override@JsonKey(name: 'items_by_store') List<ItemByStore>? get itemsByStore {
  final value = _itemsByStore;
  if (value == null) return null;
  if (_itemsByStore is EqualUnmodifiableListView) return _itemsByStore;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RecentStores>? _recentStores;
@override@JsonKey(name: 'recent_stores') List<RecentStores>? get recentStores {
  final value = _recentStores;
  if (value == null) return null;
  if (_recentStores is EqualUnmodifiableListView) return _recentStores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseCopyWith<_SearchResponse> get copyWith => __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&const DeepCollectionEquality().equals(other._topSearches, _topSearches)&&const DeepCollectionEquality().equals(other._recentSearches, _recentSearches)&&const DeepCollectionEquality().equals(other._topCategories, _topCategories)&&const DeepCollectionEquality().equals(other._itemsByStore, _itemsByStore)&&const DeepCollectionEquality().equals(other._recentStores, _recentStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_topSearches),const DeepCollectionEquality().hash(_recentSearches),const DeepCollectionEquality().hash(_topCategories),const DeepCollectionEquality().hash(_itemsByStore),const DeepCollectionEquality().hash(_recentStores));

@override
String toString() {
  return 'SearchResponse(topSearches: $topSearches, recentSearches: $recentSearches, topCategories: $topCategories, itemsByStore: $itemsByStore, recentStores: $recentStores)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'top_searches') List<String>? topSearches,@JsonKey(name: 'recent_searches') List<String>? recentSearches,@JsonKey(name: 'top_categories') List<TopCategories>? topCategories,@JsonKey(name: 'items_by_store') List<ItemByStore>? itemsByStore,@JsonKey(name: 'recent_stores') List<RecentStores>? recentStores
});




}
/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topSearches = freezed,Object? recentSearches = freezed,Object? topCategories = freezed,Object? itemsByStore = freezed,Object? recentStores = freezed,}) {
  return _then(_SearchResponse(
topSearches: freezed == topSearches ? _self._topSearches : topSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentSearches: freezed == recentSearches ? _self._recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,topCategories: freezed == topCategories ? _self._topCategories : topCategories // ignore: cast_nullable_to_non_nullable
as List<TopCategories>?,itemsByStore: freezed == itemsByStore ? _self._itemsByStore : itemsByStore // ignore: cast_nullable_to_non_nullable
as List<ItemByStore>?,recentStores: freezed == recentStores ? _self._recentStores : recentStores // ignore: cast_nullable_to_non_nullable
as List<RecentStores>?,
  ));
}


}


/// @nodoc
mixin _$RecentStores {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'logo_url') String get logo;@JsonKey(name: 'cover_photo_url') String get coverPhoto;@JsonKey(name: 'delivery_fee') double get deliveryFee;@JsonKey(name: 'rating') double get rating;@JsonKey(name: 'delivery_time') String get deliveryTime;
/// Create a copy of RecentStores
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentStoresCopyWith<RecentStores> get copyWith => _$RecentStoresCopyWithImpl<RecentStores>(this as RecentStores, _$identity);

  /// Serializes this RecentStores to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentStores&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,coverPhoto,deliveryFee,rating,deliveryTime);

@override
String toString() {
  return 'RecentStores(id: $id, name: $name, logo: $logo, coverPhoto: $coverPhoto, deliveryFee: $deliveryFee, rating: $rating, deliveryTime: $deliveryTime)';
}


}

/// @nodoc
abstract mixin class $RecentStoresCopyWith<$Res>  {
  factory $RecentStoresCopyWith(RecentStores value, $Res Function(RecentStores) _then) = _$RecentStoresCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'logo_url') String logo,@JsonKey(name: 'cover_photo_url') String coverPhoto,@JsonKey(name: 'delivery_fee') double deliveryFee,@JsonKey(name: 'rating') double rating,@JsonKey(name: 'delivery_time') String deliveryTime
});




}
/// @nodoc
class _$RecentStoresCopyWithImpl<$Res>
    implements $RecentStoresCopyWith<$Res> {
  _$RecentStoresCopyWithImpl(this._self, this._then);

  final RecentStores _self;
  final $Res Function(RecentStores) _then;

/// Create a copy of RecentStores
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? coverPhoto = null,Object? deliveryFee = null,Object? rating = null,Object? deliveryTime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,coverPhoto: null == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RecentStores implements RecentStores {
  const _RecentStores({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'logo_url') this.logo = '', @JsonKey(name: 'cover_photo_url') this.coverPhoto = '', @JsonKey(name: 'delivery_fee') this.deliveryFee = 0.0, @JsonKey(name: 'rating') this.rating = 0.0, @JsonKey(name: 'delivery_time') this.deliveryTime = ''});
  factory _RecentStores.fromJson(Map<String, dynamic> json) => _$RecentStoresFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'logo_url') final  String logo;
@override@JsonKey(name: 'cover_photo_url') final  String coverPhoto;
@override@JsonKey(name: 'delivery_fee') final  double deliveryFee;
@override@JsonKey(name: 'rating') final  double rating;
@override@JsonKey(name: 'delivery_time') final  String deliveryTime;

/// Create a copy of RecentStores
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentStoresCopyWith<_RecentStores> get copyWith => __$RecentStoresCopyWithImpl<_RecentStores>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentStoresToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentStores&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,coverPhoto,deliveryFee,rating,deliveryTime);

@override
String toString() {
  return 'RecentStores(id: $id, name: $name, logo: $logo, coverPhoto: $coverPhoto, deliveryFee: $deliveryFee, rating: $rating, deliveryTime: $deliveryTime)';
}


}

/// @nodoc
abstract mixin class _$RecentStoresCopyWith<$Res> implements $RecentStoresCopyWith<$Res> {
  factory _$RecentStoresCopyWith(_RecentStores value, $Res Function(_RecentStores) _then) = __$RecentStoresCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'logo_url') String logo,@JsonKey(name: 'cover_photo_url') String coverPhoto,@JsonKey(name: 'delivery_fee') double deliveryFee,@JsonKey(name: 'rating') double rating,@JsonKey(name: 'delivery_time') String deliveryTime
});




}
/// @nodoc
class __$RecentStoresCopyWithImpl<$Res>
    implements _$RecentStoresCopyWith<$Res> {
  __$RecentStoresCopyWithImpl(this._self, this._then);

  final _RecentStores _self;
  final $Res Function(_RecentStores) _then;

/// Create a copy of RecentStores
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? coverPhoto = null,Object? deliveryFee = null,Object? rating = null,Object? deliveryTime = null,}) {
  return _then(_RecentStores(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,coverPhoto: null == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TopCategories {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'image_url') String get imageUrl;@JsonKey(name: 'items_count') int get itemsCount;
/// Create a copy of TopCategories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopCategoriesCopyWith<TopCategories> get copyWith => _$TopCategoriesCopyWithImpl<TopCategories>(this as TopCategories, _$identity);

  /// Serializes this TopCategories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCategories&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,itemsCount);

@override
String toString() {
  return 'TopCategories(id: $id, name: $name, imageUrl: $imageUrl, itemsCount: $itemsCount)';
}


}

/// @nodoc
abstract mixin class $TopCategoriesCopyWith<$Res>  {
  factory $TopCategoriesCopyWith(TopCategories value, $Res Function(TopCategories) _then) = _$TopCategoriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'items_count') int itemsCount
});




}
/// @nodoc
class _$TopCategoriesCopyWithImpl<$Res>
    implements $TopCategoriesCopyWith<$Res> {
  _$TopCategoriesCopyWithImpl(this._self, this._then);

  final TopCategories _self;
  final $Res Function(TopCategories) _then;

/// Create a copy of TopCategories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? itemsCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TopCategories implements TopCategories {
  const _TopCategories({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'image_url') this.imageUrl = '', @JsonKey(name: 'items_count') this.itemsCount = 0});
  factory _TopCategories.fromJson(Map<String, dynamic> json) => _$TopCategoriesFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey(name: 'items_count') final  int itemsCount;

/// Create a copy of TopCategories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopCategoriesCopyWith<_TopCategories> get copyWith => __$TopCategoriesCopyWithImpl<_TopCategories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopCategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCategories&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,itemsCount);

@override
String toString() {
  return 'TopCategories(id: $id, name: $name, imageUrl: $imageUrl, itemsCount: $itemsCount)';
}


}

/// @nodoc
abstract mixin class _$TopCategoriesCopyWith<$Res> implements $TopCategoriesCopyWith<$Res> {
  factory _$TopCategoriesCopyWith(_TopCategories value, $Res Function(_TopCategories) _then) = __$TopCategoriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'items_count') int itemsCount
});




}
/// @nodoc
class __$TopCategoriesCopyWithImpl<$Res>
    implements _$TopCategoriesCopyWith<$Res> {
  __$TopCategoriesCopyWithImpl(this._self, this._then);

  final _TopCategories _self;
  final $Res Function(_TopCategories) _then;

/// Create a copy of TopCategories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? itemsCount = null,}) {
  return _then(_TopCategories(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ItemByStore {

@JsonKey(name: 'store_id') int get storeId;@JsonKey(name: 'store_name') String get storeName; List<Item> get items;
/// Create a copy of ItemByStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemByStoreCopyWith<ItemByStore> get copyWith => _$ItemByStoreCopyWithImpl<ItemByStore>(this as ItemByStore, _$identity);

  /// Serializes this ItemByStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemByStore&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ItemByStore(storeId: $storeId, storeName: $storeName, items: $items)';
}


}

/// @nodoc
abstract mixin class $ItemByStoreCopyWith<$Res>  {
  factory $ItemByStoreCopyWith(ItemByStore value, $Res Function(ItemByStore) _then) = _$ItemByStoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName, List<Item> items
});




}
/// @nodoc
class _$ItemByStoreCopyWithImpl<$Res>
    implements $ItemByStoreCopyWith<$Res> {
  _$ItemByStoreCopyWithImpl(this._self, this._then);

  final ItemByStore _self;
  final $Res Function(ItemByStore) _then;

/// Create a copy of ItemByStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? storeName = null,Object? items = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ItemByStore implements ItemByStore {
  const _ItemByStore({@JsonKey(name: 'store_id') this.storeId = 0, @JsonKey(name: 'store_name') this.storeName = '', final  List<Item> items = const []}): _items = items;
  factory _ItemByStore.fromJson(Map<String, dynamic> json) => _$ItemByStoreFromJson(json);

@override@JsonKey(name: 'store_id') final  int storeId;
@override@JsonKey(name: 'store_name') final  String storeName;
 final  List<Item> _items;
@override@JsonKey() List<Item> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ItemByStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemByStoreCopyWith<_ItemByStore> get copyWith => __$ItemByStoreCopyWithImpl<_ItemByStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemByStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemByStore&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ItemByStore(storeId: $storeId, storeName: $storeName, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ItemByStoreCopyWith<$Res> implements $ItemByStoreCopyWith<$Res> {
  factory _$ItemByStoreCopyWith(_ItemByStore value, $Res Function(_ItemByStore) _then) = __$ItemByStoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName, List<Item> items
});




}
/// @nodoc
class __$ItemByStoreCopyWithImpl<$Res>
    implements _$ItemByStoreCopyWith<$Res> {
  __$ItemByStoreCopyWithImpl(this._self, this._then);

  final _ItemByStore _self;
  final $Res Function(_ItemByStore) _then;

/// Create a copy of ItemByStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? storeName = null,Object? items = null,}) {
  return _then(_ItemByStore(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,
  ));
}


}


/// @nodoc
mixin _$Item {

 int get id; String get name;@JsonKey(name: 'image_url') String get imageUrl; double get price; double get discount;@JsonKey(name: 'final_price') double get finalPrice;@JsonKey(name: 'avg_rating') double get avgRating;
/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCopyWith<Item> get copyWith => _$ItemCopyWithImpl<Item>(this as Item, _$identity);

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Item&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,discount,finalPrice,avgRating);

@override
String toString() {
  return 'Item(id: $id, name: $name, imageUrl: $imageUrl, price: $price, discount: $discount, finalPrice: $finalPrice, avgRating: $avgRating)';
}


}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res>  {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) = _$ItemCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, double price, double discount,@JsonKey(name: 'final_price') double finalPrice,@JsonKey(name: 'avg_rating') double avgRating
});




}
/// @nodoc
class _$ItemCopyWithImpl<$Res>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? discount = null,Object? finalPrice = null,Object? avgRating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,finalPrice: null == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as double,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Item implements Item {
  const _Item({this.id = 0, this.name = '', @JsonKey(name: 'image_url') this.imageUrl = '', this.price = 0.0, this.discount = 0.0, @JsonKey(name: 'final_price') this.finalPrice = 0.0, @JsonKey(name: 'avg_rating') this.avgRating = 0.0});
  factory _Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey() final  double price;
@override@JsonKey() final  double discount;
@override@JsonKey(name: 'final_price') final  double finalPrice;
@override@JsonKey(name: 'avg_rating') final  double avgRating;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCopyWith<_Item> get copyWith => __$ItemCopyWithImpl<_Item>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Item&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,discount,finalPrice,avgRating);

@override
String toString() {
  return 'Item(id: $id, name: $name, imageUrl: $imageUrl, price: $price, discount: $discount, finalPrice: $finalPrice, avgRating: $avgRating)';
}


}

/// @nodoc
abstract mixin class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) _then) = __$ItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, double price, double discount,@JsonKey(name: 'final_price') double finalPrice,@JsonKey(name: 'avg_rating') double avgRating
});




}
/// @nodoc
class __$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(this._self, this._then);

  final _Item _self;
  final $Res Function(_Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? discount = null,Object? finalPrice = null,Object? avgRating = null,}) {
  return _then(_Item(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,finalPrice: null == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as double,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
