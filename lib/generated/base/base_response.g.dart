// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../base/base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      code: json['code'],
      txtId: json['txtId'] as String?,
      data: json['data'],
      re: json['re'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) => <String, dynamic>{
      'code': instance.code,
      'txtId': instance.txtId,
      're': instance.re,
      'message': instance.message,
      'data': instance.data,
    };
