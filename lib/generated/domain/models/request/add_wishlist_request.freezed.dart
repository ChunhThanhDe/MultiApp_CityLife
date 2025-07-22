// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/request/add_wishlist_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddWishlistRequest {

 WishlistItemType get type; int get id;
/// Create a copy of AddWishlistRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddWishlistRequestCopyWith<AddWishlistRequest> get copyWith => _$AddWishlistRequestCopyWithImpl<AddWishlistRequest>(this as AddWishlistRequest, _$identity);

  /// Serializes this AddWishlistRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddWishlistRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id);

@override
String toString() {
  return 'AddWishlistRequest(type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class $AddWishlistRequestCopyWith<$Res>  {
  factory $AddWishlistRequestCopyWith(AddWishlistRequest value, $Res Function(AddWishlistRequest) _then) = _$AddWishlistRequestCopyWithImpl;
@useResult
$Res call({
 WishlistItemType type, int id
});




}
/// @nodoc
class _$AddWishlistRequestCopyWithImpl<$Res>
    implements $AddWishlistRequestCopyWith<$Res> {
  _$AddWishlistRequestCopyWithImpl(this._self, this._then);

  final AddWishlistRequest _self;
  final $Res Function(AddWishlistRequest) _then;

/// Create a copy of AddWishlistRequest
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

class _AddWishlistRequest implements AddWishlistRequest {
  const _AddWishlistRequest({required this.type, required this.id});
  factory _AddWishlistRequest.fromJson(Map<String, dynamic> json) => _$AddWishlistRequestFromJson(json);

@override final  WishlistItemType type;
@override final  int id;

/// Create a copy of AddWishlistRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddWishlistRequestCopyWith<_AddWishlistRequest> get copyWith => __$AddWishlistRequestCopyWithImpl<_AddWishlistRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddWishlistRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddWishlistRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id);

@override
String toString() {
  return 'AddWishlistRequest(type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class _$AddWishlistRequestCopyWith<$Res> implements $AddWishlistRequestCopyWith<$Res> {
  factory _$AddWishlistRequestCopyWith(_AddWishlistRequest value, $Res Function(_AddWishlistRequest) _then) = __$AddWishlistRequestCopyWithImpl;
@override @useResult
$Res call({
 WishlistItemType type, int id
});




}
/// @nodoc
class __$AddWishlistRequestCopyWithImpl<$Res>
    implements _$AddWishlistRequestCopyWith<$Res> {
  __$AddWishlistRequestCopyWithImpl(this._self, this._then);

  final _AddWishlistRequest _self;
  final $Res Function(_AddWishlistRequest) _then;

/// Create a copy of AddWishlistRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? id = null,}) {
  return _then(_AddWishlistRequest(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WishlistItemType,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
