// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_user_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfo {

 int get id; String get fName; String get lName; String get phone; String get email; String get latitude; String get longitude; String get image; int get isPhoneVerified; String get emailVerifiedAt; String get createdAt; String get updatedAt; String get cmFirebaseToken; int get status; int get orderCount; String get loginMedium; String get socialId; int get zoneId; int get walletBalance; int get loyaltyPoint; String get refCode; String get currentLanguageKey; String get refBy; String get tempToken; List<dynamic> get moduleIds; int get isEmailVerified; int get isFromPos; String get birthday; String get appearance; String get userinfo; int get memberSinceDays; List<dynamic> get selectedModulesForInterest; bool get isValidForDiscount; int get discountAmount; String get discountAmountType; String get validity; String get imageFullUrl; List<dynamic> get storage;
/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoCopyWith<UserInfo> get copyWith => _$UserInfoCopyWithImpl<UserInfo>(this as UserInfo, _$identity);

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.fName, fName) || other.fName == fName)&&(identical(other.lName, lName) || other.lName == lName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.image, image) || other.image == image)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.cmFirebaseToken, cmFirebaseToken) || other.cmFirebaseToken == cmFirebaseToken)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.loginMedium, loginMedium) || other.loginMedium == loginMedium)&&(identical(other.socialId, socialId) || other.socialId == socialId)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.walletBalance, walletBalance) || other.walletBalance == walletBalance)&&(identical(other.loyaltyPoint, loyaltyPoint) || other.loyaltyPoint == loyaltyPoint)&&(identical(other.refCode, refCode) || other.refCode == refCode)&&(identical(other.currentLanguageKey, currentLanguageKey) || other.currentLanguageKey == currentLanguageKey)&&(identical(other.refBy, refBy) || other.refBy == refBy)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&const DeepCollectionEquality().equals(other.moduleIds, moduleIds)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isFromPos, isFromPos) || other.isFromPos == isFromPos)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.appearance, appearance) || other.appearance == appearance)&&(identical(other.userinfo, userinfo) || other.userinfo == userinfo)&&(identical(other.memberSinceDays, memberSinceDays) || other.memberSinceDays == memberSinceDays)&&const DeepCollectionEquality().equals(other.selectedModulesForInterest, selectedModulesForInterest)&&(identical(other.isValidForDiscount, isValidForDiscount) || other.isValidForDiscount == isValidForDiscount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.discountAmountType, discountAmountType) || other.discountAmountType == discountAmountType)&&(identical(other.validity, validity) || other.validity == validity)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&const DeepCollectionEquality().equals(other.storage, storage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fName,lName,phone,email,latitude,longitude,image,isPhoneVerified,emailVerifiedAt,createdAt,updatedAt,cmFirebaseToken,status,orderCount,loginMedium,socialId,zoneId,walletBalance,loyaltyPoint,refCode,currentLanguageKey,refBy,tempToken,const DeepCollectionEquality().hash(moduleIds),isEmailVerified,isFromPos,birthday,appearance,userinfo,memberSinceDays,const DeepCollectionEquality().hash(selectedModulesForInterest),isValidForDiscount,discountAmount,discountAmountType,validity,imageFullUrl,const DeepCollectionEquality().hash(storage)]);

@override
String toString() {
  return 'UserInfo(id: $id, fName: $fName, lName: $lName, phone: $phone, email: $email, latitude: $latitude, longitude: $longitude, image: $image, isPhoneVerified: $isPhoneVerified, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, cmFirebaseToken: $cmFirebaseToken, status: $status, orderCount: $orderCount, loginMedium: $loginMedium, socialId: $socialId, zoneId: $zoneId, walletBalance: $walletBalance, loyaltyPoint: $loyaltyPoint, refCode: $refCode, currentLanguageKey: $currentLanguageKey, refBy: $refBy, tempToken: $tempToken, moduleIds: $moduleIds, isEmailVerified: $isEmailVerified, isFromPos: $isFromPos, birthday: $birthday, appearance: $appearance, userinfo: $userinfo, memberSinceDays: $memberSinceDays, selectedModulesForInterest: $selectedModulesForInterest, isValidForDiscount: $isValidForDiscount, discountAmount: $discountAmount, discountAmountType: $discountAmountType, validity: $validity, imageFullUrl: $imageFullUrl, storage: $storage)';
}


}

/// @nodoc
abstract mixin class $UserInfoCopyWith<$Res>  {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) _then) = _$UserInfoCopyWithImpl;
@useResult
$Res call({
 int id, String fName, String lName, String phone, String email, String latitude, String longitude, String image, int isPhoneVerified, String emailVerifiedAt, String createdAt, String updatedAt, String cmFirebaseToken, int status, int orderCount, String loginMedium, String socialId, int zoneId, int walletBalance, int loyaltyPoint, String refCode, String currentLanguageKey, String refBy, String tempToken, List<dynamic> moduleIds, int isEmailVerified, int isFromPos, String birthday, String appearance, String userinfo, int memberSinceDays, List<dynamic> selectedModulesForInterest, bool isValidForDiscount, int discountAmount, String discountAmountType, String validity, String imageFullUrl, List<dynamic> storage
});




}
/// @nodoc
class _$UserInfoCopyWithImpl<$Res>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._self, this._then);

  final UserInfo _self;
  final $Res Function(UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fName = null,Object? lName = null,Object? phone = null,Object? email = null,Object? latitude = null,Object? longitude = null,Object? image = null,Object? isPhoneVerified = null,Object? emailVerifiedAt = null,Object? createdAt = null,Object? updatedAt = null,Object? cmFirebaseToken = null,Object? status = null,Object? orderCount = null,Object? loginMedium = null,Object? socialId = null,Object? zoneId = null,Object? walletBalance = null,Object? loyaltyPoint = null,Object? refCode = null,Object? currentLanguageKey = null,Object? refBy = null,Object? tempToken = null,Object? moduleIds = null,Object? isEmailVerified = null,Object? isFromPos = null,Object? birthday = null,Object? appearance = null,Object? userinfo = null,Object? memberSinceDays = null,Object? selectedModulesForInterest = null,Object? isValidForDiscount = null,Object? discountAmount = null,Object? discountAmountType = null,Object? validity = null,Object? imageFullUrl = null,Object? storage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fName: null == fName ? _self.fName : fName // ignore: cast_nullable_to_non_nullable
as String,lName: null == lName ? _self.lName : lName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as int,emailVerifiedAt: null == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,cmFirebaseToken: null == cmFirebaseToken ? _self.cmFirebaseToken : cmFirebaseToken // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,loginMedium: null == loginMedium ? _self.loginMedium : loginMedium // ignore: cast_nullable_to_non_nullable
as String,socialId: null == socialId ? _self.socialId : socialId // ignore: cast_nullable_to_non_nullable
as String,zoneId: null == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int,walletBalance: null == walletBalance ? _self.walletBalance : walletBalance // ignore: cast_nullable_to_non_nullable
as int,loyaltyPoint: null == loyaltyPoint ? _self.loyaltyPoint : loyaltyPoint // ignore: cast_nullable_to_non_nullable
as int,refCode: null == refCode ? _self.refCode : refCode // ignore: cast_nullable_to_non_nullable
as String,currentLanguageKey: null == currentLanguageKey ? _self.currentLanguageKey : currentLanguageKey // ignore: cast_nullable_to_non_nullable
as String,refBy: null == refBy ? _self.refBy : refBy // ignore: cast_nullable_to_non_nullable
as String,tempToken: null == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String,moduleIds: null == moduleIds ? _self.moduleIds : moduleIds // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as int,isFromPos: null == isFromPos ? _self.isFromPos : isFromPos // ignore: cast_nullable_to_non_nullable
as int,birthday: null == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String,appearance: null == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as String,userinfo: null == userinfo ? _self.userinfo : userinfo // ignore: cast_nullable_to_non_nullable
as String,memberSinceDays: null == memberSinceDays ? _self.memberSinceDays : memberSinceDays // ignore: cast_nullable_to_non_nullable
as int,selectedModulesForInterest: null == selectedModulesForInterest ? _self.selectedModulesForInterest : selectedModulesForInterest // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isValidForDiscount: null == isValidForDiscount ? _self.isValidForDiscount : isValidForDiscount // ignore: cast_nullable_to_non_nullable
as bool,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,discountAmountType: null == discountAmountType ? _self.discountAmountType : discountAmountType // ignore: cast_nullable_to_non_nullable
as String,validity: null == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as String,imageFullUrl: null == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _UserInfo implements UserInfo {
  const _UserInfo({this.id = 0, this.fName = '', this.lName = '', this.phone = '', this.email = '', this.latitude = '', this.longitude = '', this.image = '', this.isPhoneVerified = 0, this.emailVerifiedAt = '', this.createdAt = '', this.updatedAt = '', this.cmFirebaseToken = '', this.status = 0, this.orderCount = 0, this.loginMedium = '', this.socialId = '', this.zoneId = 0, this.walletBalance = 0, this.loyaltyPoint = 0, this.refCode = '', this.currentLanguageKey = '', this.refBy = '', this.tempToken = '', final  List<dynamic> moduleIds = const [], this.isEmailVerified = 0, this.isFromPos = 0, this.birthday = '', this.appearance = '', this.userinfo = '', this.memberSinceDays = 0, final  List<dynamic> selectedModulesForInterest = const [], this.isValidForDiscount = false, this.discountAmount = 0, this.discountAmountType = '', this.validity = '', this.imageFullUrl = '', final  List<dynamic> storage = const []}): _moduleIds = moduleIds,_selectedModulesForInterest = selectedModulesForInterest,_storage = storage;
  factory _UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String fName;
@override@JsonKey() final  String lName;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String email;
@override@JsonKey() final  String latitude;
@override@JsonKey() final  String longitude;
@override@JsonKey() final  String image;
@override@JsonKey() final  int isPhoneVerified;
@override@JsonKey() final  String emailVerifiedAt;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;
@override@JsonKey() final  String cmFirebaseToken;
@override@JsonKey() final  int status;
@override@JsonKey() final  int orderCount;
@override@JsonKey() final  String loginMedium;
@override@JsonKey() final  String socialId;
@override@JsonKey() final  int zoneId;
@override@JsonKey() final  int walletBalance;
@override@JsonKey() final  int loyaltyPoint;
@override@JsonKey() final  String refCode;
@override@JsonKey() final  String currentLanguageKey;
@override@JsonKey() final  String refBy;
@override@JsonKey() final  String tempToken;
 final  List<dynamic> _moduleIds;
@override@JsonKey() List<dynamic> get moduleIds {
  if (_moduleIds is EqualUnmodifiableListView) return _moduleIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moduleIds);
}

@override@JsonKey() final  int isEmailVerified;
@override@JsonKey() final  int isFromPos;
@override@JsonKey() final  String birthday;
@override@JsonKey() final  String appearance;
@override@JsonKey() final  String userinfo;
@override@JsonKey() final  int memberSinceDays;
 final  List<dynamic> _selectedModulesForInterest;
@override@JsonKey() List<dynamic> get selectedModulesForInterest {
  if (_selectedModulesForInterest is EqualUnmodifiableListView) return _selectedModulesForInterest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedModulesForInterest);
}

@override@JsonKey() final  bool isValidForDiscount;
@override@JsonKey() final  int discountAmount;
@override@JsonKey() final  String discountAmountType;
@override@JsonKey() final  String validity;
@override@JsonKey() final  String imageFullUrl;
 final  List<dynamic> _storage;
@override@JsonKey() List<dynamic> get storage {
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_storage);
}


/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoCopyWith<_UserInfo> get copyWith => __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.fName, fName) || other.fName == fName)&&(identical(other.lName, lName) || other.lName == lName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.image, image) || other.image == image)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.cmFirebaseToken, cmFirebaseToken) || other.cmFirebaseToken == cmFirebaseToken)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.loginMedium, loginMedium) || other.loginMedium == loginMedium)&&(identical(other.socialId, socialId) || other.socialId == socialId)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.walletBalance, walletBalance) || other.walletBalance == walletBalance)&&(identical(other.loyaltyPoint, loyaltyPoint) || other.loyaltyPoint == loyaltyPoint)&&(identical(other.refCode, refCode) || other.refCode == refCode)&&(identical(other.currentLanguageKey, currentLanguageKey) || other.currentLanguageKey == currentLanguageKey)&&(identical(other.refBy, refBy) || other.refBy == refBy)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&const DeepCollectionEquality().equals(other._moduleIds, _moduleIds)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isFromPos, isFromPos) || other.isFromPos == isFromPos)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.appearance, appearance) || other.appearance == appearance)&&(identical(other.userinfo, userinfo) || other.userinfo == userinfo)&&(identical(other.memberSinceDays, memberSinceDays) || other.memberSinceDays == memberSinceDays)&&const DeepCollectionEquality().equals(other._selectedModulesForInterest, _selectedModulesForInterest)&&(identical(other.isValidForDiscount, isValidForDiscount) || other.isValidForDiscount == isValidForDiscount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.discountAmountType, discountAmountType) || other.discountAmountType == discountAmountType)&&(identical(other.validity, validity) || other.validity == validity)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&const DeepCollectionEquality().equals(other._storage, _storage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fName,lName,phone,email,latitude,longitude,image,isPhoneVerified,emailVerifiedAt,createdAt,updatedAt,cmFirebaseToken,status,orderCount,loginMedium,socialId,zoneId,walletBalance,loyaltyPoint,refCode,currentLanguageKey,refBy,tempToken,const DeepCollectionEquality().hash(_moduleIds),isEmailVerified,isFromPos,birthday,appearance,userinfo,memberSinceDays,const DeepCollectionEquality().hash(_selectedModulesForInterest),isValidForDiscount,discountAmount,discountAmountType,validity,imageFullUrl,const DeepCollectionEquality().hash(_storage)]);

@override
String toString() {
  return 'UserInfo(id: $id, fName: $fName, lName: $lName, phone: $phone, email: $email, latitude: $latitude, longitude: $longitude, image: $image, isPhoneVerified: $isPhoneVerified, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, cmFirebaseToken: $cmFirebaseToken, status: $status, orderCount: $orderCount, loginMedium: $loginMedium, socialId: $socialId, zoneId: $zoneId, walletBalance: $walletBalance, loyaltyPoint: $loyaltyPoint, refCode: $refCode, currentLanguageKey: $currentLanguageKey, refBy: $refBy, tempToken: $tempToken, moduleIds: $moduleIds, isEmailVerified: $isEmailVerified, isFromPos: $isFromPos, birthday: $birthday, appearance: $appearance, userinfo: $userinfo, memberSinceDays: $memberSinceDays, selectedModulesForInterest: $selectedModulesForInterest, isValidForDiscount: $isValidForDiscount, discountAmount: $discountAmount, discountAmountType: $discountAmountType, validity: $validity, imageFullUrl: $imageFullUrl, storage: $storage)';
}


}

/// @nodoc
abstract mixin class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) _then) = __$UserInfoCopyWithImpl;
@override @useResult
$Res call({
 int id, String fName, String lName, String phone, String email, String latitude, String longitude, String image, int isPhoneVerified, String emailVerifiedAt, String createdAt, String updatedAt, String cmFirebaseToken, int status, int orderCount, String loginMedium, String socialId, int zoneId, int walletBalance, int loyaltyPoint, String refCode, String currentLanguageKey, String refBy, String tempToken, List<dynamic> moduleIds, int isEmailVerified, int isFromPos, String birthday, String appearance, String userinfo, int memberSinceDays, List<dynamic> selectedModulesForInterest, bool isValidForDiscount, int discountAmount, String discountAmountType, String validity, String imageFullUrl, List<dynamic> storage
});




}
/// @nodoc
class __$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(this._self, this._then);

  final _UserInfo _self;
  final $Res Function(_UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fName = null,Object? lName = null,Object? phone = null,Object? email = null,Object? latitude = null,Object? longitude = null,Object? image = null,Object? isPhoneVerified = null,Object? emailVerifiedAt = null,Object? createdAt = null,Object? updatedAt = null,Object? cmFirebaseToken = null,Object? status = null,Object? orderCount = null,Object? loginMedium = null,Object? socialId = null,Object? zoneId = null,Object? walletBalance = null,Object? loyaltyPoint = null,Object? refCode = null,Object? currentLanguageKey = null,Object? refBy = null,Object? tempToken = null,Object? moduleIds = null,Object? isEmailVerified = null,Object? isFromPos = null,Object? birthday = null,Object? appearance = null,Object? userinfo = null,Object? memberSinceDays = null,Object? selectedModulesForInterest = null,Object? isValidForDiscount = null,Object? discountAmount = null,Object? discountAmountType = null,Object? validity = null,Object? imageFullUrl = null,Object? storage = null,}) {
  return _then(_UserInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fName: null == fName ? _self.fName : fName // ignore: cast_nullable_to_non_nullable
as String,lName: null == lName ? _self.lName : lName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as int,emailVerifiedAt: null == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,cmFirebaseToken: null == cmFirebaseToken ? _self.cmFirebaseToken : cmFirebaseToken // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,loginMedium: null == loginMedium ? _self.loginMedium : loginMedium // ignore: cast_nullable_to_non_nullable
as String,socialId: null == socialId ? _self.socialId : socialId // ignore: cast_nullable_to_non_nullable
as String,zoneId: null == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int,walletBalance: null == walletBalance ? _self.walletBalance : walletBalance // ignore: cast_nullable_to_non_nullable
as int,loyaltyPoint: null == loyaltyPoint ? _self.loyaltyPoint : loyaltyPoint // ignore: cast_nullable_to_non_nullable
as int,refCode: null == refCode ? _self.refCode : refCode // ignore: cast_nullable_to_non_nullable
as String,currentLanguageKey: null == currentLanguageKey ? _self.currentLanguageKey : currentLanguageKey // ignore: cast_nullable_to_non_nullable
as String,refBy: null == refBy ? _self.refBy : refBy // ignore: cast_nullable_to_non_nullable
as String,tempToken: null == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String,moduleIds: null == moduleIds ? _self._moduleIds : moduleIds // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as int,isFromPos: null == isFromPos ? _self.isFromPos : isFromPos // ignore: cast_nullable_to_non_nullable
as int,birthday: null == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String,appearance: null == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as String,userinfo: null == userinfo ? _self.userinfo : userinfo // ignore: cast_nullable_to_non_nullable
as String,memberSinceDays: null == memberSinceDays ? _self.memberSinceDays : memberSinceDays // ignore: cast_nullable_to_non_nullable
as int,selectedModulesForInterest: null == selectedModulesForInterest ? _self._selectedModulesForInterest : selectedModulesForInterest // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isValidForDiscount: null == isValidForDiscount ? _self.isValidForDiscount : isValidForDiscount // ignore: cast_nullable_to_non_nullable
as bool,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,discountAmountType: null == discountAmountType ? _self.discountAmountType : discountAmountType // ignore: cast_nullable_to_non_nullable
as String,validity: null == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as String,imageFullUrl: null == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
