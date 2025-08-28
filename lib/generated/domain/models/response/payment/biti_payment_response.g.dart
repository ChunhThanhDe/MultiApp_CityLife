// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/response/payment/biti_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BitiPaymentResponse _$BitiPaymentResponseFromJson(Map<String, dynamic> json) =>
    _BitiPaymentResponse(
      status: json['status'] as String,
      code: (json['code'] as num).toInt(),
      payload: json['payload'] == null
          ? null
          : BitiPaymentPayload.fromJson(
              json['payload'] as Map<String, dynamic>,
            ),
      message: json['message'] as String?,
      detailedError: json['detailed_error'] as String?,
    );

Map<String, dynamic> _$BitiPaymentResponseToJson(
  _BitiPaymentResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'payload': instance.payload,
  'message': instance.message,
  'detailed_error': instance.detailedError,
};

_BitiPaymentPayload _$BitiPaymentPayloadFromJson(Map<String, dynamic> json) =>
    _BitiPaymentPayload(
      paymentUrl: json['payment_url'] as String,
      transactionId: json['transaction_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      expiration: json['expiration'] as String,
    );

Map<String, dynamic> _$BitiPaymentPayloadToJson(_BitiPaymentPayload instance) =>
    <String, dynamic>{
      'payment_url': instance.paymentUrl,
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'currency': instance.currency,
      'expiration': instance.expiration,
    };
