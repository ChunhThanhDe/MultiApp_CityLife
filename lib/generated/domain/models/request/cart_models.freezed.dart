// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/request/cart_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

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
mixin _$UpdateCartRequest {

@JsonKey(name: 'cart_id') int get cartId; int get quantity;
/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCartRequestCopyWith<UpdateCartRequest> get copyWith => _$UpdateCartRequestCopyWithImpl<UpdateCartRequest>(this as UpdateCartRequest, _$identity);

  /// Serializes this UpdateCartRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCartRequest&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartId,quantity);

@override
String toString() {
  return 'UpdateCartRequest(cartId: $cartId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $UpdateCartRequestCopyWith<$Res>  {
  factory $UpdateCartRequestCopyWith(UpdateCartRequest value, $Res Function(UpdateCartRequest) _then) = _$UpdateCartRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cart_id') int cartId, int quantity
});




}
/// @nodoc
class _$UpdateCartRequestCopyWithImpl<$Res>
    implements $UpdateCartRequestCopyWith<$Res> {
  _$UpdateCartRequestCopyWithImpl(this._self, this._then);

  final UpdateCartRequest _self;
  final $Res Function(UpdateCartRequest) _then;

/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UpdateCartRequest implements UpdateCartRequest {
  const _UpdateCartRequest({@JsonKey(name: 'cart_id') required this.cartId, required this.quantity});
  factory _UpdateCartRequest.fromJson(Map<String, dynamic> json) => _$UpdateCartRequestFromJson(json);

@override@JsonKey(name: 'cart_id') final  int cartId;
@override final  int quantity;

/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCartRequestCopyWith<_UpdateCartRequest> get copyWith => __$UpdateCartRequestCopyWithImpl<_UpdateCartRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateCartRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCartRequest&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartId,quantity);

@override
String toString() {
  return 'UpdateCartRequest(cartId: $cartId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$UpdateCartRequestCopyWith<$Res> implements $UpdateCartRequestCopyWith<$Res> {
  factory _$UpdateCartRequestCopyWith(_UpdateCartRequest value, $Res Function(_UpdateCartRequest) _then) = __$UpdateCartRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cart_id') int cartId, int quantity
});




}
/// @nodoc
class __$UpdateCartRequestCopyWithImpl<$Res>
    implements _$UpdateCartRequestCopyWith<$Res> {
  __$UpdateCartRequestCopyWithImpl(this._self, this._then);

  final _UpdateCartRequest _self;
  final $Res Function(_UpdateCartRequest) _then;

/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartId = null,Object? quantity = null,}) {
  return _then(_UpdateCartRequest(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RemoveFromCartRequest {

@JsonKey(name: 'cart_id') int get cartId;
/// Create a copy of RemoveFromCartRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFromCartRequestCopyWith<RemoveFromCartRequest> get copyWith => _$RemoveFromCartRequestCopyWithImpl<RemoveFromCartRequest>(this as RemoveFromCartRequest, _$identity);

  /// Serializes this RemoveFromCartRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFromCartRequest&&(identical(other.cartId, cartId) || other.cartId == cartId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartId);

@override
String toString() {
  return 'RemoveFromCartRequest(cartId: $cartId)';
}


}

/// @nodoc
abstract mixin class $RemoveFromCartRequestCopyWith<$Res>  {
  factory $RemoveFromCartRequestCopyWith(RemoveFromCartRequest value, $Res Function(RemoveFromCartRequest) _then) = _$RemoveFromCartRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cart_id') int cartId
});




}
/// @nodoc
class _$RemoveFromCartRequestCopyWithImpl<$Res>
    implements $RemoveFromCartRequestCopyWith<$Res> {
  _$RemoveFromCartRequestCopyWithImpl(this._self, this._then);

  final RemoveFromCartRequest _self;
  final $Res Function(RemoveFromCartRequest) _then;

/// Create a copy of RemoveFromCartRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartId = null,}) {
  return _then(_self.copyWith(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RemoveFromCartRequest implements RemoveFromCartRequest {
  const _RemoveFromCartRequest({@JsonKey(name: 'cart_id') required this.cartId});
  factory _RemoveFromCartRequest.fromJson(Map<String, dynamic> json) => _$RemoveFromCartRequestFromJson(json);

@override@JsonKey(name: 'cart_id') final  int cartId;

/// Create a copy of RemoveFromCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFromCartRequestCopyWith<_RemoveFromCartRequest> get copyWith => __$RemoveFromCartRequestCopyWithImpl<_RemoveFromCartRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveFromCartRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFromCartRequest&&(identical(other.cartId, cartId) || other.cartId == cartId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartId);

@override
String toString() {
  return 'RemoveFromCartRequest(cartId: $cartId)';
}


}

/// @nodoc
abstract mixin class _$RemoveFromCartRequestCopyWith<$Res> implements $RemoveFromCartRequestCopyWith<$Res> {
  factory _$RemoveFromCartRequestCopyWith(_RemoveFromCartRequest value, $Res Function(_RemoveFromCartRequest) _then) = __$RemoveFromCartRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cart_id') int cartId
});




}
/// @nodoc
class __$RemoveFromCartRequestCopyWithImpl<$Res>
    implements _$RemoveFromCartRequestCopyWith<$Res> {
  __$RemoveFromCartRequestCopyWithImpl(this._self, this._then);

  final _RemoveFromCartRequest _self;
  final $Res Function(_RemoveFromCartRequest) _then;

/// Create a copy of RemoveFromCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartId = null,}) {
  return _then(_RemoveFromCartRequest(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$VariationValues {

 String get label;
/// Create a copy of VariationValues
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariationValuesCopyWith<VariationValues> get copyWith => _$VariationValuesCopyWithImpl<VariationValues>(this as VariationValues, _$identity);

  /// Serializes this VariationValues to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariationValues&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'VariationValues(label: $label)';
}


}

/// @nodoc
abstract mixin class $VariationValuesCopyWith<$Res>  {
  factory $VariationValuesCopyWith(VariationValues value, $Res Function(VariationValues) _then) = _$VariationValuesCopyWithImpl;
@useResult
$Res call({
 String label
});




}
/// @nodoc
class _$VariationValuesCopyWithImpl<$Res>
    implements $VariationValuesCopyWith<$Res> {
  _$VariationValuesCopyWithImpl(this._self, this._then);

  final VariationValues _self;
  final $Res Function(VariationValues) _then;

/// Create a copy of VariationValues
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VariationValues implements VariationValues {
  const _VariationValues({required this.label});
  factory _VariationValues.fromJson(Map<String, dynamic> json) => _$VariationValuesFromJson(json);

@override final  String label;

/// Create a copy of VariationValues
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariationValuesCopyWith<_VariationValues> get copyWith => __$VariationValuesCopyWithImpl<_VariationValues>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariationValuesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariationValues&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'VariationValues(label: $label)';
}


}

/// @nodoc
abstract mixin class _$VariationValuesCopyWith<$Res> implements $VariationValuesCopyWith<$Res> {
  factory _$VariationValuesCopyWith(_VariationValues value, $Res Function(_VariationValues) _then) = __$VariationValuesCopyWithImpl;
@override @useResult
$Res call({
 String label
});




}
/// @nodoc
class __$VariationValuesCopyWithImpl<$Res>
    implements _$VariationValuesCopyWith<$Res> {
  __$VariationValuesCopyWithImpl(this._self, this._then);

  final _VariationValues _self;
  final $Res Function(_VariationValues) _then;

/// Create a copy of VariationValues
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,}) {
  return _then(_VariationValues(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ItemVariation {

 String get name; VariationValues get values;
/// Create a copy of ItemVariation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemVariationCopyWith<ItemVariation> get copyWith => _$ItemVariationCopyWithImpl<ItemVariation>(this as ItemVariation, _$identity);

  /// Serializes this ItemVariation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemVariation&&(identical(other.name, name) || other.name == name)&&(identical(other.values, values) || other.values == values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,values);

@override
String toString() {
  return 'ItemVariation(name: $name, values: $values)';
}


}

/// @nodoc
abstract mixin class $ItemVariationCopyWith<$Res>  {
  factory $ItemVariationCopyWith(ItemVariation value, $Res Function(ItemVariation) _then) = _$ItemVariationCopyWithImpl;
@useResult
$Res call({
 String name, VariationValues values
});


$VariationValuesCopyWith<$Res> get values;

}
/// @nodoc
class _$ItemVariationCopyWithImpl<$Res>
    implements $ItemVariationCopyWith<$Res> {
  _$ItemVariationCopyWithImpl(this._self, this._then);

  final ItemVariation _self;
  final $Res Function(ItemVariation) _then;

/// Create a copy of ItemVariation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? values = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as VariationValues,
  ));
}
/// Create a copy of ItemVariation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariationValuesCopyWith<$Res> get values {
  
  return $VariationValuesCopyWith<$Res>(_self.values, (value) {
    return _then(_self.copyWith(values: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ItemVariation implements ItemVariation {
  const _ItemVariation({required this.name, required this.values});
  factory _ItemVariation.fromJson(Map<String, dynamic> json) => _$ItemVariationFromJson(json);

@override final  String name;
@override final  VariationValues values;

/// Create a copy of ItemVariation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemVariationCopyWith<_ItemVariation> get copyWith => __$ItemVariationCopyWithImpl<_ItemVariation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemVariationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemVariation&&(identical(other.name, name) || other.name == name)&&(identical(other.values, values) || other.values == values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,values);

@override
String toString() {
  return 'ItemVariation(name: $name, values: $values)';
}


}

/// @nodoc
abstract mixin class _$ItemVariationCopyWith<$Res> implements $ItemVariationCopyWith<$Res> {
  factory _$ItemVariationCopyWith(_ItemVariation value, $Res Function(_ItemVariation) _then) = __$ItemVariationCopyWithImpl;
@override @useResult
$Res call({
 String name, VariationValues values
});


@override $VariationValuesCopyWith<$Res> get values;

}
/// @nodoc
class __$ItemVariationCopyWithImpl<$Res>
    implements _$ItemVariationCopyWith<$Res> {
  __$ItemVariationCopyWithImpl(this._self, this._then);

  final _ItemVariation _self;
  final $Res Function(_ItemVariation) _then;

/// Create a copy of ItemVariation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? values = null,}) {
  return _then(_ItemVariation(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as VariationValues,
  ));
}

/// Create a copy of ItemVariation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariationValuesCopyWith<$Res> get values {
  
  return $VariationValuesCopyWith<$Res>(_self.values, (value) {
    return _then(_self.copyWith(values: value));
  });
}
}


/// @nodoc
mixin _$CartItem {

@JsonKey(name: 'cart_id') int get cartId;@JsonKey(name: 'item_id') int get itemId;@JsonKey(name: 'item_name') String get itemName;@JsonKey(name: 'item_image') String? get itemImage;@JsonKey(name: 'item_price') double get itemPrice;@JsonKey(name: 'item_quantity') int get itemQuantity;@JsonKey(name: 'item_total_price') double get itemTotalPrice;@JsonKey(name: 'item_variation') List<ItemVariation> get itemVariation;
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCopyWith<CartItem> get copyWith => _$CartItemCopyWithImpl<CartItem>(this as CartItem, _$identity);

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItem&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemImage, itemImage) || other.itemImage == itemImage)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemQuantity, itemQuantity) || other.itemQuantity == itemQuantity)&&(identical(other.itemTotalPrice, itemTotalPrice) || other.itemTotalPrice == itemTotalPrice)&&const DeepCollectionEquality().equals(other.itemVariation, itemVariation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartId,itemId,itemName,itemImage,itemPrice,itemQuantity,itemTotalPrice,const DeepCollectionEquality().hash(itemVariation));

@override
String toString() {
  return 'CartItem(cartId: $cartId, itemId: $itemId, itemName: $itemName, itemImage: $itemImage, itemPrice: $itemPrice, itemQuantity: $itemQuantity, itemTotalPrice: $itemTotalPrice, itemVariation: $itemVariation)';
}


}

/// @nodoc
abstract mixin class $CartItemCopyWith<$Res>  {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) _then) = _$CartItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cart_id') int cartId,@JsonKey(name: 'item_id') int itemId,@JsonKey(name: 'item_name') String itemName,@JsonKey(name: 'item_image') String? itemImage,@JsonKey(name: 'item_price') double itemPrice,@JsonKey(name: 'item_quantity') int itemQuantity,@JsonKey(name: 'item_total_price') double itemTotalPrice,@JsonKey(name: 'item_variation') List<ItemVariation> itemVariation
});




}
/// @nodoc
class _$CartItemCopyWithImpl<$Res>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._self, this._then);

  final CartItem _self;
  final $Res Function(CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartId = null,Object? itemId = null,Object? itemName = null,Object? itemImage = freezed,Object? itemPrice = null,Object? itemQuantity = null,Object? itemTotalPrice = null,Object? itemVariation = null,}) {
  return _then(_self.copyWith(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,itemImage: freezed == itemImage ? _self.itemImage : itemImage // ignore: cast_nullable_to_non_nullable
as String?,itemPrice: null == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double,itemQuantity: null == itemQuantity ? _self.itemQuantity : itemQuantity // ignore: cast_nullable_to_non_nullable
as int,itemTotalPrice: null == itemTotalPrice ? _self.itemTotalPrice : itemTotalPrice // ignore: cast_nullable_to_non_nullable
as double,itemVariation: null == itemVariation ? _self.itemVariation : itemVariation // ignore: cast_nullable_to_non_nullable
as List<ItemVariation>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CartItem implements CartItem {
  const _CartItem({@JsonKey(name: 'cart_id') required this.cartId, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'item_name') required this.itemName, @JsonKey(name: 'item_image') this.itemImage, @JsonKey(name: 'item_price') required this.itemPrice, @JsonKey(name: 'item_quantity') required this.itemQuantity, @JsonKey(name: 'item_total_price') required this.itemTotalPrice, @JsonKey(name: 'item_variation') required final  List<ItemVariation> itemVariation}): _itemVariation = itemVariation;
  factory _CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);

@override@JsonKey(name: 'cart_id') final  int cartId;
@override@JsonKey(name: 'item_id') final  int itemId;
@override@JsonKey(name: 'item_name') final  String itemName;
@override@JsonKey(name: 'item_image') final  String? itemImage;
@override@JsonKey(name: 'item_price') final  double itemPrice;
@override@JsonKey(name: 'item_quantity') final  int itemQuantity;
@override@JsonKey(name: 'item_total_price') final  double itemTotalPrice;
 final  List<ItemVariation> _itemVariation;
@override@JsonKey(name: 'item_variation') List<ItemVariation> get itemVariation {
  if (_itemVariation is EqualUnmodifiableListView) return _itemVariation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemVariation);
}


/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemCopyWith<_CartItem> get copyWith => __$CartItemCopyWithImpl<_CartItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItem&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemImage, itemImage) || other.itemImage == itemImage)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemQuantity, itemQuantity) || other.itemQuantity == itemQuantity)&&(identical(other.itemTotalPrice, itemTotalPrice) || other.itemTotalPrice == itemTotalPrice)&&const DeepCollectionEquality().equals(other._itemVariation, _itemVariation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartId,itemId,itemName,itemImage,itemPrice,itemQuantity,itemTotalPrice,const DeepCollectionEquality().hash(_itemVariation));

@override
String toString() {
  return 'CartItem(cartId: $cartId, itemId: $itemId, itemName: $itemName, itemImage: $itemImage, itemPrice: $itemPrice, itemQuantity: $itemQuantity, itemTotalPrice: $itemTotalPrice, itemVariation: $itemVariation)';
}


}

/// @nodoc
abstract mixin class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) _then) = __$CartItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cart_id') int cartId,@JsonKey(name: 'item_id') int itemId,@JsonKey(name: 'item_name') String itemName,@JsonKey(name: 'item_image') String? itemImage,@JsonKey(name: 'item_price') double itemPrice,@JsonKey(name: 'item_quantity') int itemQuantity,@JsonKey(name: 'item_total_price') double itemTotalPrice,@JsonKey(name: 'item_variation') List<ItemVariation> itemVariation
});




}
/// @nodoc
class __$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(this._self, this._then);

  final _CartItem _self;
  final $Res Function(_CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartId = null,Object? itemId = null,Object? itemName = null,Object? itemImage = freezed,Object? itemPrice = null,Object? itemQuantity = null,Object? itemTotalPrice = null,Object? itemVariation = null,}) {
  return _then(_CartItem(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,itemImage: freezed == itemImage ? _self.itemImage : itemImage // ignore: cast_nullable_to_non_nullable
as String?,itemPrice: null == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double,itemQuantity: null == itemQuantity ? _self.itemQuantity : itemQuantity // ignore: cast_nullable_to_non_nullable
as int,itemTotalPrice: null == itemTotalPrice ? _self.itemTotalPrice : itemTotalPrice // ignore: cast_nullable_to_non_nullable
as double,itemVariation: null == itemVariation ? _self._itemVariation : itemVariation // ignore: cast_nullable_to_non_nullable
as List<ItemVariation>,
  ));
}


}


/// @nodoc
mixin _$StoreInCart {

@JsonKey(name: 'store_id') int get storeId;@JsonKey(name: 'store_name') String get storeName;@JsonKey(name: 'store_logo') String? get storeLogo; List<CartItem> get items;@JsonKey(name: 'store_total_items') int get storeTotalItems;@JsonKey(name: 'store_total_price') double get storeTotalPrice;
/// Create a copy of StoreInCart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInCartCopyWith<StoreInCart> get copyWith => _$StoreInCartCopyWithImpl<StoreInCart>(this as StoreInCart, _$identity);

  /// Serializes this StoreInCart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInCart&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeLogo, storeLogo) || other.storeLogo == storeLogo)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.storeTotalItems, storeTotalItems) || other.storeTotalItems == storeTotalItems)&&(identical(other.storeTotalPrice, storeTotalPrice) || other.storeTotalPrice == storeTotalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,storeLogo,const DeepCollectionEquality().hash(items),storeTotalItems,storeTotalPrice);

@override
String toString() {
  return 'StoreInCart(storeId: $storeId, storeName: $storeName, storeLogo: $storeLogo, items: $items, storeTotalItems: $storeTotalItems, storeTotalPrice: $storeTotalPrice)';
}


}

/// @nodoc
abstract mixin class $StoreInCartCopyWith<$Res>  {
  factory $StoreInCartCopyWith(StoreInCart value, $Res Function(StoreInCart) _then) = _$StoreInCartCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName,@JsonKey(name: 'store_logo') String? storeLogo, List<CartItem> items,@JsonKey(name: 'store_total_items') int storeTotalItems,@JsonKey(name: 'store_total_price') double storeTotalPrice
});




}
/// @nodoc
class _$StoreInCartCopyWithImpl<$Res>
    implements $StoreInCartCopyWith<$Res> {
  _$StoreInCartCopyWithImpl(this._self, this._then);

  final StoreInCart _self;
  final $Res Function(StoreInCart) _then;

/// Create a copy of StoreInCart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? storeName = null,Object? storeLogo = freezed,Object? items = null,Object? storeTotalItems = null,Object? storeTotalPrice = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,storeLogo: freezed == storeLogo ? _self.storeLogo : storeLogo // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,storeTotalItems: null == storeTotalItems ? _self.storeTotalItems : storeTotalItems // ignore: cast_nullable_to_non_nullable
as int,storeTotalPrice: null == storeTotalPrice ? _self.storeTotalPrice : storeTotalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StoreInCart implements StoreInCart {
  const _StoreInCart({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'store_name') required this.storeName, @JsonKey(name: 'store_logo') this.storeLogo, required final  List<CartItem> items, @JsonKey(name: 'store_total_items') required this.storeTotalItems, @JsonKey(name: 'store_total_price') required this.storeTotalPrice}): _items = items;
  factory _StoreInCart.fromJson(Map<String, dynamic> json) => _$StoreInCartFromJson(json);

@override@JsonKey(name: 'store_id') final  int storeId;
@override@JsonKey(name: 'store_name') final  String storeName;
@override@JsonKey(name: 'store_logo') final  String? storeLogo;
 final  List<CartItem> _items;
@override List<CartItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'store_total_items') final  int storeTotalItems;
@override@JsonKey(name: 'store_total_price') final  double storeTotalPrice;

/// Create a copy of StoreInCart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInCartCopyWith<_StoreInCart> get copyWith => __$StoreInCartCopyWithImpl<_StoreInCart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInCartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInCart&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeLogo, storeLogo) || other.storeLogo == storeLogo)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.storeTotalItems, storeTotalItems) || other.storeTotalItems == storeTotalItems)&&(identical(other.storeTotalPrice, storeTotalPrice) || other.storeTotalPrice == storeTotalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,storeLogo,const DeepCollectionEquality().hash(_items),storeTotalItems,storeTotalPrice);

@override
String toString() {
  return 'StoreInCart(storeId: $storeId, storeName: $storeName, storeLogo: $storeLogo, items: $items, storeTotalItems: $storeTotalItems, storeTotalPrice: $storeTotalPrice)';
}


}

/// @nodoc
abstract mixin class _$StoreInCartCopyWith<$Res> implements $StoreInCartCopyWith<$Res> {
  factory _$StoreInCartCopyWith(_StoreInCart value, $Res Function(_StoreInCart) _then) = __$StoreInCartCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'store_name') String storeName,@JsonKey(name: 'store_logo') String? storeLogo, List<CartItem> items,@JsonKey(name: 'store_total_items') int storeTotalItems,@JsonKey(name: 'store_total_price') double storeTotalPrice
});




}
/// @nodoc
class __$StoreInCartCopyWithImpl<$Res>
    implements _$StoreInCartCopyWith<$Res> {
  __$StoreInCartCopyWithImpl(this._self, this._then);

  final _StoreInCart _self;
  final $Res Function(_StoreInCart) _then;

/// Create a copy of StoreInCart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? storeName = null,Object? storeLogo = freezed,Object? items = null,Object? storeTotalItems = null,Object? storeTotalPrice = null,}) {
  return _then(_StoreInCart(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,storeLogo: freezed == storeLogo ? _self.storeLogo : storeLogo // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,storeTotalItems: null == storeTotalItems ? _self.storeTotalItems : storeTotalItems // ignore: cast_nullable_to_non_nullable
as int,storeTotalPrice: null == storeTotalPrice ? _self.storeTotalPrice : storeTotalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CartSummary {

@JsonKey(name: 'total_stores') int get totalStores;@JsonKey(name: 'total_items') int get totalItems;@JsonKey(name: 'total_price') double get totalPrice;
/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<CartSummary> get copyWith => _$CartSummaryCopyWithImpl<CartSummary>(this as CartSummary, _$identity);

  /// Serializes this CartSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSummary&&(identical(other.totalStores, totalStores) || other.totalStores == totalStores)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStores,totalItems,totalPrice);

@override
String toString() {
  return 'CartSummary(totalStores: $totalStores, totalItems: $totalItems, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $CartSummaryCopyWith<$Res>  {
  factory $CartSummaryCopyWith(CartSummary value, $Res Function(CartSummary) _then) = _$CartSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_stores') int totalStores,@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'total_price') double totalPrice
});




}
/// @nodoc
class _$CartSummaryCopyWithImpl<$Res>
    implements $CartSummaryCopyWith<$Res> {
  _$CartSummaryCopyWithImpl(this._self, this._then);

  final CartSummary _self;
  final $Res Function(CartSummary) _then;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalStores = null,Object? totalItems = null,Object? totalPrice = null,}) {
  return _then(_self.copyWith(
totalStores: null == totalStores ? _self.totalStores : totalStores // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CartSummary implements CartSummary {
  const _CartSummary({@JsonKey(name: 'total_stores') required this.totalStores, @JsonKey(name: 'total_items') required this.totalItems, @JsonKey(name: 'total_price') required this.totalPrice});
  factory _CartSummary.fromJson(Map<String, dynamic> json) => _$CartSummaryFromJson(json);

@override@JsonKey(name: 'total_stores') final  int totalStores;
@override@JsonKey(name: 'total_items') final  int totalItems;
@override@JsonKey(name: 'total_price') final  double totalPrice;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartSummaryCopyWith<_CartSummary> get copyWith => __$CartSummaryCopyWithImpl<_CartSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartSummary&&(identical(other.totalStores, totalStores) || other.totalStores == totalStores)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStores,totalItems,totalPrice);

@override
String toString() {
  return 'CartSummary(totalStores: $totalStores, totalItems: $totalItems, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$CartSummaryCopyWith<$Res> implements $CartSummaryCopyWith<$Res> {
  factory _$CartSummaryCopyWith(_CartSummary value, $Res Function(_CartSummary) _then) = __$CartSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_stores') int totalStores,@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'total_price') double totalPrice
});




}
/// @nodoc
class __$CartSummaryCopyWithImpl<$Res>
    implements _$CartSummaryCopyWith<$Res> {
  __$CartSummaryCopyWithImpl(this._self, this._then);

  final _CartSummary _self;
  final $Res Function(_CartSummary) _then;

/// Create a copy of CartSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalStores = null,Object? totalItems = null,Object? totalPrice = null,}) {
  return _then(_CartSummary(
totalStores: null == totalStores ? _self.totalStores : totalStores // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CartResponse {

 List<StoreInCart> get stores; CartSummary get summary;
/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartResponseCopyWith<CartResponse> get copyWith => _$CartResponseCopyWithImpl<CartResponse>(this as CartResponse, _$identity);

  /// Serializes this CartResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartResponse&&const DeepCollectionEquality().equals(other.stores, stores)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stores),summary);

@override
String toString() {
  return 'CartResponse(stores: $stores, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $CartResponseCopyWith<$Res>  {
  factory $CartResponseCopyWith(CartResponse value, $Res Function(CartResponse) _then) = _$CartResponseCopyWithImpl;
@useResult
$Res call({
 List<StoreInCart> stores, CartSummary summary
});


$CartSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$CartResponseCopyWithImpl<$Res>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._self, this._then);

  final CartResponse _self;
  final $Res Function(CartResponse) _then;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stores = null,Object? summary = null,}) {
  return _then(_self.copyWith(
stores: null == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreInCart>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummary,
  ));
}
/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<$Res> get summary {
  
  return $CartSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CartResponse implements CartResponse {
  const _CartResponse({required final  List<StoreInCart> stores, required this.summary}): _stores = stores;
  factory _CartResponse.fromJson(Map<String, dynamic> json) => _$CartResponseFromJson(json);

 final  List<StoreInCart> _stores;
@override List<StoreInCart> get stores {
  if (_stores is EqualUnmodifiableListView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stores);
}

@override final  CartSummary summary;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartResponseCopyWith<_CartResponse> get copyWith => __$CartResponseCopyWithImpl<_CartResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartResponse&&const DeepCollectionEquality().equals(other._stores, _stores)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stores),summary);

@override
String toString() {
  return 'CartResponse(stores: $stores, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$CartResponseCopyWith<$Res> implements $CartResponseCopyWith<$Res> {
  factory _$CartResponseCopyWith(_CartResponse value, $Res Function(_CartResponse) _then) = __$CartResponseCopyWithImpl;
@override @useResult
$Res call({
 List<StoreInCart> stores, CartSummary summary
});


@override $CartSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$CartResponseCopyWithImpl<$Res>
    implements _$CartResponseCopyWith<$Res> {
  __$CartResponseCopyWithImpl(this._self, this._then);

  final _CartResponse _self;
  final $Res Function(_CartResponse) _then;

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stores = null,Object? summary = null,}) {
  return _then(_CartResponse(
stores: null == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreInCart>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummary,
  ));
}

/// Create a copy of CartResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryCopyWith<$Res> get summary {
  
  return $CartSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
