// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileRequest _$UpdateProfileRequestFromJson(
  Map<String, dynamic> json,
) => UpdateProfileRequest(
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  birthday: json['birthday'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
);

Map<String, dynamic> _$UpdateProfileRequestToJson(
  UpdateProfileRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'birthday': instance.birthday,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
