// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../domain/entities/user_auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAuthInfo _$UserAuthInfoFromJson(Map<String, dynamic> json) => _UserAuthInfo(
  token: json['token'] as String? ?? '',
  refreshToken: json['refreshToken'] as String? ?? '',
  userId: json['userId'] as String? ?? '',
  isPhoneVerified: json['isPhoneVerified'] as bool? ?? false,
  isEmailVerified: json['isEmailVerified'] as bool? ?? false,
  isPersonalInfo: json['isPersonalInfo'] as bool? ?? false,
  isExistUser: json['isExistUser'] as bool? ?? false,
  loginType: json['loginType'] as String? ?? '',
  email: json['email'] as String? ?? '',
);

Map<String, dynamic> _$UserAuthInfoToJson(_UserAuthInfo instance) => <String, dynamic>{
  'token': instance.token,
  'refreshToken': instance.refreshToken,
  'userId': instance.userId,
  'isPhoneVerified': instance.isPhoneVerified,
  'isEmailVerified': instance.isEmailVerified,
  'isPersonalInfo': instance.isPersonalInfo,
  'isExistUser': instance.isExistUser,
  'loginType': instance.loginType,
  'email': instance.email,
};
