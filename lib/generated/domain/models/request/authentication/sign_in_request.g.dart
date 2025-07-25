// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/request/authentication/sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) =>
    SignInRequest(
      loginType: $enumDecode(_$SignInTypeEnumMap, json['login_type']),
      emailOrPhone: json['email_or_phone'] as String,
      fieldType: json['field_type'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignInRequestToJson(SignInRequest instance) =>
    <String, dynamic>{
      'login_type': _$SignInTypeEnumMap[instance.loginType]!,
      'email_or_phone': instance.emailOrPhone,
      'field_type': instance.fieldType,
      'password': instance.password,
    };

const _$SignInTypeEnumMap = {
  SignInType.manual: 'manual',
  SignInType.google: 'google',
  SignInType.facebook: 'facebook',
};
