// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/models/request/cart/order_now_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderNowRequest _$OrderNowRequestFromJson(Map<String, dynamic> json) =>
    OrderNowRequest(
      selectedDeliveryOption: json['selected_delivery_option'] as String,
      selectedAddressId: (json['selected_address_id'] as num).toInt(),
      appliedCoupon: json['applied_coupon'] as String,
      paymentMethod: json['payment_method'] as String,
    );

Map<String, dynamic> _$OrderNowRequestToJson(OrderNowRequest instance) =>
    <String, dynamic>{
      'selected_delivery_option': instance.selectedDeliveryOption,
      'selected_address_id': instance.selectedAddressId,
      'applied_coupon': instance.appliedCoupon,
      'payment_method': instance.paymentMethod,
    };
