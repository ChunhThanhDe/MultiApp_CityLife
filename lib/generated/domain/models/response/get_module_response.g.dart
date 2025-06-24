// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_module_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetModuleResponse _$GetModuleResponseFromJson(Map<String, dynamic> json) =>
    GetModuleResponse(
      id: (json['id'] as num).toInt(),
      moduleName: json['module_name'] as String,
      status: json['status'] as String,
      moduleType: json['module_type'] as String,
      iconFullUrl: json['icon_full_url'] as String?,
    );

Map<String, dynamic> _$GetModuleResponseToJson(GetModuleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'module_name': instance.moduleName,
      'status': instance.status,
      'module_type': instance.moduleType,
      'icon_full_url': instance.iconFullUrl,
    };
