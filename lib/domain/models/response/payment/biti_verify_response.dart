// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/response/payment/biti_verify_response.freezed.dart';
part '../../../../generated/domain/models/response/payment/biti_verify_response.g.dart';

@freezed
abstract class BitiVerifyResponse with _$BitiVerifyResponse {
  const factory BitiVerifyResponse({
    @JsonKey(name: 'status') required bool status,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'payload') BitiVerifyPayload? payload,
    @JsonKey(name: 'message') String? message,
  }) = _BitiVerifyResponse;

  factory BitiVerifyResponse.fromJson(Map<String, dynamic> json) => _$BitiVerifyResponseFromJson(json);
}

@freezed
abstract class BitiVerifyPayload with _$BitiVerifyPayload {
  const factory BitiVerifyPayload({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'trx_id') String? trxId,
    @JsonKey(name: 'client_reference_id') String? clientReferenceId,
    @JsonKey(name: 'merchant') String? merchant,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'fee') double? fee,
    @JsonKey(name: 'net_amount') double? netAmount,
    @JsonKey(name: 'customer') BitiCustomerData? customer,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  }) = _BitiVerifyPayload;

  factory BitiVerifyPayload.fromJson(Map<String, dynamic> json) => _$BitiVerifyPayloadFromJson(json);
}

@freezed
abstract class BitiCustomerData with _$BitiCustomerData {
  const factory BitiCustomerData({@JsonKey(name: 'biti_upi') String? bitiUpi, @JsonKey(name: 'id') String? id, @JsonKey(name: 'email') String? email, @JsonKey(name: 'phone') String? phone}) =
      _BitiCustomerData;

  factory BitiCustomerData.fromJson(Map<String, dynamic> json) => _$BitiCustomerDataFromJson(json);
}
