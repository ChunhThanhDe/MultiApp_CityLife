// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_store_general_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetStoreGeneralData {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'services') Services? get services;@JsonKey(name: 'data') dynamic get data;
/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStoreGeneralDataCopyWith<GetStoreGeneralData> get copyWith => _$GetStoreGeneralDataCopyWithImpl<GetStoreGeneralData>(this as GetStoreGeneralData, _$identity);

  /// Serializes this GetStoreGeneralData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStoreGeneralData&&(identical(other.success, success) || other.success == success)&&(identical(other.services, services) || other.services == services)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,services,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetStoreGeneralData(success: $success, services: $services, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetStoreGeneralDataCopyWith<$Res>  {
  factory $GetStoreGeneralDataCopyWith(GetStoreGeneralData value, $Res Function(GetStoreGeneralData) _then) = _$GetStoreGeneralDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'services') Services? services,@JsonKey(name: 'data') dynamic data
});


$ServicesCopyWith<$Res>? get services;

}
/// @nodoc
class _$GetStoreGeneralDataCopyWithImpl<$Res>
    implements $GetStoreGeneralDataCopyWith<$Res> {
  _$GetStoreGeneralDataCopyWithImpl(this._self, this._then);

  final GetStoreGeneralData _self;
  final $Res Function(GetStoreGeneralData) _then;

/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? services = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as Services?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServicesCopyWith<$Res>? get services {
    if (_self.services == null) {
    return null;
  }

  return $ServicesCopyWith<$Res>(_self.services!, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GetStoreGeneralData implements GetStoreGeneralData {
  const _GetStoreGeneralData({@JsonKey(name: 'success') this.success, @JsonKey(name: 'services') this.services, @JsonKey(name: 'data') this.data});
  factory _GetStoreGeneralData.fromJson(Map<String, dynamic> json) => _$GetStoreGeneralDataFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'services') final  Services? services;
@override@JsonKey(name: 'data') final  dynamic data;

/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStoreGeneralDataCopyWith<_GetStoreGeneralData> get copyWith => __$GetStoreGeneralDataCopyWithImpl<_GetStoreGeneralData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetStoreGeneralDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStoreGeneralData&&(identical(other.success, success) || other.success == success)&&(identical(other.services, services) || other.services == services)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,services,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetStoreGeneralData(success: $success, services: $services, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetStoreGeneralDataCopyWith<$Res> implements $GetStoreGeneralDataCopyWith<$Res> {
  factory _$GetStoreGeneralDataCopyWith(_GetStoreGeneralData value, $Res Function(_GetStoreGeneralData) _then) = __$GetStoreGeneralDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'services') Services? services,@JsonKey(name: 'data') dynamic data
});


@override $ServicesCopyWith<$Res>? get services;

}
/// @nodoc
class __$GetStoreGeneralDataCopyWithImpl<$Res>
    implements _$GetStoreGeneralDataCopyWith<$Res> {
  __$GetStoreGeneralDataCopyWithImpl(this._self, this._then);

  final _GetStoreGeneralData _self;
  final $Res Function(_GetStoreGeneralData) _then;

/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? services = freezed,Object? data = freezed,}) {
  return _then(_GetStoreGeneralData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as Services?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServicesCopyWith<$Res>? get services {
    if (_self.services == null) {
    return null;
  }

  return $ServicesCopyWith<$Res>(_self.services!, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
mixin _$Services {

@JsonKey(name: 'data') List<ServiceEntity>? get data;
/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServicesCopyWith<Services> get copyWith => _$ServicesCopyWithImpl<Services>(this as Services, _$identity);

  /// Serializes this Services to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Services&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'Services(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServicesCopyWith<$Res>  {
  factory $ServicesCopyWith(Services value, $Res Function(Services) _then) = _$ServicesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<ServiceEntity>? data
});




}
/// @nodoc
class _$ServicesCopyWithImpl<$Res>
    implements $ServicesCopyWith<$Res> {
  _$ServicesCopyWithImpl(this._self, this._then);

  final Services _self;
  final $Res Function(Services) _then;

/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Services implements Services {
  const _Services({@JsonKey(name: 'data') final  List<ServiceEntity>? data}): _data = data;
  factory _Services.fromJson(Map<String, dynamic> json) => _$ServicesFromJson(json);

 final  List<ServiceEntity>? _data;
@override@JsonKey(name: 'data') List<ServiceEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServicesCopyWith<_Services> get copyWith => __$ServicesCopyWithImpl<_Services>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServicesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Services&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'Services(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ServicesCopyWith<$Res> implements $ServicesCopyWith<$Res> {
  factory _$ServicesCopyWith(_Services value, $Res Function(_Services) _then) = __$ServicesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<ServiceEntity>? data
});




}
/// @nodoc
class __$ServicesCopyWithImpl<$Res>
    implements _$ServicesCopyWith<$Res> {
  __$ServicesCopyWithImpl(this._self, this._then);

  final _Services _self;
  final $Res Function(_Services) _then;

/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_Services(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>?,
  ));
}


}


/// @nodoc
mixin _$ServiceEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'module_name') String? get moduleName;@JsonKey(name: 'thumbnail') String? get thumbnail;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'module_type') String? get moduleType;@JsonKey(name: 'icon_full_url') String? get iconFullUrl;@JsonKey(name: 'thumbnail_full_url') String? get thumbnailFullUrl;
/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<ServiceEntity> get copyWith => _$ServiceEntityCopyWithImpl<ServiceEntity>(this as ServiceEntity, _$identity);

  /// Serializes this ServiceEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.iconFullUrl, iconFullUrl) || other.iconFullUrl == iconFullUrl)&&(identical(other.thumbnailFullUrl, thumbnailFullUrl) || other.thumbnailFullUrl == thumbnailFullUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleName,thumbnail,icon,moduleType,iconFullUrl,thumbnailFullUrl);

@override
String toString() {
  return 'ServiceEntity(id: $id, moduleName: $moduleName, thumbnail: $thumbnail, icon: $icon, moduleType: $moduleType, iconFullUrl: $iconFullUrl, thumbnailFullUrl: $thumbnailFullUrl)';
}


}

/// @nodoc
abstract mixin class $ServiceEntityCopyWith<$Res>  {
  factory $ServiceEntityCopyWith(ServiceEntity value, $Res Function(ServiceEntity) _then) = _$ServiceEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'module_name') String? moduleName,@JsonKey(name: 'thumbnail') String? thumbnail,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'module_type') String? moduleType,@JsonKey(name: 'icon_full_url') String? iconFullUrl,@JsonKey(name: 'thumbnail_full_url') String? thumbnailFullUrl
});




}
/// @nodoc
class _$ServiceEntityCopyWithImpl<$Res>
    implements $ServiceEntityCopyWith<$Res> {
  _$ServiceEntityCopyWithImpl(this._self, this._then);

  final ServiceEntity _self;
  final $Res Function(ServiceEntity) _then;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? moduleName = freezed,Object? thumbnail = freezed,Object? icon = freezed,Object? moduleType = freezed,Object? iconFullUrl = freezed,Object? thumbnailFullUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,iconFullUrl: freezed == iconFullUrl ? _self.iconFullUrl : iconFullUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailFullUrl: freezed == thumbnailFullUrl ? _self.thumbnailFullUrl : thumbnailFullUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ServiceEntity implements ServiceEntity {
  const _ServiceEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'module_name') this.moduleName, @JsonKey(name: 'thumbnail') this.thumbnail, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'module_type') this.moduleType, @JsonKey(name: 'icon_full_url') this.iconFullUrl, @JsonKey(name: 'thumbnail_full_url') this.thumbnailFullUrl});
  factory _ServiceEntity.fromJson(Map<String, dynamic> json) => _$ServiceEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'module_name') final  String? moduleName;
@override@JsonKey(name: 'thumbnail') final  String? thumbnail;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'module_type') final  String? moduleType;
@override@JsonKey(name: 'icon_full_url') final  String? iconFullUrl;
@override@JsonKey(name: 'thumbnail_full_url') final  String? thumbnailFullUrl;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceEntityCopyWith<_ServiceEntity> get copyWith => __$ServiceEntityCopyWithImpl<_ServiceEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.iconFullUrl, iconFullUrl) || other.iconFullUrl == iconFullUrl)&&(identical(other.thumbnailFullUrl, thumbnailFullUrl) || other.thumbnailFullUrl == thumbnailFullUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleName,thumbnail,icon,moduleType,iconFullUrl,thumbnailFullUrl);

@override
String toString() {
  return 'ServiceEntity(id: $id, moduleName: $moduleName, thumbnail: $thumbnail, icon: $icon, moduleType: $moduleType, iconFullUrl: $iconFullUrl, thumbnailFullUrl: $thumbnailFullUrl)';
}


}

/// @nodoc
abstract mixin class _$ServiceEntityCopyWith<$Res> implements $ServiceEntityCopyWith<$Res> {
  factory _$ServiceEntityCopyWith(_ServiceEntity value, $Res Function(_ServiceEntity) _then) = __$ServiceEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'module_name') String? moduleName,@JsonKey(name: 'thumbnail') String? thumbnail,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'module_type') String? moduleType,@JsonKey(name: 'icon_full_url') String? iconFullUrl,@JsonKey(name: 'thumbnail_full_url') String? thumbnailFullUrl
});




}
/// @nodoc
class __$ServiceEntityCopyWithImpl<$Res>
    implements _$ServiceEntityCopyWith<$Res> {
  __$ServiceEntityCopyWithImpl(this._self, this._then);

  final _ServiceEntity _self;
  final $Res Function(_ServiceEntity) _then;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? moduleName = freezed,Object? thumbnail = freezed,Object? icon = freezed,Object? moduleType = freezed,Object? iconFullUrl = freezed,Object? thumbnailFullUrl = freezed,}) {
  return _then(_ServiceEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,iconFullUrl: freezed == iconFullUrl ? _self.iconFullUrl : iconFullUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailFullUrl: freezed == thumbnailFullUrl ? _self.thumbnailFullUrl : thumbnailFullUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
