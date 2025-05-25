// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    SignUpRequest(
      name: json['name'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String,
      birthday: json['birthday'] as String?,
    );

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'birthday': instance.birthday,
    };
