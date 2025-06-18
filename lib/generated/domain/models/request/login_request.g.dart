// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
  loginType: $enumDecode(_$LoginTypeEnumMap, json['login_type']),
  emailOrPhone: json['email_or_phone'] as String,
  fieldType: json['field_type'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) => <String, dynamic>{
  'login_type': _$LoginTypeEnumMap[instance.loginType]!,
  'email_or_phone': instance.emailOrPhone,
  'field_type': instance.fieldType,
  'password': instance.password,
};

const _$LoginTypeEnumMap = {LoginType.manual: 'manual', LoginType.google: 'google', LoginType.facebook: 'facebook'};
