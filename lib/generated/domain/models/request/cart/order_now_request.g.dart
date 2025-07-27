// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/request/cart/order_now_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderNowRequest _$OrderNowRequestFromJson(Map<String, dynamic> json) =>
    OrderNowRequest(
      selectedDeliveryOption: json['selectedDeliveryOption'] as String,
      selectedAddressId: (json['selectedAddressId'] as num).toInt(),
      appliedCoupon: json['appliedCoupon'] as String,
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$OrderNowRequestToJson(OrderNowRequest instance) =>
    <String, dynamic>{
      'selectedDeliveryOption': instance.selectedDeliveryOption,
      'selectedAddressId': instance.selectedAddressId,
      'appliedCoupon': instance.appliedCoupon,
      'paymentMethod': instance.paymentMethod,
    };
