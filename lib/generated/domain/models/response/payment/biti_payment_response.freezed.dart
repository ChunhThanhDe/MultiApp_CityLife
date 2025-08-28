// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/models/response/payment/biti_payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BitiPaymentResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'code') int get code;@JsonKey(name: 'payload') BitiPaymentPayload? get payload;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'detailed_error') String? get detailedError;
/// Create a copy of BitiPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiPaymentResponseCopyWith<BitiPaymentResponse> get copyWith => _$BitiPaymentResponseCopyWithImpl<BitiPaymentResponse>(this as BitiPaymentResponse, _$identity);

  /// Serializes this BitiPaymentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiPaymentResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.message, message) || other.message == message)&&(identical(other.detailedError, detailedError) || other.detailedError == detailedError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,payload,message,detailedError);

@override
String toString() {
  return 'BitiPaymentResponse(status: $status, code: $code, payload: $payload, message: $message, detailedError: $detailedError)';
}


}

/// @nodoc
abstract mixin class $BitiPaymentResponseCopyWith<$Res>  {
  factory $BitiPaymentResponseCopyWith(BitiPaymentResponse value, $Res Function(BitiPaymentResponse) _then) = _$BitiPaymentResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'code') int code,@JsonKey(name: 'payload') BitiPaymentPayload? payload,@JsonKey(name: 'message') String? message,@JsonKey(name: 'detailed_error') String? detailedError
});


$BitiPaymentPayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class _$BitiPaymentResponseCopyWithImpl<$Res>
    implements $BitiPaymentResponseCopyWith<$Res> {
  _$BitiPaymentResponseCopyWithImpl(this._self, this._then);

  final BitiPaymentResponse _self;
  final $Res Function(BitiPaymentResponse) _then;

/// Create a copy of BitiPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? payload = freezed,Object? message = freezed,Object? detailedError = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as BitiPaymentPayload?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,detailedError: freezed == detailedError ? _self.detailedError : detailedError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BitiPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiPaymentPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $BitiPaymentPayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BitiPaymentResponse implements BitiPaymentResponse {
  const _BitiPaymentResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'code') required this.code, @JsonKey(name: 'payload') this.payload, @JsonKey(name: 'message') this.message, @JsonKey(name: 'detailed_error') this.detailedError});
  factory _BitiPaymentResponse.fromJson(Map<String, dynamic> json) => _$BitiPaymentResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'code') final  int code;
@override@JsonKey(name: 'payload') final  BitiPaymentPayload? payload;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'detailed_error') final  String? detailedError;

/// Create a copy of BitiPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BitiPaymentResponseCopyWith<_BitiPaymentResponse> get copyWith => __$BitiPaymentResponseCopyWithImpl<_BitiPaymentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BitiPaymentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiPaymentResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.message, message) || other.message == message)&&(identical(other.detailedError, detailedError) || other.detailedError == detailedError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,payload,message,detailedError);

@override
String toString() {
  return 'BitiPaymentResponse(status: $status, code: $code, payload: $payload, message: $message, detailedError: $detailedError)';
}


}

/// @nodoc
abstract mixin class _$BitiPaymentResponseCopyWith<$Res> implements $BitiPaymentResponseCopyWith<$Res> {
  factory _$BitiPaymentResponseCopyWith(_BitiPaymentResponse value, $Res Function(_BitiPaymentResponse) _then) = __$BitiPaymentResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'code') int code,@JsonKey(name: 'payload') BitiPaymentPayload? payload,@JsonKey(name: 'message') String? message,@JsonKey(name: 'detailed_error') String? detailedError
});


@override $BitiPaymentPayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class __$BitiPaymentResponseCopyWithImpl<$Res>
    implements _$BitiPaymentResponseCopyWith<$Res> {
  __$BitiPaymentResponseCopyWithImpl(this._self, this._then);

  final _BitiPaymentResponse _self;
  final $Res Function(_BitiPaymentResponse) _then;

/// Create a copy of BitiPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? payload = freezed,Object? message = freezed,Object? detailedError = freezed,}) {
  return _then(_BitiPaymentResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as BitiPaymentPayload?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,detailedError: freezed == detailedError ? _self.detailedError : detailedError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BitiPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitiPaymentPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $BitiPaymentPayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// @nodoc
mixin _$BitiPaymentPayload {

@JsonKey(name: 'payment_url') String get paymentUrl;@JsonKey(name: 'transaction_id') String get transactionId;@JsonKey(name: 'amount') double get amount;@JsonKey(name: 'currency') String get currency;@JsonKey(name: 'expiration') String get expiration;
/// Create a copy of BitiPaymentPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiPaymentPayloadCopyWith<BitiPaymentPayload> get copyWith => _$BitiPaymentPayloadCopyWithImpl<BitiPaymentPayload>(this as BitiPaymentPayload, _$identity);

  /// Serializes this BitiPaymentPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiPaymentPayload&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.expiration, expiration) || other.expiration == expiration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentUrl,transactionId,amount,currency,expiration);

@override
String toString() {
  return 'BitiPaymentPayload(paymentUrl: $paymentUrl, transactionId: $transactionId, amount: $amount, currency: $currency, expiration: $expiration)';
}


}

/// @nodoc
abstract mixin class $BitiPaymentPayloadCopyWith<$Res>  {
  factory $BitiPaymentPayloadCopyWith(BitiPaymentPayload value, $Res Function(BitiPaymentPayload) _then) = _$BitiPaymentPayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_url') String paymentUrl,@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'expiration') String expiration
});




}
/// @nodoc
class _$BitiPaymentPayloadCopyWithImpl<$Res>
    implements $BitiPaymentPayloadCopyWith<$Res> {
  _$BitiPaymentPayloadCopyWithImpl(this._self, this._then);

  final BitiPaymentPayload _self;
  final $Res Function(BitiPaymentPayload) _then;

/// Create a copy of BitiPaymentPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentUrl = null,Object? transactionId = null,Object? amount = null,Object? currency = null,Object? expiration = null,}) {
  return _then(_self.copyWith(
paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,expiration: null == expiration ? _self.expiration : expiration // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BitiPaymentPayload implements BitiPaymentPayload {
  const _BitiPaymentPayload({@JsonKey(name: 'payment_url') required this.paymentUrl, @JsonKey(name: 'transaction_id') required this.transactionId, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'currency') required this.currency, @JsonKey(name: 'expiration') required this.expiration});
  factory _BitiPaymentPayload.fromJson(Map<String, dynamic> json) => _$BitiPaymentPayloadFromJson(json);

@override@JsonKey(name: 'payment_url') final  String paymentUrl;
@override@JsonKey(name: 'transaction_id') final  String transactionId;
@override@JsonKey(name: 'amount') final  double amount;
@override@JsonKey(name: 'currency') final  String currency;
@override@JsonKey(name: 'expiration') final  String expiration;

/// Create a copy of BitiPaymentPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BitiPaymentPayloadCopyWith<_BitiPaymentPayload> get copyWith => __$BitiPaymentPayloadCopyWithImpl<_BitiPaymentPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BitiPaymentPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiPaymentPayload&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.expiration, expiration) || other.expiration == expiration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentUrl,transactionId,amount,currency,expiration);

@override
String toString() {
  return 'BitiPaymentPayload(paymentUrl: $paymentUrl, transactionId: $transactionId, amount: $amount, currency: $currency, expiration: $expiration)';
}


}

/// @nodoc
abstract mixin class _$BitiPaymentPayloadCopyWith<$Res> implements $BitiPaymentPayloadCopyWith<$Res> {
  factory _$BitiPaymentPayloadCopyWith(_BitiPaymentPayload value, $Res Function(_BitiPaymentPayload) _then) = __$BitiPaymentPayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_url') String paymentUrl,@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'expiration') String expiration
});




}
/// @nodoc
class __$BitiPaymentPayloadCopyWithImpl<$Res>
    implements _$BitiPaymentPayloadCopyWith<$Res> {
  __$BitiPaymentPayloadCopyWithImpl(this._self, this._then);

  final _BitiPaymentPayload _self;
  final $Res Function(_BitiPaymentPayload) _then;

/// Create a copy of BitiPaymentPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentUrl = null,Object? transactionId = null,Object? amount = null,Object? currency = null,Object? expiration = null,}) {
  return _then(_BitiPaymentPayload(
paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,expiration: null == expiration ? _self.expiration : expiration // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
