// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/response/payment/biti_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BitiVerifyResponse _$BitiVerifyResponseFromJson(Map<String, dynamic> json) =>
    _BitiVerifyResponse(
      status: json['status'] as String,
      code: (json['code'] as num).toInt(),
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
      transactionId: json['transaction_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      status: json['status'] as String,
      customerData: json['customer_data'] == null
          ? null
          : BitiCustomerData.fromJson(
              json['customer_data'] as Map<String, dynamic>,
            ),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      fee: (json['fee'] as num?)?.toDouble(),
      netAmount: (json['net_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BitiVerifyPayloadToJson(_BitiVerifyPayload instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': instance.status,
      'customer_data': instance.customerData,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'fee': instance.fee,
      'net_amount': instance.netAmount,
    };

_BitiCustomerData _$BitiCustomerDataFromJson(Map<String, dynamic> json) =>
    _BitiCustomerData(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$BitiCustomerDataToJson(_BitiCustomerData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'name': instance.name,
    };
