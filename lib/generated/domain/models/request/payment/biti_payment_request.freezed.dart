// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/models/request/payment/biti_payment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BitiPaymentRequest {

@JsonKey(name: 'cancel_url') String get cancelUrl;@JsonKey(name: 'success_url') String get successUrl;@JsonKey(name: 'ipn_url') String? get ipnUrl;@JsonKey(name: 'client_reference_id') String get clientReferenceId;@JsonKey(name: 'payment_amount') double get paymentAmount;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'currency_code') String get currencyCode;@JsonKey(name: 'customer_email') String? get customerEmail;@JsonKey(name: 'customer_phone') String? get customerPhone;
/// Create a copy of BitiPaymentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitiPaymentRequestCopyWith<BitiPaymentRequest> get copyWith => _$BitiPaymentRequestCopyWithImpl<BitiPaymentRequest>(this as BitiPaymentRequest, _$identity);

  /// Serializes this BitiPaymentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitiPaymentRequest&&(identical(other.cancelUrl, cancelUrl) || other.cancelUrl == cancelUrl)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.ipnUrl, ipnUrl) || other.ipnUrl == ipnUrl)&&(identical(other.clientReferenceId, clientReferenceId) || other.clientReferenceId == clientReferenceId)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancelUrl,successUrl,ipnUrl,clientReferenceId,paymentAmount,description,currencyCode,customerEmail,customerPhone);

@override
String toString() {
  return 'BitiPaymentRequest(cancelUrl: $cancelUrl, successUrl: $successUrl, ipnUrl: $ipnUrl, clientReferenceId: $clientReferenceId, paymentAmount: $paymentAmount, description: $description, currencyCode: $currencyCode, customerEmail: $customerEmail, customerPhone: $customerPhone)';
}


}

/// @nodoc
abstract mixin class $BitiPaymentRequestCopyWith<$Res>  {
  factory $BitiPaymentRequestCopyWith(BitiPaymentRequest value, $Res Function(BitiPaymentRequest) _then) = _$BitiPaymentRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cancel_url') String cancelUrl,@JsonKey(name: 'success_url') String successUrl,@JsonKey(name: 'ipn_url') String? ipnUrl,@JsonKey(name: 'client_reference_id') String clientReferenceId,@JsonKey(name: 'payment_amount') double paymentAmount,@JsonKey(name: 'description') String? description,@JsonKey(name: 'currency_code') String currencyCode,@JsonKey(name: 'customer_email') String? customerEmail,@JsonKey(name: 'customer_phone') String? customerPhone
});




}
/// @nodoc
class _$BitiPaymentRequestCopyWithImpl<$Res>
    implements $BitiPaymentRequestCopyWith<$Res> {
  _$BitiPaymentRequestCopyWithImpl(this._self, this._then);

  final BitiPaymentRequest _self;
  final $Res Function(BitiPaymentRequest) _then;

/// Create a copy of BitiPaymentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cancelUrl = null,Object? successUrl = null,Object? ipnUrl = freezed,Object? clientReferenceId = null,Object? paymentAmount = null,Object? description = freezed,Object? currencyCode = null,Object? customerEmail = freezed,Object? customerPhone = freezed,}) {
  return _then(_self.copyWith(
cancelUrl: null == cancelUrl ? _self.cancelUrl : cancelUrl // ignore: cast_nullable_to_non_nullable
as String,successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,ipnUrl: freezed == ipnUrl ? _self.ipnUrl : ipnUrl // ignore: cast_nullable_to_non_nullable
as String?,clientReferenceId: null == clientReferenceId ? _self.clientReferenceId : clientReferenceId // ignore: cast_nullable_to_non_nullable
as String,paymentAmount: null == paymentAmount ? _self.paymentAmount : paymentAmount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BitiPaymentRequest implements BitiPaymentRequest {
  const _BitiPaymentRequest({@JsonKey(name: 'cancel_url') required this.cancelUrl, @JsonKey(name: 'success_url') required this.successUrl, @JsonKey(name: 'ipn_url') this.ipnUrl, @JsonKey(name: 'client_reference_id') required this.clientReferenceId, @JsonKey(name: 'payment_amount') required this.paymentAmount, @JsonKey(name: 'description') this.description, @JsonKey(name: 'currency_code') required this.currencyCode, @JsonKey(name: 'customer_email') this.customerEmail, @JsonKey(name: 'customer_phone') this.customerPhone});
  factory _BitiPaymentRequest.fromJson(Map<String, dynamic> json) => _$BitiPaymentRequestFromJson(json);

@override@JsonKey(name: 'cancel_url') final  String cancelUrl;
@override@JsonKey(name: 'success_url') final  String successUrl;
@override@JsonKey(name: 'ipn_url') final  String? ipnUrl;
@override@JsonKey(name: 'client_reference_id') final  String clientReferenceId;
@override@JsonKey(name: 'payment_amount') final  double paymentAmount;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'currency_code') final  String currencyCode;
@override@JsonKey(name: 'customer_email') final  String? customerEmail;
@override@JsonKey(name: 'customer_phone') final  String? customerPhone;

/// Create a copy of BitiPaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BitiPaymentRequestCopyWith<_BitiPaymentRequest> get copyWith => __$BitiPaymentRequestCopyWithImpl<_BitiPaymentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BitiPaymentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitiPaymentRequest&&(identical(other.cancelUrl, cancelUrl) || other.cancelUrl == cancelUrl)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.ipnUrl, ipnUrl) || other.ipnUrl == ipnUrl)&&(identical(other.clientReferenceId, clientReferenceId) || other.clientReferenceId == clientReferenceId)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancelUrl,successUrl,ipnUrl,clientReferenceId,paymentAmount,description,currencyCode,customerEmail,customerPhone);

@override
String toString() {
  return 'BitiPaymentRequest(cancelUrl: $cancelUrl, successUrl: $successUrl, ipnUrl: $ipnUrl, clientReferenceId: $clientReferenceId, paymentAmount: $paymentAmount, description: $description, currencyCode: $currencyCode, customerEmail: $customerEmail, customerPhone: $customerPhone)';
}


}

/// @nodoc
abstract mixin class _$BitiPaymentRequestCopyWith<$Res> implements $BitiPaymentRequestCopyWith<$Res> {
  factory _$BitiPaymentRequestCopyWith(_BitiPaymentRequest value, $Res Function(_BitiPaymentRequest) _then) = __$BitiPaymentRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cancel_url') String cancelUrl,@JsonKey(name: 'success_url') String successUrl,@JsonKey(name: 'ipn_url') String? ipnUrl,@JsonKey(name: 'client_reference_id') String clientReferenceId,@JsonKey(name: 'payment_amount') double paymentAmount,@JsonKey(name: 'description') String? description,@JsonKey(name: 'currency_code') String currencyCode,@JsonKey(name: 'customer_email') String? customerEmail,@JsonKey(name: 'customer_phone') String? customerPhone
});




}
/// @nodoc
class __$BitiPaymentRequestCopyWithImpl<$Res>
    implements _$BitiPaymentRequestCopyWith<$Res> {
  __$BitiPaymentRequestCopyWithImpl(this._self, this._then);

  final _BitiPaymentRequest _self;
  final $Res Function(_BitiPaymentRequest) _then;

/// Create a copy of BitiPaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cancelUrl = null,Object? successUrl = null,Object? ipnUrl = freezed,Object? clientReferenceId = null,Object? paymentAmount = null,Object? description = freezed,Object? currencyCode = null,Object? customerEmail = freezed,Object? customerPhone = freezed,}) {
  return _then(_BitiPaymentRequest(
cancelUrl: null == cancelUrl ? _self.cancelUrl : cancelUrl // ignore: cast_nullable_to_non_nullable
as String,successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,ipnUrl: freezed == ipnUrl ? _self.ipnUrl : ipnUrl // ignore: cast_nullable_to_non_nullable
as String?,clientReferenceId: null == clientReferenceId ? _self.clientReferenceId : clientReferenceId // ignore: cast_nullable_to_non_nullable
as String,paymentAmount: null == paymentAmount ? _self.paymentAmount : paymentAmount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
