// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/response/payment/biti_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BitiVerifyResponse _$BitiVerifyResponseFromJson(Map<String, dynamic> json) =>
    _BitiVerifyResponse(
      status: json['status'] as bool,
      code: json['code'] as String,
      payload: json['payload'] == null
          ? null
          : BitiVerifyPayload.fromJson(json['payload'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BitiVerifyResponseToJson(_BitiVerifyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'payload': instance.payload,
      'message': instance.message,
    };

_BitiVerifyPayload _$BitiVerifyPayloadFromJson(Map<String, dynamic> json) =>
    _BitiVerifyPayload(
      status: json['status'] as String?,
      trxId: json['trx_id'] as String?,
      clientReferenceId: json['client_reference_id'] as String?,
      merchant: json['merchant'] as String?,
      currency: json['currency'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      fee: (json['fee'] as num?)?.toDouble(),
      netAmount: (json['net_amount'] as num?)?.toDouble(),
      customer: json['customer'] == null
          ? null
          : BitiCustomerData.fromJson(json['customer'] as Map<String, dynamic>),
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BitiVerifyPayloadToJson(_BitiVerifyPayload instance) =>
    <String, dynamic>{
      'status': instance.status,
      'trx_id': instance.trxId,
      'client_reference_id': instance.clientReferenceId,
      'merchant': instance.merchant,
      'currency': instance.currency,
      'amount': instance.amount,
      'fee': instance.fee,
      'net_amount': instance.netAmount,
      'customer': instance.customer,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'message': instance.message,
    };

_BitiCustomerData _$BitiCustomerDataFromJson(Map<String, dynamic> json) =>
    _BitiCustomerData(
      bitiUpi: json['biti_upi'] as String?,
      id: json['id'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$BitiCustomerDataToJson(_BitiCustomerData instance) =>
    <String, dynamic>{
      'biti_upi': instance.bitiUpi,
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
    };
