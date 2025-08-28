// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/request/payment/biti_payment_request.freezed.dart';
part '../../../../generated/domain/models/request/payment/biti_payment_request.g.dart';

@freezed
abstract class BitiPaymentRequest with _$BitiPaymentRequest {
  const factory BitiPaymentRequest({
    @JsonKey(name: 'cancel_url') required String cancelUrl,
    @JsonKey(name: 'success_url') required String successUrl,
    @JsonKey(name: 'ipn_url') String? ipnUrl,
    @JsonKey(name: 'client_reference_id') required String clientReferenceId,
    @JsonKey(name: 'payment_amount') required double paymentAmount,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'currency_code') required String currencyCode,
    @JsonKey(name: 'customer_email') String? customerEmail,
    @JsonKey(name: 'customer_phone') String? customerPhone,
  }) = _BitiPaymentRequest;

  factory BitiPaymentRequest.fromJson(Map<String, dynamic> json) => _$BitiPaymentRequestFromJson(json);
}