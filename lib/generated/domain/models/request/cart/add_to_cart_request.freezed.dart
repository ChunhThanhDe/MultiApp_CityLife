// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/models/request/cart/add_to_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddToCartRequest {

@JsonKey(name: 'item_id') int get itemId; String get model; double get price; int get quantity; List<CartVariation> get variation;@JsonKey(name: 'add_on_ids') List<int> get addOnIds;@JsonKey(name: 'add_on_qtys') List<int> get addOnQtys;
/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartRequestCopyWith<AddToCartRequest> get copyWith => _$AddToCartRequestCopyWithImpl<AddToCartRequest>(this as AddToCartRequest, _$identity);

  /// Serializes this AddToCartRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartRequest&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.model, model) || other.model == model)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other.variation, variation)&&const DeepCollectionEquality().equals(other.addOnIds, addOnIds)&&const DeepCollectionEquality().equals(other.addOnQtys, addOnQtys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,model,price,quantity,const DeepCollectionEquality().hash(variation),const DeepCollectionEquality().hash(addOnIds),const DeepCollectionEquality().hash(addOnQtys));

@override
String toString() {
  return 'AddToCartRequest(itemId: $itemId, model: $model, price: $price, quantity: $quantity, variation: $variation, addOnIds: $addOnIds, addOnQtys: $addOnQtys)';
}


}

/// @nodoc
abstract mixin class $AddToCartRequestCopyWith<$Res>  {
  factory $AddToCartRequestCopyWith(AddToCartRequest value, $Res Function(AddToCartRequest) _then) = _$AddToCartRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item_id') int itemId, String model, double price, int quantity, List<CartVariation> variation,@JsonKey(name: 'add_on_ids') List<int> addOnIds,@JsonKey(name: 'add_on_qtys') List<int> addOnQtys
});




}
/// @nodoc
class _$AddToCartRequestCopyWithImpl<$Res>
    implements $AddToCartRequestCopyWith<$Res> {
  _$AddToCartRequestCopyWithImpl(this._self, this._then);

  final AddToCartRequest _self;
  final $Res Function(AddToCartRequest) _then;

/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? model = null,Object? price = null,Object? quantity = null,Object? variation = null,Object? addOnIds = null,Object? addOnQtys = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,variation: null == variation ? _self.variation : variation // ignore: cast_nullable_to_non_nullable
as List<CartVariation>,addOnIds: null == addOnIds ? _self.addOnIds : addOnIds // ignore: cast_nullable_to_non_nullable
as List<int>,addOnQtys: null == addOnQtys ? _self.addOnQtys : addOnQtys // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AddToCartRequest implements AddToCartRequest {
  const _AddToCartRequest({@JsonKey(name: 'item_id') required this.itemId, required this.model, required this.price, required this.quantity, required final  List<CartVariation> variation, @JsonKey(name: 'add_on_ids') required final  List<int> addOnIds, @JsonKey(name: 'add_on_qtys') required final  List<int> addOnQtys}): _variation = variation,_addOnIds = addOnIds,_addOnQtys = addOnQtys;
  factory _AddToCartRequest.fromJson(Map<String, dynamic> json) => _$AddToCartRequestFromJson(json);

@override@JsonKey(name: 'item_id') final  int itemId;
@override final  String model;
@override final  double price;
@override final  int quantity;
 final  List<CartVariation> _variation;
@override List<CartVariation> get variation {
  if (_variation is EqualUnmodifiableListView) return _variation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variation);
}

 final  List<int> _addOnIds;
@override@JsonKey(name: 'add_on_ids') List<int> get addOnIds {
  if (_addOnIds is EqualUnmodifiableListView) return _addOnIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addOnIds);
}

 final  List<int> _addOnQtys;
@override@JsonKey(name: 'add_on_qtys') List<int> get addOnQtys {
  if (_addOnQtys is EqualUnmodifiableListView) return _addOnQtys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addOnQtys);
}


/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToCartRequestCopyWith<_AddToCartRequest> get copyWith => __$AddToCartRequestCopyWithImpl<_AddToCartRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddToCartRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartRequest&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.model, model) || other.model == model)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._variation, _variation)&&const DeepCollectionEquality().equals(other._addOnIds, _addOnIds)&&const DeepCollectionEquality().equals(other._addOnQtys, _addOnQtys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,model,price,quantity,const DeepCollectionEquality().hash(_variation),const DeepCollectionEquality().hash(_addOnIds),const DeepCollectionEquality().hash(_addOnQtys));

@override
String toString() {
  return 'AddToCartRequest(itemId: $itemId, model: $model, price: $price, quantity: $quantity, variation: $variation, addOnIds: $addOnIds, addOnQtys: $addOnQtys)';
}


}

/// @nodoc
abstract mixin class _$AddToCartRequestCopyWith<$Res> implements $AddToCartRequestCopyWith<$Res> {
  factory _$AddToCartRequestCopyWith(_AddToCartRequest value, $Res Function(_AddToCartRequest) _then) = __$AddToCartRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item_id') int itemId, String model, double price, int quantity, List<CartVariation> variation,@JsonKey(name: 'add_on_ids') List<int> addOnIds,@JsonKey(name: 'add_on_qtys') List<int> addOnQtys
});




}
/// @nodoc
class __$AddToCartRequestCopyWithImpl<$Res>
    implements _$AddToCartRequestCopyWith<$Res> {
  __$AddToCartRequestCopyWithImpl(this._self, this._then);

  final _AddToCartRequest _self;
  final $Res Function(_AddToCartRequest) _then;

/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? model = null,Object? price = null,Object? quantity = null,Object? variation = null,Object? addOnIds = null,Object? addOnQtys = null,}) {
  return _then(_AddToCartRequest(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,variation: null == variation ? _self._variation : variation // ignore: cast_nullable_to_non_nullable
as List<CartVariation>,addOnIds: null == addOnIds ? _self._addOnIds : addOnIds // ignore: cast_nullable_to_non_nullable
as List<int>,addOnQtys: null == addOnQtys ? _self._addOnQtys : addOnQtys // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$CartVariation {

 String get name; Map<String, dynamic> get values;
/// Create a copy of CartVariation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartVariationCopyWith<CartVariation> get copyWith => _$CartVariationCopyWithImpl<CartVariation>(this as CartVariation, _$identity);

  /// Serializes this CartVariation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartVariation&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'CartVariation(name: $name, values: $values)';
}


}

/// @nodoc
abstract mixin class $CartVariationCopyWith<$Res>  {
  factory $CartVariationCopyWith(CartVariation value, $Res Function(CartVariation) _then) = _$CartVariationCopyWithImpl;
@useResult
$Res call({
 String name, Map<String, dynamic> values
});




}
/// @nodoc
class _$CartVariationCopyWithImpl<$Res>
    implements $CartVariationCopyWith<$Res> {
  _$CartVariationCopyWithImpl(this._self, this._then);

  final CartVariation _self;
  final $Res Function(CartVariation) _then;

/// Create a copy of CartVariation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? values = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CartVariation implements CartVariation {
  const _CartVariation({required this.name, required final  Map<String, dynamic> values}): _values = values;
  factory _CartVariation.fromJson(Map<String, dynamic> json) => _$CartVariationFromJson(json);

@override final  String name;
 final  Map<String, dynamic> _values;
@override Map<String, dynamic> get values {
  if (_values is EqualUnmodifiableMapView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_values);
}


/// Create a copy of CartVariation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartVariationCopyWith<_CartVariation> get copyWith => __$CartVariationCopyWithImpl<_CartVariation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartVariationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartVariation&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'CartVariation(name: $name, values: $values)';
}


}

/// @nodoc
abstract mixin class _$CartVariationCopyWith<$Res> implements $CartVariationCopyWith<$Res> {
  factory _$CartVariationCopyWith(_CartVariation value, $Res Function(_CartVariation) _then) = __$CartVariationCopyWithImpl;
@override @useResult
$Res call({
 String name, Map<String, dynamic> values
});




}
/// @nodoc
class __$CartVariationCopyWithImpl<$Res>
    implements _$CartVariationCopyWith<$Res> {
  __$CartVariationCopyWithImpl(this._self, this._then);

  final _CartVariation _self;
  final $Res Function(_CartVariation) _then;

/// Create a copy of CartVariation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? values = null,}) {
  return _then(_CartVariation(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
