// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../base/error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) => ErrorResponse((json['errors'] as List<dynamic>).map((e) => ErrorModel.fromJson(e as Map<String, dynamic>)).toList());

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) => <String, dynamic>{'errors': instance.errors};

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(json['code'] as String, json['message'] as String);

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) => <String, dynamic>{'code': instance.code, 'message': instance.message};
