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

@JsonKey(name: 'top_searches') List<String>? get topSearches;@JsonKey(name: 'recent_stores') List<RecentStore>? get recentStores;@JsonKey(name: 'items_by_store') List<StoreItemGroup>? get itemsByStore;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&const DeepCollectionEquality().equals(other.topSearches, topSearches)&&const DeepCollectionEquality().equals(other.recentStores, recentStores)&&const DeepCollectionEquality().equals(other.itemsByStore, itemsByStore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(topSearches),const DeepCollectionEquality().hash(recentStores),const DeepCollectionEquality().hash(itemsByStore));

@override
String toString() {
  return 'SearchResponse(topSearches: $topSearches, recentStores: $recentStores, itemsByStore: $itemsByStore)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'top_searches') List<String>? topSearches,@JsonKey(name: 'recent_stores') List<RecentStore>? recentStores,@JsonKey(name: 'items_by_store') List<StoreItemGroup>? itemsByStore
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
@pragma('vm:prefer-inline') @override $Res call({Object? topSearches = freezed,Object? recentStores = freezed,Object? itemsByStore = freezed,}) {
  return _then(_self.copyWith(
topSearches: freezed == topSearches ? _self.topSearches : topSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentStores: freezed == recentStores ? _self.recentStores : recentStores // ignore: cast_nullable_to_non_nullable
as List<RecentStore>?,itemsByStore: freezed == itemsByStore ? _self.itemsByStore : itemsByStore // ignore: cast_nullable_to_non_nullable
as List<StoreItemGroup>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchResponse implements SearchResponse {
  const _SearchResponse({@JsonKey(name: 'top_searches') final  List<String>? topSearches, @JsonKey(name: 'recent_stores') final  List<RecentStore>? recentStores, @JsonKey(name: 'items_by_store') final  List<StoreItemGroup>? itemsByStore}): _topSearches = topSearches,_recentStores = recentStores,_itemsByStore = itemsByStore;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

 final  List<String>? _topSearches;
@override@JsonKey(name: 'top_searches') List<String>? get topSearches {
  final value = _topSearches;
  if (value == null) return null;
  if (_topSearches is EqualUnmodifiableListView) return _topSearches;
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

 final  List<StoreItemGroup>? _itemsByStore;
@override@JsonKey(name: 'items_by_store') List<StoreItemGroup>? get itemsByStore {
  final value = _itemsByStore;
  if (value == null) return null;
  if (_itemsByStore is EqualUnmodifiableListView) return _itemsByStore;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&const DeepCollectionEquality().equals(other._topSearches, _topSearches)&&const DeepCollectionEquality().equals(other._recentStores, _recentStores)&&const DeepCollectionEquality().equals(other._itemsByStore, _itemsByStore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_topSearches),const DeepCollectionEquality().hash(_recentStores),const DeepCollectionEquality().hash(_itemsByStore));

@override
String toString() {
  return 'SearchResponse(topSearches: $topSearches, recentStores: $recentStores, itemsByStore: $itemsByStore)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'top_searches') List<String>? topSearches,@JsonKey(name: 'recent_stores') List<RecentStore>? recentStores,@JsonKey(name: 'items_by_store') List<StoreItemGroup>? itemsByStore
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
@override @pragma('vm:prefer-inline') $Res call({Object? topSearches = freezed,Object? recentStores = freezed,Object? itemsByStore = freezed,}) {
  return _then(_SearchResponse(
topSearches: freezed == topSearches ? _self._topSearches : topSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,recentStores: freezed == recentStores ? _self._recentStores : recentStores // ignore: cast_nullable_to_non_nullable
as List<RecentStore>?,itemsByStore: freezed == itemsByStore ? _self._itemsByStore : itemsByStore // ignore: cast_nullable_to_non_nullable
as List<StoreItemGroup>?,
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


/// @nodoc
mixin _$StoreItemGroup {

@JsonKey(name: 'store_id') int get storeId;@JsonKey(name: 'store_name') String get storeName; List<Item> get items;
/// Create a copy of StoreItemGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreItemGroupCopyWith<StoreItemGroup> get copyWith => _$StoreItemGroupCopyWithImpl<StoreItemGroup>(this as StoreItemGroup, _$identity);

  /// Serializes this StoreItemGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreItemGroup&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'StoreItemGroup(storeId: $storeId, storeName: $storeName, items: $items)';
}


}

/// @nodoc
abstract mixin class $StoreItemGroupCopyWith<$Res>  {
  factory $StoreItemGroupCopyWith(StoreItemGroup value, $Res Function(StoreItemGroup) _then) = _$StoreItemGroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName, List<Item> items
});




}
/// @nodoc
class _$StoreItemGroupCopyWithImpl<$Res>
    implements $StoreItemGroupCopyWith<$Res> {
  _$StoreItemGroupCopyWithImpl(this._self, this._then);

  final StoreItemGroup _self;
  final $Res Function(StoreItemGroup) _then;

/// Create a copy of StoreItemGroup
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

class _StoreItemGroup implements StoreItemGroup {
  const _StoreItemGroup({@JsonKey(name: 'store_id') this.storeId = 0, @JsonKey(name: 'store_name') this.storeName = '', final  List<Item> items = const []}): _items = items;
  factory _StoreItemGroup.fromJson(Map<String, dynamic> json) => _$StoreItemGroupFromJson(json);

@override@JsonKey(name: 'store_id') final  int storeId;
@override@JsonKey(name: 'store_name') final  String storeName;
 final  List<Item> _items;
@override@JsonKey() List<Item> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of StoreItemGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreItemGroupCopyWith<_StoreItemGroup> get copyWith => __$StoreItemGroupCopyWithImpl<_StoreItemGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreItemGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreItemGroup&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'StoreItemGroup(storeId: $storeId, storeName: $storeName, items: $items)';
}


}

/// @nodoc
abstract mixin class _$StoreItemGroupCopyWith<$Res> implements $StoreItemGroupCopyWith<$Res> {
  factory _$StoreItemGroupCopyWith(_StoreItemGroup value, $Res Function(_StoreItemGroup) _then) = __$StoreItemGroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName, List<Item> items
});




}
/// @nodoc
class __$StoreItemGroupCopyWithImpl<$Res>
    implements _$StoreItemGroupCopyWith<$Res> {
  __$StoreItemGroupCopyWithImpl(this._self, this._then);

  final _StoreItemGroup _self;
  final $Res Function(_StoreItemGroup) _then;

/// Create a copy of StoreItemGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? storeName = null,Object? items = null,}) {
  return _then(_StoreItemGroup(
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
