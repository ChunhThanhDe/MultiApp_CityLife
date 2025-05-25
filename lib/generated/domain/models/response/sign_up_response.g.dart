// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      token: json['token'] as String?,
      isPhoneVerified: (json['is_phone_verified'] as num?)?.toInt(),
      isEmailVerified: (json['is_email_verified'] as num?)?.toInt(),
      isPersonalInfo: (json['is_personal_info'] as num?)?.toInt(),
      isExistUser: json['is_exist_user'],
      loginType: json['login_type'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'is_phone_verified': instance.isPhoneVerified,
      'is_email_verified': instance.isEmailVerified,
      'is_personal_info': instance.isPersonalInfo,
      'is_exist_user': instance.isExistUser,
      'login_type': instance.loginType,
      'email': instance.email,
    };
