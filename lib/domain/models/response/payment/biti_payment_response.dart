// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/response/payment/biti_payment_response.freezed.dart';
part '../../../../generated/domain/models/response/payment/biti_payment_response.g.dart';

@freezed
abstract class BitiPaymentResponse with _$BitiPaymentResponse {
  const factory BitiPaymentResponse({
    @JsonKey(name: 'status') required bool status,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'payload') BitiPaymentPayload? payload,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'detail_error') String? detailError,
  }) = _BitiPaymentResponse;

  factory BitiPaymentResponse.fromJson(Map<String, dynamic> json) => _$BitiPaymentResponseFromJson(json);
}

@freezed
abstract class BitiPaymentPayload with _$BitiPaymentPayload {
  const factory BitiPaymentPayload({@JsonKey(name: 'payment_url') required String paymentUrl, @JsonKey(name: 'info') BitiPaymentInfo? info}) = _BitiPaymentPayload;

  factory BitiPaymentPayload.fromJson(Map<String, dynamic> json) => _$BitiPaymentPayloadFromJson(json);
}

@freezed
abstract class BitiPaymentInfo with _$BitiPaymentInfo {
  const factory BitiPaymentInfo({
    @JsonKey(name: 'transaction_id') required String transactionId,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'expires_at') required String expiresAt,
  }) = _BitiPaymentInfo;

  factory BitiPaymentInfo.fromJson(Map<String, dynamic> json) => _$BitiPaymentInfoFromJson(json);
}
