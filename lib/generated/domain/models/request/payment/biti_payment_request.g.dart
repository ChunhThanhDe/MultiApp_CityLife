// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/request/payment/biti_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BitiPaymentRequest _$BitiPaymentRequestFromJson(Map<String, dynamic> json) =>
    _BitiPaymentRequest(
      cancelUrl: json['cancel_url'] as String,
      successUrl: json['success_url'] as String,
      ipnUrl: json['ipn_url'] as String?,
      clientReferenceId: json['client_reference_id'] as String,
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      description: json['description'] as String?,
      currencyCode: json['currency_code'] as String,
      customerEmail: json['customer_email'] as String?,
      customerPhone: json['customer_phone'] as String?,
    );

Map<String, dynamic> _$BitiPaymentRequestToJson(_BitiPaymentRequest instance) =>
    <String, dynamic>{
      'cancel_url': instance.cancelUrl,
      'success_url': instance.successUrl,
      'ipn_url': instance.ipnUrl,
      'client_reference_id': instance.clientReferenceId,
      'payment_amount': instance.paymentAmount,
      'description': instance.description,
      'currency_code': instance.currencyCode,
      'customer_email': instance.customerEmail,
      'customer_phone': instance.customerPhone,
    };
