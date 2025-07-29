// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequest _$ChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => ChangePasswordRequest(
  oldPassword: json['old_password'] as String,
  password: json['password'] as String,
  confirmPassword: json['confirm_password'] as String,
);

Map<String, dynamic> _$ChangePasswordRequestToJson(
  ChangePasswordRequest instance,
) => <String, dynamic>{
  'old_password': instance.oldPassword,
  'password': instance.password,
  'confirm_password': instance.confirmPassword,
};
