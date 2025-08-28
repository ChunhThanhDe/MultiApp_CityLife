// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/response/payment/biti_verify_response.freezed.dart';
part '../../../../generated/domain/models/response/payment/biti_verify_response.g.dart';

@freezed
abstract class BitiVerifyResponse with _$BitiVerifyResponse {
  const factory BitiVerifyResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'code') required int code,
    @JsonKey(name: 'payload') BitiVerifyPayload? payload,
    @JsonKey(name: 'message') String? message,
  }) = _BitiVerifyResponse;

  factory BitiVerifyResponse.fromJson(Map<String, dynamic> json) => _$BitiVerifyResponseFromJson(json);
}

@freezed
abstract class BitiVerifyPayload with _$BitiVerifyPayload {
  const factory BitiVerifyPayload({
    @JsonKey(name: 'transaction_id') required String transactionId,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'customer_data') BitiCustomerData? customerData,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'fee') double? fee,
    @JsonKey(name: 'net_amount') double? netAmount,
  }) = _BitiVerifyPayload;

  factory BitiVerifyPayload.fromJson(Map<String, dynamic> json) => _$BitiVerifyPayloadFromJson(json);
}

@freezed
abstract class BitiCustomerData with _$BitiCustomerData {
  const factory BitiCustomerData({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'name') String? name,
  }) = _BitiCustomerData;

  factory BitiCustomerData.fromJson(Map<String, dynamic> json) => _$BitiCustomerDataFromJson(json);
}