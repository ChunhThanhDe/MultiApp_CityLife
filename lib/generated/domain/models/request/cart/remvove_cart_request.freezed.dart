// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/models/request/cart/remvove_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

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

// dart format on
