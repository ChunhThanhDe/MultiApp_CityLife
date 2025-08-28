// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/models/response/payment/biti_verify_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BitiVerifyResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'code') int get code;@JsonKey(name: 'payload') BitiVerifyPayload? get payload;@JsonKey(name: 'message') String? get message;
/// Create a copy of BitiVerifyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiVerifyResponseCopyWith<BitiVerifyResponse> get copyWith => _$BitiVerifyResponseCopyWithImpl<BitiVerifyResponse>(this as BitiVerifyResponse, _$identity);

  /// Serializes this BitiVerifyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiVerifyResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,payload,message);

@override
String toString() {
  return 'BitiVerifyResponse(status: $status, code: $code, payload: $payload, message: $message)';
}


}

/// @nodoc
abstract mixin class $BitiVerifyResponseCopyWith<$Res>  {
  factory $BitiVerifyResponseCopyWith(BitiVerifyResponse value, $Res Function(BitiVerifyResponse) _then) = _$BitiVerifyResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'code') int code,@JsonKey(name: 'payload') BitiVerifyPayload? payload,@JsonKey(name: 'message') String? message
});


$BitiVerifyPayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class _$BitiVerifyResponseCopyWithImpl<$Res>
    implements $BitiVerifyResponseCopyWith<$Res> {
  _$BitiVerifyResponseCopyWithImpl(this._self, this._then);

  final BitiVerifyResponse _self;
  final $Res Function(BitiVerifyResponse) _then;

/// Create a copy of BitiVerifyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? payload = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as BitiVerifyPayload?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BitiVerifyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiVerifyPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $BitiVerifyPayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BitiVerifyResponse implements BitiVerifyResponse {
  const _BitiVerifyResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'code') required this.code, @JsonKey(name: 'payload') this.payload, @JsonKey(name: 'message') this.message});
  factory _BitiVerifyResponse.fromJson(Map<String, dynamic> json) => _$BitiVerifyResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'code') final  int code;
@override@JsonKey(name: 'payload') final  BitiVerifyPayload? payload;
@override@JsonKey(name: 'message') final  String? message;

/// Create a copy of BitiVerifyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BitiVerifyResponseCopyWith<_BitiVerifyResponse> get copyWith => __$BitiVerifyResponseCopyWithImpl<_BitiVerifyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BitiVerifyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiVerifyResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,payload,message);

@override
String toString() {
  return 'BitiVerifyResponse(status: $status, code: $code, payload: $payload, message: $message)';
}


}

/// @nodoc
abstract mixin class _$BitiVerifyResponseCopyWith<$Res> implements $BitiVerifyResponseCopyWith<$Res> {
  factory _$BitiVerifyResponseCopyWith(_BitiVerifyResponse value, $Res Function(_BitiVerifyResponse) _then) = __$BitiVerifyResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'code') int code,@JsonKey(name: 'payload') BitiVerifyPayload? payload,@JsonKey(name: 'message') String? message
});


@override $BitiVerifyPayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class __$BitiVerifyResponseCopyWithImpl<$Res>
    implements _$BitiVerifyResponseCopyWith<$Res> {
  __$BitiVerifyResponseCopyWithImpl(this._self, this._then);

  final _BitiVerifyResponse _self;
  final $Res Function(_BitiVerifyResponse) _then;

/// Create a copy of BitiVerifyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? payload = freezed,Object? message = freezed,}) {
  return _then(_BitiVerifyResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as BitiVerifyPayload?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BitiVerifyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiVerifyPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $BitiVerifyPayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// @nodoc
mixin _$BitiVerifyPayload {

@JsonKey(name: 'transaction_id') String get transactionId;@JsonKey(name: 'amount') double get amount;@JsonKey(name: 'currency') String get currency;@JsonKey(name: 'status') String get status;@JsonKey(name: 'customer_data') BitiCustomerData? get customerData;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'fee') double? get fee;@JsonKey(name: 'net_amount') double? get netAmount;
/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiVerifyPayloadCopyWith<BitiVerifyPayload> get copyWith => _$BitiVerifyPayloadCopyWithImpl<BitiVerifyPayload>(this as BitiVerifyPayload, _$identity);

  /// Serializes this BitiVerifyPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiVerifyPayload&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.customerData, customerData) || other.customerData == customerData)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,amount,currency,status,customerData,createdAt,updatedAt,fee,netAmount);

@override
String toString() {
  return 'BitiVerifyPayload(transactionId: $transactionId, amount: $amount, currency: $currency, status: $status, customerData: $customerData, createdAt: $createdAt, updatedAt: $updatedAt, fee: $fee, netAmount: $netAmount)';
}


}

/// @nodoc
abstract mixin class $BitiVerifyPayloadCopyWith<$Res>  {
  factory $BitiVerifyPayloadCopyWith(BitiVerifyPayload value, $Res Function(BitiVerifyPayload) _then) = _$BitiVerifyPayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'status') String status,@JsonKey(name: 'customer_data') BitiCustomerData? customerData,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'fee') double? fee,@JsonKey(name: 'net_amount') double? netAmount
});


$BitiCustomerDataCopyWith<$Res>? get customerData;

}
/// @nodoc
class _$BitiVerifyPayloadCopyWithImpl<$Res>
    implements $BitiVerifyPayloadCopyWith<$Res> {
  _$BitiVerifyPayloadCopyWithImpl(this._self, this._then);

  final BitiVerifyPayload _self;
  final $Res Function(BitiVerifyPayload) _then;

/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? amount = null,Object? currency = null,Object? status = null,Object? customerData = freezed,Object? createdAt = null,Object? updatedAt = null,Object? fee = freezed,Object? netAmount = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,customerData: freezed == customerData ? _self.customerData : customerData // ignore: cast_nullable_to_non_nullable
as BitiCustomerData?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiCustomerDataCopyWith<$Res>? get customerData {
    if (_self.customerData == null) {
    return null;
  }

  return $BitiCustomerDataCopyWith<$Res>(_self.customerData!, (value) {
    return _then(_self.copyWith(customerData: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BitiVerifyPayload implements BitiVerifyPayload {
  const _BitiVerifyPayload({@JsonKey(name: 'transaction_id') required this.transactionId, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'currency') required this.currency, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'customer_data') this.customerData, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'fee') this.fee, @JsonKey(name: 'net_amount') this.netAmount});
  factory _BitiVerifyPayload.fromJson(Map<String, dynamic> json) => _$BitiVerifyPayloadFromJson(json);

@override@JsonKey(name: 'transaction_id') final  String transactionId;
@override@JsonKey(name: 'amount') final  double amount;
@override@JsonKey(name: 'currency') final  String currency;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'customer_data') final  BitiCustomerData? customerData;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'fee') final  double? fee;
@override@JsonKey(name: 'net_amount') final  double? netAmount;

/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BitiVerifyPayloadCopyWith<_BitiVerifyPayload> get copyWith => __$BitiVerifyPayloadCopyWithImpl<_BitiVerifyPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BitiVerifyPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiVerifyPayload&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.customerData, customerData) || other.customerData == customerData)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,amount,currency,status,customerData,createdAt,updatedAt,fee,netAmount);

@override
String toString() {
  return 'BitiVerifyPayload(transactionId: $transactionId, amount: $amount, currency: $currency, status: $status, customerData: $customerData, createdAt: $createdAt, updatedAt: $updatedAt, fee: $fee, netAmount: $netAmount)';
}


}

/// @nodoc
abstract mixin class _$BitiVerifyPayloadCopyWith<$Res> implements $BitiVerifyPayloadCopyWith<$Res> {
  factory _$BitiVerifyPayloadCopyWith(_BitiVerifyPayload value, $Res Function(_BitiVerifyPayload) _then) = __$BitiVerifyPayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'status') String status,@JsonKey(name: 'customer_data') BitiCustomerData? customerData,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'fee') double? fee,@JsonKey(name: 'net_amount') double? netAmount
});


@override $BitiCustomerDataCopyWith<$Res>? get customerData;

}
/// @nodoc
class __$BitiVerifyPayloadCopyWithImpl<$Res>
    implements _$BitiVerifyPayloadCopyWith<$Res> {
  __$BitiVerifyPayloadCopyWithImpl(this._self, this._then);

  final _BitiVerifyPayload _self;
  final $Res Function(_BitiVerifyPayload) _then;

/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? amount = null,Object? currency = null,Object? status = null,Object? customerData = freezed,Object? createdAt = null,Object? updatedAt = null,Object? fee = freezed,Object? netAmount = freezed,}) {
  return _then(_BitiVerifyPayload(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,customerData: freezed == customerData ? _self.customerData : customerData // ignore: cast_nullable_to_non_nullable
as BitiCustomerData?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiCustomerDataCopyWith<$Res>? get customerData {
    if (_self.customerData == null) {
    return null;
  }

  return $BitiCustomerDataCopyWith<$Res>(_self.customerData!, (value) {
    return _then(_self.copyWith(customerData: value));
  });
}
}


/// @nodoc
mixin _$BitiCustomerData {

@JsonKey(name: 'email') String? get email;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'name') String? get name;
/// Create a copy of BitiCustomerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiCustomerDataCopyWith<BitiCustomerData> get copyWith => _$BitiCustomerDataCopyWithImpl<BitiCustomerData>(this as BitiCustomerData, _$identity);

  /// Serializes this BitiCustomerData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiCustomerData&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,phone,name);

@override
String toString() {
  return 'BitiCustomerData(email: $email, phone: $phone, name: $name)';
}


}

/// @nodoc
abstract mixin class $BitiCustomerDataCopyWith<$Res>  {
  factory $BitiCustomerDataCopyWith(BitiCustomerData value, $Res Function(BitiCustomerData) _then) = _$BitiCustomerDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$BitiCustomerDataCopyWithImpl<$Res>
    implements $BitiCustomerDataCopyWith<$Res> {
  _$BitiCustomerDataCopyWithImpl(this._self, this._then);

  final BitiCustomerData _self;
  final $Res Function(BitiCustomerData) _then;

/// Create a copy of BitiCustomerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? phone = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BitiCustomerData implements BitiCustomerData {
  const _BitiCustomerData({@JsonKey(name: 'email') this.email, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'name') this.name});
  factory _BitiCustomerData.fromJson(Map<String, dynamic> json) => _$BitiCustomerDataFromJson(json);

@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of BitiCustomerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BitiCustomerDataCopyWith<_BitiCustomerData> get copyWith => __$BitiCustomerDataCopyWithImpl<_BitiCustomerData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BitiCustomerDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiCustomerData&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,phone,name);

@override
String toString() {
  return 'BitiCustomerData(email: $email, phone: $phone, name: $name)';
}


}

/// @nodoc
abstract mixin class _$BitiCustomerDataCopyWith<$Res> implements $BitiCustomerDataCopyWith<$Res> {
  factory _$BitiCustomerDataCopyWith(_BitiCustomerData value, $Res Function(_BitiCustomerData) _then) = __$BitiCustomerDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$BitiCustomerDataCopyWithImpl<$Res>
    implements _$BitiCustomerDataCopyWith<$Res> {
  __$BitiCustomerDataCopyWithImpl(this._self, this._then);

  final _BitiCustomerData _self;
  final $Res Function(_BitiCustomerData) _then;

/// Create a copy of BitiCustomerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? phone = freezed,Object? name = freezed,}) {
  return _then(_BitiCustomerData(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
