// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/request/remove_wishlist_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoveWishlistRequest {

 WishlistItemType get type; int get id;
/// Create a copy of RemoveWishlistRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveWishlistRequestCopyWith<RemoveWishlistRequest> get copyWith => _$RemoveWishlistRequestCopyWithImpl<RemoveWishlistRequest>(this as RemoveWishlistRequest, _$identity);

  /// Serializes this RemoveWishlistRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveWishlistRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id);

@override
String toString() {
  return 'RemoveWishlistRequest(type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class $RemoveWishlistRequestCopyWith<$Res>  {
  factory $RemoveWishlistRequestCopyWith(RemoveWishlistRequest value, $Res Function(RemoveWishlistRequest) _then) = _$RemoveWishlistRequestCopyWithImpl;
@useResult
$Res call({
 WishlistItemType type, int id
});




}
/// @nodoc
class _$RemoveWishlistRequestCopyWithImpl<$Res>
    implements $RemoveWishlistRequestCopyWith<$Res> {
  _$RemoveWishlistRequestCopyWithImpl(this._self, this._then);

  final RemoveWishlistRequest _self;
  final $Res Function(RemoveWishlistRequest) _then;

/// Create a copy of RemoveWishlistRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? id = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WishlistItemType,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RemoveWishlistRequest implements RemoveWishlistRequest {
  const _RemoveWishlistRequest({required this.type, required this.id});
  factory _RemoveWishlistRequest.fromJson(Map<String, dynamic> json) => _$RemoveWishlistRequestFromJson(json);

@override final  WishlistItemType type;
@override final  int id;

/// Create a copy of RemoveWishlistRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveWishlistRequestCopyWith<_RemoveWishlistRequest> get copyWith => __$RemoveWishlistRequestCopyWithImpl<_RemoveWishlistRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveWishlistRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveWishlistRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id);

@override
String toString() {
  return 'RemoveWishlistRequest(type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class _$RemoveWishlistRequestCopyWith<$Res> implements $RemoveWishlistRequestCopyWith<$Res> {
  factory _$RemoveWishlistRequestCopyWith(_RemoveWishlistRequest value, $Res Function(_RemoveWishlistRequest) _then) = __$RemoveWishlistRequestCopyWithImpl;
@override @useResult
$Res call({
 WishlistItemType type, int id
});




}
/// @nodoc
class __$RemoveWishlistRequestCopyWithImpl<$Res>
    implements _$RemoveWishlistRequestCopyWith<$Res> {
  __$RemoveWishlistRequestCopyWithImpl(this._self, this._then);

  final _RemoveWishlistRequest _self;
  final $Res Function(_RemoveWishlistRequest) _then;

/// Create a copy of RemoveWishlistRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? id = null,}) {
  return _then(_RemoveWishlistRequest(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WishlistItemType,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
