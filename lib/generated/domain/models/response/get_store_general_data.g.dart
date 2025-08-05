// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_general_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStoreGeneralData _$GetStoreGeneralDataFromJson(Map<String, dynamic> json) =>
    _GetStoreGeneralData(
      success: json['success'] as bool?,
      services: json['services'] == null
          ? null
          : Services.fromJson(json['services'] as Map<String, dynamic>),
      data: json['data'],
    );

Map<String, dynamic> _$GetStoreGeneralDataToJson(
  _GetStoreGeneralData instance,
) => <String, dynamic>{
  'success': instance.success,
  'services': instance.services,
  'data': instance.data,
};

_Services _$ServicesFromJson(Map<String, dynamic> json) => _Services(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ServiceEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ServicesToJson(_Services instance) => <String, dynamic>{
  'data': instance.data,
};

_ServiceEntity _$ServiceEntityFromJson(Map<String, dynamic> json) =>
    _ServiceEntity(
      id: (json['id'] as num?)?.toInt(),
      moduleName: json['module_name'] as String?,
      thumbnail: json['thumbnail'] as String?,
      icon: json['icon'] as String?,
      moduleType: json['module_type'] as String?,
      iconFullUrl: json['icon_full_url'] as String?,
      thumbnailFullUrl: json['thumbnail_full_url'] as String?,
      uiType: $enumDecodeNullable(_$ServiceUITypeEnumMap, json['ui_type']),
    );

Map<String, dynamic> _$ServiceEntityToJson(_ServiceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'module_name': instance.moduleName,
      'thumbnail': instance.thumbnail,
      'icon': instance.icon,
      'module_type': instance.moduleType,
      'icon_full_url': instance.iconFullUrl,
      'thumbnail_full_url': instance.thumbnailFullUrl,
      'ui_type': _$ServiceUITypeEnumMap[instance.uiType],
    };

const _$ServiceUITypeEnumMap = {
  ServiceUIType.ui1: 'ui1',
  ServiceUIType.ui2: 'ui2',
};
