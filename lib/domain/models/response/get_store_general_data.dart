import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_general_data.freezed.dart';
part '../../../generated/domain/models/response/get_store_general_data.g.dart';

@freezed
abstract class GetStoreGeneralData with _$GetStoreGeneralData {
  const factory GetStoreGeneralData({@JsonKey(name: 'success') bool? success, @JsonKey(name: 'services') Services? services, @JsonKey(name: 'data') dynamic data}) = _GetStoreGeneralData;

  factory GetStoreGeneralData.fromJson(Map<String, dynamic> json) => _$GetStoreGeneralDataFromJson(json);
}

@freezed
abstract class Services with _$Services {
  const factory Services({@JsonKey(name: 'data') List<ServiceEntity>? data}) = _Services;

  factory Services.fromJson(Map<String, dynamic> json) => _$ServicesFromJson(json);
}

@freezed
abstract class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'module_name') String? moduleName,
    @JsonKey(name: 'thumbnail') String? thumbnail,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'module_type') String? moduleType,
    @JsonKey(name: 'icon_full_url') String? iconFullUrl,
    @JsonKey(name: 'thumbnail_full_url') String? thumbnailFullUrl,
  }) = _ServiceEntity;

  factory ServiceEntity.fromJson(Map<String, dynamic> json) => _$ServiceEntityFromJson(json);
}
