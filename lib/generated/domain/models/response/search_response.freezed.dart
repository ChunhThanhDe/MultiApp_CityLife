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

 SearchItems? get items;@JsonKey(name: 'top_searches') List<String>? get topSearches;@JsonKey(name: 'recent_searches') List<String>? get recentSearches;@JsonKey(name: 'recent_stores') List<RecentStore>? get recentStores;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&(identical(other.items, items) || other.items == items)&&const DeepCollectionEquality().equals(other.topSearches, topSearches)&&const DeepCollectionEquality().equals(other.recentSearches, recentSearches)&&const DeepCollectionEquality().equals(other.recentStores, recentStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,const DeepCollectionEquality().hash(topSearches),const DeepCollectionEquality().hash(recentSearches),const DeepCollectionEquality().hash(recentStores));

@override
String toString() {
  return 'SearchResponse(items: $items, topSearches: $topSearches, recentSearches: $recentSearches, recentStores: $recentStores)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
 SearchItems? items,@JsonKey(name: 'top_searches') List<String>? topSearches,@JsonKey(name: 'recent_searches') List<String>? recentSearches,@JsonKey(name: 'recent_stores') List<RecentStore>? recentStores
});


$SearchItemsCopyWith<$Res>? get items;

}
/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,Object? topSearches = freezed,Object? recentSearches = freezed,Object? recentStores = freezed,}) {
  return _then(_self.copyWith(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as SearchItems?,topSearches: freezed == topSearches ? _self.topSearches : topSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentSearches: freezed == recentSearches ? _self.recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentStores: freezed == recentStores ? _self.recentStores : recentStores // ignore: cast_nullable_to_non_nullable
as List<RecentStore>?,
  ));
}
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchItemsCopyWith<$Res>? get items {
    if (_self.items == null) {
    return null;
  }

  return $SearchItemsCopyWith<$Res>(_self.items!, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SearchResponse implements SearchResponse {
  const _SearchResponse({this.items, @JsonKey(name: 'top_searches') final  List<String>? topSearches, @JsonKey(name: 'recent_searches') final  List<String>? recentSearches, @JsonKey(name: 'recent_stores') final  List<RecentStore>? recentStores}): _topSearches = topSearches,_recentSearches = recentSearches,_recentStores = recentStores;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

@override final  SearchItems? items;
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

 final  List<RecentStore>? _recentStores;
@override@JsonKey(name: 'recent_stores') List<RecentStore>? get recentStores {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&(identical(other.items, items) || other.items == items)&&const DeepCollectionEquality().equals(other._topSearches, _topSearches)&&const DeepCollectionEquality().equals(other._recentSearches, _recentSearches)&&const DeepCollectionEquality().equals(other._recentStores, _recentStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,const DeepCollectionEquality().hash(_topSearches),const DeepCollectionEquality().hash(_recentSearches),const DeepCollectionEquality().hash(_recentStores));

@override
String toString() {
  return 'SearchResponse(items: $items, topSearches: $topSearches, recentSearches: $recentSearches, recentStores: $recentStores)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
 SearchItems? items,@JsonKey(name: 'top_searches') List<String>? topSearches,@JsonKey(name: 'recent_searches') List<String>? recentSearches,@JsonKey(name: 'recent_stores') List<RecentStore>? recentStores
});


@override $SearchItemsCopyWith<$Res>? get items;

}
/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = freezed,Object? topSearches = freezed,Object? recentSearches = freezed,Object? recentStores = freezed,}) {
  return _then(_SearchResponse(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as SearchItems?,topSearches: freezed == topSearches ? _self._topSearches : topSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentSearches: freezed == recentSearches ? _self._recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentStores: freezed == recentStores ? _self._recentStores : recentStores // ignore: cast_nullable_to_non_nullable
as List<RecentStore>?,
  ));
}

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchItemsCopyWith<$Res>? get items {
    if (_self.items == null) {
    return null;
  }

  return $SearchItemsCopyWith<$Res>(_self.items!, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
mixin _$SearchItems {

 int get total; int get limit; int get offset; List<SearchItem> get data;
/// Create a copy of SearchItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchItemsCopyWith<SearchItems> get copyWith => _$SearchItemsCopyWithImpl<SearchItems>(this as SearchItems, _$identity);

  /// Serializes this SearchItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchItems&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,offset,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SearchItems(total: $total, limit: $limit, offset: $offset, data: $data)';
}


}

/// @nodoc
abstract mixin class $SearchItemsCopyWith<$Res>  {
  factory $SearchItemsCopyWith(SearchItems value, $Res Function(SearchItems) _then) = _$SearchItemsCopyWithImpl;
@useResult
$Res call({
 int total, int limit, int offset, List<SearchItem> data
});




}
/// @nodoc
class _$SearchItemsCopyWithImpl<$Res>
    implements $SearchItemsCopyWith<$Res> {
  _$SearchItemsCopyWithImpl(this._self, this._then);

  final SearchItems _self;
  final $Res Function(SearchItems) _then;

/// Create a copy of SearchItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? limit = null,Object? offset = null,Object? data = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<SearchItem>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchItems implements SearchItems {
  const _SearchItems({this.total = 0, this.limit = 0, this.offset = 0, final  List<SearchItem> data = const []}): _data = data;
  factory _SearchItems.fromJson(Map<String, dynamic> json) => _$SearchItemsFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int offset;
 final  List<SearchItem> _data;
@override@JsonKey() List<SearchItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of SearchItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchItemsCopyWith<_SearchItems> get copyWith => __$SearchItemsCopyWithImpl<_SearchItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchItems&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,offset,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'SearchItems(total: $total, limit: $limit, offset: $offset, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SearchItemsCopyWith<$Res> implements $SearchItemsCopyWith<$Res> {
  factory _$SearchItemsCopyWith(_SearchItems value, $Res Function(_SearchItems) _then) = __$SearchItemsCopyWithImpl;
@override @useResult
$Res call({
 int total, int limit, int offset, List<SearchItem> data
});




}
/// @nodoc
class __$SearchItemsCopyWithImpl<$Res>
    implements _$SearchItemsCopyWith<$Res> {
  __$SearchItemsCopyWithImpl(this._self, this._then);

  final _SearchItems _self;
  final $Res Function(_SearchItems) _then;

/// Create a copy of SearchItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? limit = null,Object? offset = null,Object? data = null,}) {
  return _then(_SearchItems(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<SearchItem>,
  ));
}


}


/// @nodoc
mixin _$SearchItem {

 int get id; String get name;@JsonKey(name: 'image_url') String get imageUrl; double get price; double get discount;@JsonKey(name: 'final_price') double get finalPrice;@JsonKey(name: 'avg_rating') double get avgRating;@JsonKey(name: 'store_id') int get storeId;@JsonKey(name: 'module_id') int get moduleId;
/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchItemCopyWith<SearchItem> get copyWith => _$SearchItemCopyWithImpl<SearchItem>(this as SearchItem, _$identity);

  /// Serializes this SearchItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,discount,finalPrice,avgRating,storeId,moduleId);

@override
String toString() {
  return 'SearchItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, discount: $discount, finalPrice: $finalPrice, avgRating: $avgRating, storeId: $storeId, moduleId: $moduleId)';
}


}

/// @nodoc
abstract mixin class $SearchItemCopyWith<$Res>  {
  factory $SearchItemCopyWith(SearchItem value, $Res Function(SearchItem) _then) = _$SearchItemCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, double price, double discount,@JsonKey(name: 'final_price') double finalPrice,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'module_id') int moduleId
});




}
/// @nodoc
class _$SearchItemCopyWithImpl<$Res>
    implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._self, this._then);

  final SearchItem _self;
  final $Res Function(SearchItem) _then;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? discount = null,Object? finalPrice = null,Object? avgRating = null,Object? storeId = null,Object? moduleId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,finalPrice: null == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as double,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchItem implements SearchItem {
  const _SearchItem({this.id = 0, this.name = '', @JsonKey(name: 'image_url') this.imageUrl = '', this.price = 0.0, this.discount = 0.0, @JsonKey(name: 'final_price') this.finalPrice = 0.0, @JsonKey(name: 'avg_rating') this.avgRating = 0.0, @JsonKey(name: 'store_id') this.storeId = 0, @JsonKey(name: 'module_id') this.moduleId = 0});
  factory _SearchItem.fromJson(Map<String, dynamic> json) => _$SearchItemFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey() final  double price;
@override@JsonKey() final  double discount;
@override@JsonKey(name: 'final_price') final  double finalPrice;
@override@JsonKey(name: 'avg_rating') final  double avgRating;
@override@JsonKey(name: 'store_id') final  int storeId;
@override@JsonKey(name: 'module_id') final  int moduleId;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchItemCopyWith<_SearchItem> get copyWith => __$SearchItemCopyWithImpl<_SearchItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,discount,finalPrice,avgRating,storeId,moduleId);

@override
String toString() {
  return 'SearchItem(id: $id, name: $name, imageUrl: $imageUrl, price: $price, discount: $discount, finalPrice: $finalPrice, avgRating: $avgRating, storeId: $storeId, moduleId: $moduleId)';
}


}

/// @nodoc
abstract mixin class _$SearchItemCopyWith<$Res> implements $SearchItemCopyWith<$Res> {
  factory _$SearchItemCopyWith(_SearchItem value, $Res Function(_SearchItem) _then) = __$SearchItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'image_url') String imageUrl, double price, double discount,@JsonKey(name: 'final_price') double finalPrice,@JsonKey(name: 'avg_rating') double avgRating,@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'module_id') int moduleId
});




}
/// @nodoc
class __$SearchItemCopyWithImpl<$Res>
    implements _$SearchItemCopyWith<$Res> {
  __$SearchItemCopyWithImpl(this._self, this._then);

  final _SearchItem _self;
  final $Res Function(_SearchItem) _then;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? discount = null,Object? finalPrice = null,Object? avgRating = null,Object? storeId = null,Object? moduleId = null,}) {
  return _then(_SearchItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,finalPrice: null == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as double,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RecentStore {

 int get id; String get name;@JsonKey(name: 'logo_url') String get logoUrl;@JsonKey(name: 'delivery_time') String get deliveryTime;@JsonKey(name: 'delivery_fee') double get deliveryFee;
/// Create a copy of RecentStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentStoreCopyWith<RecentStore> get copyWith => _$RecentStoreCopyWithImpl<RecentStore>(this as RecentStore, _$identity);

  /// Serializes this RecentStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoUrl,deliveryTime,deliveryFee);

@override
String toString() {
  return 'RecentStore(id: $id, name: $name, logoUrl: $logoUrl, deliveryTime: $deliveryTime, deliveryFee: $deliveryFee)';
}


}

/// @nodoc
abstract mixin class $RecentStoreCopyWith<$Res>  {
  factory $RecentStoreCopyWith(RecentStore value, $Res Function(RecentStore) _then) = _$RecentStoreCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_url') String logoUrl,@JsonKey(name: 'delivery_time') String deliveryTime,@JsonKey(name: 'delivery_fee') double deliveryFee
});




}
/// @nodoc
class _$RecentStoreCopyWithImpl<$Res>
    implements $RecentStoreCopyWith<$Res> {
  _$RecentStoreCopyWithImpl(this._self, this._then);

  final RecentStore _self;
  final $Res Function(RecentStore) _then;

/// Create a copy of RecentStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logoUrl = null,Object? deliveryTime = null,Object? deliveryFee = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RecentStore implements RecentStore {
  const _RecentStore({this.id = 0, this.name = '', @JsonKey(name: 'logo_url') this.logoUrl = '', @JsonKey(name: 'delivery_time') this.deliveryTime = '', @JsonKey(name: 'delivery_fee') this.deliveryFee = 0.0});
  factory _RecentStore.fromJson(Map<String, dynamic> json) => _$RecentStoreFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'logo_url') final  String logoUrl;
@override@JsonKey(name: 'delivery_time') final  String deliveryTime;
@override@JsonKey(name: 'delivery_fee') final  double deliveryFee;

/// Create a copy of RecentStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentStoreCopyWith<_RecentStore> get copyWith => __$RecentStoreCopyWithImpl<_RecentStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoUrl,deliveryTime,deliveryFee);

@override
String toString() {
  return 'RecentStore(id: $id, name: $name, logoUrl: $logoUrl, deliveryTime: $deliveryTime, deliveryFee: $deliveryFee)';
}


}

/// @nodoc
abstract mixin class _$RecentStoreCopyWith<$Res> implements $RecentStoreCopyWith<$Res> {
  factory _$RecentStoreCopyWith(_RecentStore value, $Res Function(_RecentStore) _then) = __$RecentStoreCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'logo_url') String logoUrl,@JsonKey(name: 'delivery_time') String deliveryTime,@JsonKey(name: 'delivery_fee') double deliveryFee
});




}
/// @nodoc
class __$RecentStoreCopyWithImpl<$Res>
    implements _$RecentStoreCopyWith<$Res> {
  __$RecentStoreCopyWithImpl(this._self, this._then);

  final _RecentStore _self;
  final $Res Function(_RecentStore) _then;

/// Create a copy of RecentStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logoUrl = null,Object? deliveryTime = null,Object? deliveryFee = null,}) {
  return _then(_RecentStore(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
