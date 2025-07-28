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

@JsonKey(name: "success") bool? get success;@JsonKey(name: "location") Location? get location;@JsonKey(name: "services") Services? get services;@JsonKey(name: "data") dynamic get data;
/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStoreGeneralDataCopyWith<GetStoreGeneralData> get copyWith => _$GetStoreGeneralDataCopyWithImpl<GetStoreGeneralData>(this as GetStoreGeneralData, _$identity);

  /// Serializes this GetStoreGeneralData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStoreGeneralData&&(identical(other.success, success) || other.success == success)&&(identical(other.location, location) || other.location == location)&&(identical(other.services, services) || other.services == services)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,location,services,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetStoreGeneralData(success: $success, location: $location, services: $services, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetStoreGeneralDataCopyWith<$Res>  {
  factory $GetStoreGeneralDataCopyWith(GetStoreGeneralData value, $Res Function(GetStoreGeneralData) _then) = _$GetStoreGeneralDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool? success,@JsonKey(name: "location") Location? location,@JsonKey(name: "services") Services? services,@JsonKey(name: "data") dynamic data
});


$LocationCopyWith<$Res>? get location;$ServicesCopyWith<$Res>? get services;

}
/// @nodoc
class _$GetStoreGeneralDataCopyWithImpl<$Res>
    implements $GetStoreGeneralDataCopyWith<$Res> {
  _$GetStoreGeneralDataCopyWithImpl(this._self, this._then);

  final GetStoreGeneralData _self;
  final $Res Function(GetStoreGeneralData) _then;

/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? location = freezed,Object? services = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as Services?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of GetStoreGeneralData
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
  const _GetStoreGeneralData({@JsonKey(name: "success") this.success, @JsonKey(name: "location") this.location, @JsonKey(name: "services") this.services, @JsonKey(name: "data") this.data});
  factory _GetStoreGeneralData.fromJson(Map<String, dynamic> json) => _$GetStoreGeneralDataFromJson(json);

@override@JsonKey(name: "success") final  bool? success;
@override@JsonKey(name: "location") final  Location? location;
@override@JsonKey(name: "services") final  Services? services;
@override@JsonKey(name: "data") final  dynamic data;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStoreGeneralData&&(identical(other.success, success) || other.success == success)&&(identical(other.location, location) || other.location == location)&&(identical(other.services, services) || other.services == services)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,location,services,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetStoreGeneralData(success: $success, location: $location, services: $services, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetStoreGeneralDataCopyWith<$Res> implements $GetStoreGeneralDataCopyWith<$Res> {
  factory _$GetStoreGeneralDataCopyWith(_GetStoreGeneralData value, $Res Function(_GetStoreGeneralData) _then) = __$GetStoreGeneralDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool? success,@JsonKey(name: "location") Location? location,@JsonKey(name: "services") Services? services,@JsonKey(name: "data") dynamic data
});


@override $LocationCopyWith<$Res>? get location;@override $ServicesCopyWith<$Res>? get services;

}
/// @nodoc
class __$GetStoreGeneralDataCopyWithImpl<$Res>
    implements _$GetStoreGeneralDataCopyWith<$Res> {
  __$GetStoreGeneralDataCopyWithImpl(this._self, this._then);

  final _GetStoreGeneralData _self;
  final $Res Function(_GetStoreGeneralData) _then;

/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? location = freezed,Object? services = freezed,Object? data = freezed,}) {
  return _then(_GetStoreGeneralData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as Services?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of GetStoreGeneralData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of GetStoreGeneralData
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
mixin _$Location {

@JsonKey(name: "latitude") dynamic get latitude;@JsonKey(name: "longitude") dynamic get longitude;
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Location&&const DeepCollectionEquality().equals(other.latitude, latitude)&&const DeepCollectionEquality().equals(other.longitude, longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(latitude),const DeepCollectionEquality().hash(longitude));

@override
String toString() {
  return 'Location(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res>  {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) = _$LocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "latitude") dynamic latitude,@JsonKey(name: "longitude") dynamic longitude
});




}
/// @nodoc
class _$LocationCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as dynamic,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Location implements Location {
  const _Location({@JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude});
  factory _Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

@override@JsonKey(name: "latitude") final  dynamic latitude;
@override@JsonKey(name: "longitude") final  dynamic longitude;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&const DeepCollectionEquality().equals(other.latitude, latitude)&&const DeepCollectionEquality().equals(other.longitude, longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(latitude),const DeepCollectionEquality().hash(longitude));

@override
String toString() {
  return 'Location(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "latitude") dynamic latitude,@JsonKey(name: "longitude") dynamic longitude
});




}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_Location(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as dynamic,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$Services {

@JsonKey(name: "current_page") int? get currentPage;@JsonKey(name: "data") List<ServiceEntity>? get data;@JsonKey(name: "first_page_url") String? get firstPageUrl;@JsonKey(name: "from") int? get from;@JsonKey(name: "last_page") int? get lastPage;@JsonKey(name: "last_page_url") String? get lastPageUrl;@JsonKey(name: "links") List<Link>? get links;@JsonKey(name: "next_page_url") dynamic get nextPageUrl;@JsonKey(name: "path") String? get path;@JsonKey(name: "per_page") int? get perPage;@JsonKey(name: "prev_page_url") dynamic get prevPageUrl;@JsonKey(name: "to") int? get to;@JsonKey(name: "total") int? get total;
/// Create a copy of Services
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServicesCopyWith<Services> get copyWith => _$ServicesCopyWithImpl<Services>(this as Services, _$identity);

  /// Serializes this Services to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Services&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&const DeepCollectionEquality().equals(other.links, links)&&const DeepCollectionEquality().equals(other.nextPageUrl, nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(data),firstPageUrl,from,lastPage,lastPageUrl,const DeepCollectionEquality().hash(links),const DeepCollectionEquality().hash(nextPageUrl),path,perPage,const DeepCollectionEquality().hash(prevPageUrl),to,total);

@override
String toString() {
  return 'Services(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $ServicesCopyWith<$Res>  {
  factory $ServicesCopyWith(Services value, $Res Function(Services) _then) = _$ServicesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "current_page") int? currentPage,@JsonKey(name: "data") List<ServiceEntity>? data,@JsonKey(name: "first_page_url") String? firstPageUrl,@JsonKey(name: "from") int? from,@JsonKey(name: "last_page") int? lastPage,@JsonKey(name: "last_page_url") String? lastPageUrl,@JsonKey(name: "links") List<Link>? links,@JsonKey(name: "next_page_url") dynamic nextPageUrl,@JsonKey(name: "path") String? path,@JsonKey(name: "per_page") int? perPage,@JsonKey(name: "prev_page_url") dynamic prevPageUrl,@JsonKey(name: "to") int? to,@JsonKey(name: "total") int? total
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
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? links = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<Link>?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Services implements Services {
  const _Services({@JsonKey(name: "current_page") this.currentPage, @JsonKey(name: "data") final  List<ServiceEntity>? data, @JsonKey(name: "first_page_url") this.firstPageUrl, @JsonKey(name: "from") this.from, @JsonKey(name: "last_page") this.lastPage, @JsonKey(name: "last_page_url") this.lastPageUrl, @JsonKey(name: "links") final  List<Link>? links, @JsonKey(name: "next_page_url") this.nextPageUrl, @JsonKey(name: "path") this.path, @JsonKey(name: "per_page") this.perPage, @JsonKey(name: "prev_page_url") this.prevPageUrl, @JsonKey(name: "to") this.to, @JsonKey(name: "total") this.total}): _data = data,_links = links;
  factory _Services.fromJson(Map<String, dynamic> json) => _$ServicesFromJson(json);

@override@JsonKey(name: "current_page") final  int? currentPage;
 final  List<ServiceEntity>? _data;
@override@JsonKey(name: "data") List<ServiceEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "first_page_url") final  String? firstPageUrl;
@override@JsonKey(name: "from") final  int? from;
@override@JsonKey(name: "last_page") final  int? lastPage;
@override@JsonKey(name: "last_page_url") final  String? lastPageUrl;
 final  List<Link>? _links;
@override@JsonKey(name: "links") List<Link>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "next_page_url") final  dynamic nextPageUrl;
@override@JsonKey(name: "path") final  String? path;
@override@JsonKey(name: "per_page") final  int? perPage;
@override@JsonKey(name: "prev_page_url") final  dynamic prevPageUrl;
@override@JsonKey(name: "to") final  int? to;
@override@JsonKey(name: "total") final  int? total;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Services&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&const DeepCollectionEquality().equals(other._links, _links)&&const DeepCollectionEquality().equals(other.nextPageUrl, nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(_data),firstPageUrl,from,lastPage,lastPageUrl,const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(nextPageUrl),path,perPage,const DeepCollectionEquality().hash(prevPageUrl),to,total);

@override
String toString() {
  return 'Services(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ServicesCopyWith<$Res> implements $ServicesCopyWith<$Res> {
  factory _$ServicesCopyWith(_Services value, $Res Function(_Services) _then) = __$ServicesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "current_page") int? currentPage,@JsonKey(name: "data") List<ServiceEntity>? data,@JsonKey(name: "first_page_url") String? firstPageUrl,@JsonKey(name: "from") int? from,@JsonKey(name: "last_page") int? lastPage,@JsonKey(name: "last_page_url") String? lastPageUrl,@JsonKey(name: "links") List<Link>? links,@JsonKey(name: "next_page_url") dynamic nextPageUrl,@JsonKey(name: "path") String? path,@JsonKey(name: "per_page") int? perPage,@JsonKey(name: "prev_page_url") dynamic prevPageUrl,@JsonKey(name: "to") int? to,@JsonKey(name: "total") int? total
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
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? links = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_Services(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<Link>?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ServiceEntity {

@JsonKey(name: "id") int? get id;@JsonKey(name: "module_name") String? get moduleName;@JsonKey(name: "thumbnail") String? get thumbnail;@JsonKey(name: "icon") String? get icon;@JsonKey(name: "module_type") String? get moduleType;@JsonKey(name: "icon_full_url") String? get iconFullUrl;@JsonKey(name: "thumbnail_full_url") String? get thumbnailFullUrl;
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
@JsonKey(name: "id") int? id,@JsonKey(name: "module_name") String? moduleName,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "icon") String? icon,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "icon_full_url") String? iconFullUrl,@JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl
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
  const _ServiceEntity({@JsonKey(name: "id") this.id, @JsonKey(name: "module_name") this.moduleName, @JsonKey(name: "thumbnail") this.thumbnail, @JsonKey(name: "icon") this.icon, @JsonKey(name: "module_type") this.moduleType, @JsonKey(name: "icon_full_url") this.iconFullUrl, @JsonKey(name: "thumbnail_full_url") this.thumbnailFullUrl});
  factory _ServiceEntity.fromJson(Map<String, dynamic> json) => _$ServiceEntityFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "module_name") final  String? moduleName;
@override@JsonKey(name: "thumbnail") final  String? thumbnail;
@override@JsonKey(name: "icon") final  String? icon;
@override@JsonKey(name: "module_type") final  String? moduleType;
@override@JsonKey(name: "icon_full_url") final  String? iconFullUrl;
@override@JsonKey(name: "thumbnail_full_url") final  String? thumbnailFullUrl;

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
@JsonKey(name: "id") int? id,@JsonKey(name: "module_name") String? moduleName,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "icon") String? icon,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "icon_full_url") String? iconFullUrl,@JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl
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


/// @nodoc
mixin _$Link {

@JsonKey(name: "url") String? get url;@JsonKey(name: "label") String? get label;@JsonKey(name: "active") bool? get active;
/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkCopyWith<Link> get copyWith => _$LinkCopyWithImpl<Link>(this as Link, _$identity);

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Link&&(identical(other.url, url) || other.url == url)&&(identical(other.label, label) || other.label == label)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,label,active);

@override
String toString() {
  return 'Link(url: $url, label: $label, active: $active)';
}


}

/// @nodoc
abstract mixin class $LinkCopyWith<$Res>  {
  factory $LinkCopyWith(Link value, $Res Function(Link) _then) = _$LinkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "url") String? url,@JsonKey(name: "label") String? label,@JsonKey(name: "active") bool? active
});




}
/// @nodoc
class _$LinkCopyWithImpl<$Res>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._self, this._then);

  final Link _self;
  final $Res Function(Link) _then;

/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? label = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Link implements Link {
  const _Link({@JsonKey(name: "url") this.url, @JsonKey(name: "label") this.label, @JsonKey(name: "active") this.active});
  factory _Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

@override@JsonKey(name: "url") final  String? url;
@override@JsonKey(name: "label") final  String? label;
@override@JsonKey(name: "active") final  bool? active;

/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkCopyWith<_Link> get copyWith => __$LinkCopyWithImpl<_Link>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Link&&(identical(other.url, url) || other.url == url)&&(identical(other.label, label) || other.label == label)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,label,active);

@override
String toString() {
  return 'Link(url: $url, label: $label, active: $active)';
}


}

/// @nodoc
abstract mixin class _$LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$LinkCopyWith(_Link value, $Res Function(_Link) _then) = __$LinkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "url") String? url,@JsonKey(name: "label") String? label,@JsonKey(name: "active") bool? active
});




}
/// @nodoc
class __$LinkCopyWithImpl<$Res>
    implements _$LinkCopyWith<$Res> {
  __$LinkCopyWithImpl(this._self, this._then);

  final _Link _self;
  final $Res Function(_Link) _then;

/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? label = freezed,Object? active = freezed,}) {
  return _then(_Link(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
