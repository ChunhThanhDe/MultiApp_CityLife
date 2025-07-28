// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_store_general_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStoreGeneralData _$GetStoreGeneralDataFromJson(Map<String, dynamic> json) =>
    _GetStoreGeneralData(
      success: json['success'] as bool?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      services: json['services'] == null
          ? null
          : Services.fromJson(json['services'] as Map<String, dynamic>),
      data: json['data'],
    );

Map<String, dynamic> _$GetStoreGeneralDataToJson(
  _GetStoreGeneralData instance,
) => <String, dynamic>{
  'success': instance.success,
  'location': instance.location,
  'services': instance.services,
  'data': instance.data,
};

_Location _$LocationFromJson(Map<String, dynamic> json) =>
    _Location(latitude: json['latitude'], longitude: json['longitude']);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

_Services _$ServicesFromJson(Map<String, dynamic> json) => _Services(
  currentPage: (json['current_page'] as num?)?.toInt(),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ServiceEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  firstPageUrl: json['first_page_url'] as String?,
  from: (json['from'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  lastPageUrl: json['last_page_url'] as String?,
  links: (json['links'] as List<dynamic>?)
      ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
      .toList(),
  nextPageUrl: json['next_page_url'],
  path: json['path'] as String?,
  perPage: (json['per_page'] as num?)?.toInt(),
  prevPageUrl: json['prev_page_url'],
  to: (json['to'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$ServicesToJson(_Services instance) => <String, dynamic>{
  'current_page': instance.currentPage,
  'data': instance.data,
  'first_page_url': instance.firstPageUrl,
  'from': instance.from,
  'last_page': instance.lastPage,
  'last_page_url': instance.lastPageUrl,
  'links': instance.links,
  'next_page_url': instance.nextPageUrl,
  'path': instance.path,
  'per_page': instance.perPage,
  'prev_page_url': instance.prevPageUrl,
  'to': instance.to,
  'total': instance.total,
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
    };

_Link _$LinkFromJson(Map<String, dynamic> json) => _Link(
  url: json['url'] as String?,
  label: json['label'] as String?,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$LinkToJson(_Link instance) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};
