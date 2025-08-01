// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/order_now_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderNowResponse _$OrderNowResponseFromJson(Map<String, dynamic> json) =>
    _OrderNowResponse(
      message: json['message'] as String,
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderNowOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalAmount: (json['total_amount'] as num).toDouble(),
      orderCount: (json['order_count'] as num).toInt(),
      breakdown: OrderBreakdown.fromJson(
        json['breakdown'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$OrderNowResponseToJson(_OrderNowResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'orders': instance.orders,
      'total_amount': instance.totalAmount,
      'order_count': instance.orderCount,
      'breakdown': instance.breakdown,
    };

_OrderNowOrder _$OrderNowOrderFromJson(Map<String, dynamic> json) =>
    _OrderNowOrder(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      orderAmount: (json['order_amount'] as num).toDouble(),
      paymentStatus: json['payment_status'] as String,
      orderStatus: json['order_status'] as String,
      paymentMethod: json['payment_method'] as String,
      orderType: json['order_type'] as String,
      storeId: (json['store_id'] as num).toInt(),
      deliveryCharge: (json['delivery_charge'] as num).toDouble(),
      originalDeliveryCharge: (json['original_delivery_charge'] as num)
          .toDouble(),
      deliveryAddressId: (json['delivery_address_id'] as num).toInt(),
      deliveryAddress: json['delivery_address'] as String,
      scheduleAt: json['schedule_at'] as String,
      scheduled: (json['scheduled'] as num).toInt(),
      cutlery: json['cutlery'] as bool,
      isGuest: json['is_guest'] as bool,
      otp: (json['otp'] as num).toInt(),
      zoneId: (json['zone_id'] as num).toInt(),
      moduleId: (json['module_id'] as num).toInt(),
      distance: (json['distance'] as num).toDouble(),
      dmTips: (json['dm_tips'] as num).toDouble(),
      pending: json['pending'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      storeDiscountAmount: (json['store_discount_amount'] as num).toDouble(),
      totalTaxAmount: (json['total_tax_amount'] as num).toDouble(),
      taxPercentage: (json['tax_percentage'] as num).toInt(),
      couponDiscountAmount: (json['coupon_discount_amount'] as num).toDouble(),
      additionalCharge: (json['additional_charge'] as num).toDouble(),
      flashAdminDiscountAmount: (json['flash_admin_discount_amount'] as num)
          .toDouble(),
      flashStoreDiscountAmount: (json['flash_store_discount_amount'] as num)
          .toDouble(),
      extraPackagingAmount: (json['extra_packaging_amount'] as num).toDouble(),
      refBonusAmount: (json['ref_bonus_amount'] as num).toDouble(),
      moduleType: json['module_type'] as String,
      couponCode: json['coupon_code'] as String?,
      orderNote: json['order_note'] as String?,
      deliveryInstruction: json['delivery_instruction'] as String?,
    );

Map<String, dynamic> _$OrderNowOrderToJson(_OrderNowOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'order_amount': instance.orderAmount,
      'payment_status': instance.paymentStatus,
      'order_status': instance.orderStatus,
      'payment_method': instance.paymentMethod,
      'order_type': instance.orderType,
      'store_id': instance.storeId,
      'delivery_charge': instance.deliveryCharge,
      'original_delivery_charge': instance.originalDeliveryCharge,
      'delivery_address_id': instance.deliveryAddressId,
      'delivery_address': instance.deliveryAddress,
      'schedule_at': instance.scheduleAt,
      'scheduled': instance.scheduled,
      'cutlery': instance.cutlery,
      'is_guest': instance.isGuest,
      'otp': instance.otp,
      'zone_id': instance.zoneId,
      'module_id': instance.moduleId,
      'distance': instance.distance,
      'dm_tips': instance.dmTips,
      'pending': instance.pending,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'store_discount_amount': instance.storeDiscountAmount,
      'total_tax_amount': instance.totalTaxAmount,
      'tax_percentage': instance.taxPercentage,
      'coupon_discount_amount': instance.couponDiscountAmount,
      'additional_charge': instance.additionalCharge,
      'flash_admin_discount_amount': instance.flashAdminDiscountAmount,
      'flash_store_discount_amount': instance.flashStoreDiscountAmount,
      'extra_packaging_amount': instance.extraPackagingAmount,
      'ref_bonus_amount': instance.refBonusAmount,
      'module_type': instance.moduleType,
      'coupon_code': instance.couponCode,
      'order_note': instance.orderNote,
      'delivery_instruction': instance.deliveryInstruction,
    };

_OrderBreakdown _$OrderBreakdownFromJson(Map<String, dynamic> json) =>
    _OrderBreakdown(
      subtotal: (json['subtotal'] as num).toDouble(),
      deliveryFee: (json['delivery_fee'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      dmTips: (json['dm_tips'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderBreakdownToJson(_OrderBreakdown instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'delivery_fee': instance.deliveryFee,
      'tax': instance.tax,
      'discount': instance.discount,
      'dm_tips': instance.dmTips,
      'total': instance.total,
    };
