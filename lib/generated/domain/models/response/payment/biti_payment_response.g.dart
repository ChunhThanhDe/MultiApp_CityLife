// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/response/payment/biti_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BitiPaymentResponse _$BitiPaymentResponseFromJson(Map<String, dynamic> json) =>
    _BitiPaymentResponse(
      status: json['status'] as bool,
      code: json['code'] as String,
      payload: json['payload'] == null
          ? null
          : BitiPaymentPayload.fromJson(
              json['payload'] as Map<String, dynamic>,
            ),
      message: json['message'] as String?,
      detailError: json['detail_error'] as String?,
    );

Map<String, dynamic> _$BitiPaymentResponseToJson(
  _BitiPaymentResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'payload': instance.payload,
  'message': instance.message,
  'detail_error': instance.detailError,
};

_BitiPaymentPayload _$BitiPaymentPayloadFromJson(Map<String, dynamic> json) =>
    _BitiPaymentPayload(
      paymentUrl: json['payment_url'] as String,
      info: json['info'] == null
          ? null
          : BitiPaymentInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BitiPaymentPayloadToJson(_BitiPaymentPayload instance) =>
    <String, dynamic>{
      'payment_url': instance.paymentUrl,
      'info': instance.info,
    };

_BitiPaymentInfo _$BitiPaymentInfoFromJson(Map<String, dynamic> json) =>
    _BitiPaymentInfo(
      transactionId: json['transaction_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      expiresAt: json['expires_at'] as String,
    );

Map<String, dynamic> _$BitiPaymentInfoToJson(_BitiPaymentInfo instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'currency': instance.currency,
      'expires_at': instance.expiresAt,
    };
