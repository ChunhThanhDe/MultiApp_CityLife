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

@JsonKey(name: 'status') bool get status;@JsonKey(name: 'code') String get code;@JsonKey(name: 'payload') BitiVerifyPayload? get payload;@JsonKey(name: 'message') String? get message;
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
@JsonKey(name: 'status') bool status,@JsonKey(name: 'code') String code,@JsonKey(name: 'payload') BitiVerifyPayload? payload,@JsonKey(name: 'message') String? message
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
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
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

@override@JsonKey(name: 'status') final  bool status;
@override@JsonKey(name: 'code') final  String code;
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
@JsonKey(name: 'status') bool status,@JsonKey(name: 'code') String code,@JsonKey(name: 'payload') BitiVerifyPayload? payload,@JsonKey(name: 'message') String? message
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
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
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

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'trx_id') String? get trxId;@JsonKey(name: 'client_reference_id') String? get clientReferenceId;@JsonKey(name: 'merchant') String? get merchant;@JsonKey(name: 'currency') String? get currency;@JsonKey(name: 'amount') double? get amount;@JsonKey(name: 'fee') double? get fee;@JsonKey(name: 'net_amount') double? get netAmount;@JsonKey(name: 'customer') BitiCustomerData? get customer;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'message') String? get message;
/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiVerifyPayloadCopyWith<BitiVerifyPayload> get copyWith => _$BitiVerifyPayloadCopyWithImpl<BitiVerifyPayload>(this as BitiVerifyPayload, _$identity);

  /// Serializes this BitiVerifyPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiVerifyPayload&&(identical(other.status, status) || other.status == status)&&(identical(other.trxId, trxId) || other.trxId == trxId)&&(identical(other.clientReferenceId, clientReferenceId) || other.clientReferenceId == clientReferenceId)&&(identical(other.merchant, merchant) || other.merchant == merchant)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,trxId,clientReferenceId,merchant,currency,amount,fee,netAmount,customer,description,createdAt,updatedAt,message);

@override
String toString() {
  return 'BitiVerifyPayload(status: $status, trxId: $trxId, clientReferenceId: $clientReferenceId, merchant: $merchant, currency: $currency, amount: $amount, fee: $fee, netAmount: $netAmount, customer: $customer, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, message: $message)';
}


}

/// @nodoc
abstract mixin class $BitiVerifyPayloadCopyWith<$Res>  {
  factory $BitiVerifyPayloadCopyWith(BitiVerifyPayload value, $Res Function(BitiVerifyPayload) _then) = _$BitiVerifyPayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'trx_id') String? trxId,@JsonKey(name: 'client_reference_id') String? clientReferenceId,@JsonKey(name: 'merchant') String? merchant,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'fee') double? fee,@JsonKey(name: 'net_amount') double? netAmount,@JsonKey(name: 'customer') BitiCustomerData? customer,@JsonKey(name: 'description') String? description,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'message') String? message
});


$BitiCustomerDataCopyWith<$Res>? get customer;

}
/// @nodoc
class _$BitiVerifyPayloadCopyWithImpl<$Res>
    implements $BitiVerifyPayloadCopyWith<$Res> {
  _$BitiVerifyPayloadCopyWithImpl(this._self, this._then);

  final BitiVerifyPayload _self;
  final $Res Function(BitiVerifyPayload) _then;

/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? trxId = freezed,Object? clientReferenceId = freezed,Object? merchant = freezed,Object? currency = freezed,Object? amount = freezed,Object? fee = freezed,Object? netAmount = freezed,Object? customer = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,trxId: freezed == trxId ? _self.trxId : trxId // ignore: cast_nullable_to_non_nullable
as String?,clientReferenceId: freezed == clientReferenceId ? _self.clientReferenceId : clientReferenceId // ignore: cast_nullable_to_non_nullable
as String?,merchant: freezed == merchant ? _self.merchant : merchant // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as BitiCustomerData?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiCustomerDataCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $BitiCustomerDataCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BitiVerifyPayload implements BitiVerifyPayload {
  const _BitiVerifyPayload({@JsonKey(name: 'status') this.status, @JsonKey(name: 'trx_id') this.trxId, @JsonKey(name: 'client_reference_id') this.clientReferenceId, @JsonKey(name: 'merchant') this.merchant, @JsonKey(name: 'currency') this.currency, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'fee') this.fee, @JsonKey(name: 'net_amount') this.netAmount, @JsonKey(name: 'customer') this.customer, @JsonKey(name: 'description') this.description, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'message') this.message});
  factory _BitiVerifyPayload.fromJson(Map<String, dynamic> json) => _$BitiVerifyPayloadFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'trx_id') final  String? trxId;
@override@JsonKey(name: 'client_reference_id') final  String? clientReferenceId;
@override@JsonKey(name: 'merchant') final  String? merchant;
@override@JsonKey(name: 'currency') final  String? currency;
@override@JsonKey(name: 'amount') final  double? amount;
@override@JsonKey(name: 'fee') final  double? fee;
@override@JsonKey(name: 'net_amount') final  double? netAmount;
@override@JsonKey(name: 'customer') final  BitiCustomerData? customer;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'message') final  String? message;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiVerifyPayload&&(identical(other.status, status) || other.status == status)&&(identical(other.trxId, trxId) || other.trxId == trxId)&&(identical(other.clientReferenceId, clientReferenceId) || other.clientReferenceId == clientReferenceId)&&(identical(other.merchant, merchant) || other.merchant == merchant)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,trxId,clientReferenceId,merchant,currency,amount,fee,netAmount,customer,description,createdAt,updatedAt,message);

@override
String toString() {
  return 'BitiVerifyPayload(status: $status, trxId: $trxId, clientReferenceId: $clientReferenceId, merchant: $merchant, currency: $currency, amount: $amount, fee: $fee, netAmount: $netAmount, customer: $customer, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, message: $message)';
}


}

/// @nodoc
abstract mixin class _$BitiVerifyPayloadCopyWith<$Res> implements $BitiVerifyPayloadCopyWith<$Res> {
  factory _$BitiVerifyPayloadCopyWith(_BitiVerifyPayload value, $Res Function(_BitiVerifyPayload) _then) = __$BitiVerifyPayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'trx_id') String? trxId,@JsonKey(name: 'client_reference_id') String? clientReferenceId,@JsonKey(name: 'merchant') String? merchant,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'fee') double? fee,@JsonKey(name: 'net_amount') double? netAmount,@JsonKey(name: 'customer') BitiCustomerData? customer,@JsonKey(name: 'description') String? description,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'message') String? message
});


@override $BitiCustomerDataCopyWith<$Res>? get customer;

}
/// @nodoc
class __$BitiVerifyPayloadCopyWithImpl<$Res>
    implements _$BitiVerifyPayloadCopyWith<$Res> {
  __$BitiVerifyPayloadCopyWithImpl(this._self, this._then);

  final _BitiVerifyPayload _self;
  final $Res Function(_BitiVerifyPayload) _then;

/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? trxId = freezed,Object? clientReferenceId = freezed,Object? merchant = freezed,Object? currency = freezed,Object? amount = freezed,Object? fee = freezed,Object? netAmount = freezed,Object? customer = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? message = freezed,}) {
  return _then(_BitiVerifyPayload(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,trxId: freezed == trxId ? _self.trxId : trxId // ignore: cast_nullable_to_non_nullable
as String?,clientReferenceId: freezed == clientReferenceId ? _self.clientReferenceId : clientReferenceId // ignore: cast_nullable_to_non_nullable
as String?,merchant: freezed == merchant ? _self.merchant : merchant // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as BitiCustomerData?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BitiVerifyPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiCustomerDataCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $BitiCustomerDataCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// @nodoc
mixin _$BitiCustomerData {

@JsonKey(name: 'biti_upi') String? get bitiUpi;@JsonKey(name: 'id') String? get id;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'phone') String? get phone;
/// Create a copy of BitiCustomerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiCustomerDataCopyWith<BitiCustomerData> get copyWith => _$BitiCustomerDataCopyWithImpl<BitiCustomerData>(this as BitiCustomerData, _$identity);

  /// Serializes this BitiCustomerData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiCustomerData&&(identical(other.bitiUpi, bitiUpi) || other.bitiUpi == bitiUpi)&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitiUpi,id,email,phone);

@override
String toString() {
  return 'BitiCustomerData(bitiUpi: $bitiUpi, id: $id, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $BitiCustomerDataCopyWith<$Res>  {
  factory $BitiCustomerDataCopyWith(BitiCustomerData value, $Res Function(BitiCustomerData) _then) = _$BitiCustomerDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'biti_upi') String? bitiUpi,@JsonKey(name: 'id') String? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone
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
@pragma('vm:prefer-inline') @override $Res call({Object? bitiUpi = freezed,Object? id = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
bitiUpi: freezed == bitiUpi ? _self.bitiUpi : bitiUpi // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BitiCustomerData implements BitiCustomerData {
  const _BitiCustomerData({@JsonKey(name: 'biti_upi') this.bitiUpi, @JsonKey(name: 'id') this.id, @JsonKey(name: 'email') this.email, @JsonKey(name: 'phone') this.phone});
  factory _BitiCustomerData.fromJson(Map<String, dynamic> json) => _$BitiCustomerDataFromJson(json);

@override@JsonKey(name: 'biti_upi') final  String? bitiUpi;
@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'phone') final  String? phone;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiCustomerData&&(identical(other.bitiUpi, bitiUpi) || other.bitiUpi == bitiUpi)&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitiUpi,id,email,phone);

@override
String toString() {
  return 'BitiCustomerData(bitiUpi: $bitiUpi, id: $id, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$BitiCustomerDataCopyWith<$Res> implements $BitiCustomerDataCopyWith<$Res> {
  factory _$BitiCustomerDataCopyWith(_BitiCustomerData value, $Res Function(_BitiCustomerData) _then) = __$BitiCustomerDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'biti_upi') String? bitiUpi,@JsonKey(name: 'id') String? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone
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
@override @pragma('vm:prefer-inline') $Res call({Object? bitiUpi = freezed,Object? id = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_BitiCustomerData(
bitiUpi: freezed == bitiUpi ? _self.bitiUpi : bitiUpi // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
