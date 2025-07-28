import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_general_data.freezed.dart';
part '../../../generated/domain/models/response/get_store_general_data.g.dart';

@freezed
abstract class GetStoreGeneralData with _$GetStoreGeneralData {
  const factory GetStoreGeneralData({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "location") Location? location,
    @JsonKey(name: "services") Services? services,
    @JsonKey(name: "data") dynamic data,
  }) = _GetStoreGeneralData;

  factory GetStoreGeneralData.fromJson(Map<String, dynamic> json) => _$GetStoreGeneralDataFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({@JsonKey(name: "latitude") dynamic latitude, @JsonKey(name: "longitude") dynamic longitude}) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
abstract class Services with _$Services {
  const factory Services({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<ServiceEntity>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    @JsonKey(name: "links") List<Link>? links,
    @JsonKey(name: "next_page_url") dynamic nextPageUrl,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "total") int? total,
  }) = _Services;

  factory Services.fromJson(Map<String, dynamic> json) => _$ServicesFromJson(json);
}

@freezed
abstract class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "module_name") String? moduleName,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "icon") String? icon,
    @JsonKey(name: "module_type") String? moduleType,
    @JsonKey(name: "icon_full_url") String? iconFullUrl,
    @JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl,
  }) = _ServiceEntity;

  factory ServiceEntity.fromJson(Map<String, dynamic> json) => _$ServiceEntityFromJson(json);
}

@freezed
abstract class Link with _$Link {
  const factory Link({@JsonKey(name: "url") String? url, @JsonKey(name: "label") String? label, @JsonKey(name: "active") bool? active}) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
