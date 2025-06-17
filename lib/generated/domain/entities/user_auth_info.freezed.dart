// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/entities/user_auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAuthInfo {

 String get token; String get refreshToken; String get userId; bool get isPhoneVerified; bool get isEmailVerified; bool get isPersonalInfo; bool get isExistUser; String get loginType; String get email;
/// Create a copy of UserAuthInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAuthInfoCopyWith<UserAuthInfo> get copyWith => _$UserAuthInfoCopyWithImpl<UserAuthInfo>(this as UserAuthInfo, _$identity);

  /// Serializes this UserAuthInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAuthInfo&&(identical(other.token, token) || other.token == token)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isPersonalInfo, isPersonalInfo) || other.isPersonalInfo == isPersonalInfo)&&(identical(other.isExistUser, isExistUser) || other.isExistUser == isExistUser)&&(identical(other.loginType, loginType) || other.loginType == loginType)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,refreshToken,userId,isPhoneVerified,isEmailVerified,isPersonalInfo,isExistUser,loginType,email);

@override
String toString() {
  return 'UserAuthInfo(token: $token, refreshToken: $refreshToken, userId: $userId, isPhoneVerified: $isPhoneVerified, isEmailVerified: $isEmailVerified, isPersonalInfo: $isPersonalInfo, isExistUser: $isExistUser, loginType: $loginType, email: $email)';
}


}

/// @nodoc
abstract mixin class $UserAuthInfoCopyWith<$Res>  {
  factory $UserAuthInfoCopyWith(UserAuthInfo value, $Res Function(UserAuthInfo) _then) = _$UserAuthInfoCopyWithImpl;
@useResult
$Res call({
 String token, String refreshToken, String userId, bool isPhoneVerified, bool isEmailVerified, bool isPersonalInfo, bool isExistUser, String loginType, String email
});




}
/// @nodoc
class _$UserAuthInfoCopyWithImpl<$Res>
    implements $UserAuthInfoCopyWith<$Res> {
  _$UserAuthInfoCopyWithImpl(this._self, this._then);

  final UserAuthInfo _self;
  final $Res Function(UserAuthInfo) _then;

/// Create a copy of UserAuthInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? refreshToken = null,Object? userId = null,Object? isPhoneVerified = null,Object? isEmailVerified = null,Object? isPersonalInfo = null,Object? isExistUser = null,Object? loginType = null,Object? email = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,isPersonalInfo: null == isPersonalInfo ? _self.isPersonalInfo : isPersonalInfo // ignore: cast_nullable_to_non_nullable
as bool,isExistUser: null == isExistUser ? _self.isExistUser : isExistUser // ignore: cast_nullable_to_non_nullable
as bool,loginType: null == loginType ? _self.loginType : loginType // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserAuthInfo implements UserAuthInfo {
  const _UserAuthInfo({this.token = '', this.refreshToken = '', this.userId = '', this.isPhoneVerified = false, this.isEmailVerified = false, this.isPersonalInfo = false, this.isExistUser = false, this.loginType = '', this.email = ''});
  factory _UserAuthInfo.fromJson(Map<String, dynamic> json) => _$UserAuthInfoFromJson(json);

@override@JsonKey() final  String token;
@override@JsonKey() final  String refreshToken;
@override@JsonKey() final  String userId;
@override@JsonKey() final  bool isPhoneVerified;
@override@JsonKey() final  bool isEmailVerified;
@override@JsonKey() final  bool isPersonalInfo;
@override@JsonKey() final  bool isExistUser;
@override@JsonKey() final  String loginType;
@override@JsonKey() final  String email;

/// Create a copy of UserAuthInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAuthInfoCopyWith<_UserAuthInfo> get copyWith => __$UserAuthInfoCopyWithImpl<_UserAuthInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAuthInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAuthInfo&&(identical(other.token, token) || other.token == token)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isPersonalInfo, isPersonalInfo) || other.isPersonalInfo == isPersonalInfo)&&(identical(other.isExistUser, isExistUser) || other.isExistUser == isExistUser)&&(identical(other.loginType, loginType) || other.loginType == loginType)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,refreshToken,userId,isPhoneVerified,isEmailVerified,isPersonalInfo,isExistUser,loginType,email);

@override
String toString() {
  return 'UserAuthInfo(token: $token, refreshToken: $refreshToken, userId: $userId, isPhoneVerified: $isPhoneVerified, isEmailVerified: $isEmailVerified, isPersonalInfo: $isPersonalInfo, isExistUser: $isExistUser, loginType: $loginType, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UserAuthInfoCopyWith<$Res> implements $UserAuthInfoCopyWith<$Res> {
  factory _$UserAuthInfoCopyWith(_UserAuthInfo value, $Res Function(_UserAuthInfo) _then) = __$UserAuthInfoCopyWithImpl;
@override @useResult
$Res call({
 String token, String refreshToken, String userId, bool isPhoneVerified, bool isEmailVerified, bool isPersonalInfo, bool isExistUser, String loginType, String email
});




}
/// @nodoc
class __$UserAuthInfoCopyWithImpl<$Res>
    implements _$UserAuthInfoCopyWith<$Res> {
  __$UserAuthInfoCopyWithImpl(this._self, this._then);

  final _UserAuthInfo _self;
  final $Res Function(_UserAuthInfo) _then;

/// Create a copy of UserAuthInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? refreshToken = null,Object? userId = null,Object? isPhoneVerified = null,Object? isEmailVerified = null,Object? isPersonalInfo = null,Object? isExistUser = null,Object? loginType = null,Object? email = null,}) {
  return _then(_UserAuthInfo(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,isPersonalInfo: null == isPersonalInfo ? _self.isPersonalInfo : isPersonalInfo // ignore: cast_nullable_to_non_nullable
as bool,isExistUser: null == isExistUser ? _self.isExistUser : isExistUser // ignore: cast_nullable_to_non_nullable
as bool,loginType: null == loginType ? _self.loginType : loginType // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
