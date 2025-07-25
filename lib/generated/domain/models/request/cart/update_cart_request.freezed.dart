// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/models/request/cart/update_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

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

// dart format on
