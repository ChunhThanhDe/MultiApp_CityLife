// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/order_now_response.freezed.dart';
part '../../../generated/domain/models/response/order_now_response.g.dart';

@freezed
abstract class OrderNowResponse with _$OrderNowResponse {
  const factory OrderNowResponse({
    required String message,
    required List<OrderNowOrder> orders,
    @JsonKey(name: 'total_amount') required double totalAmount,
    @JsonKey(name: 'order_count') required int orderCount,
    required OrderBreakdown breakdown,
  }) = _OrderNowResponse;

  factory OrderNowResponse.fromJson(Map<String, dynamic> json) => _$OrderNowResponseFromJson(json);
}

@freezed
abstract class OrderNowOrder with _$OrderNowOrder {
  const factory OrderNowOrder({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'order_amount') required double orderAmount,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    @JsonKey(name: 'order_status') required String orderStatus,
    @JsonKey(name: 'payment_method') required String paymentMethod, @JsonKey(name: 'order_type') required String orderType, @JsonKey(name: 'store_id') required int storeId, @JsonKey(name: 'delivery_charge') required double deliveryCharge, @JsonKey(name: 'original_delivery_charge') required double originalDeliveryCharge, @JsonKey(name: 'delivery_address_id') required int deliveryAddressId, @JsonKey(name: 'delivery_address') required String deliveryAddress, @JsonKey(name: 'schedule_at') required String scheduleAt, required int scheduled, required bool cutlery, @JsonKey(name: 'is_guest') required bool isGuest, required int otp, @JsonKey(name: 'zone_id') required int zoneId, @JsonKey(name: 'module_id') required int moduleId, required double distance, @JsonKey(name: 'dm_tips') required double dmTips, required String pending, @JsonKey(name: 'created_at') required String createdAt, @JsonKey(name: 'updated_at') required String updatedAt, @JsonKey(name: 'store_discount_amount') required double storeDiscountAmount, @JsonKey(name: 'total_tax_amount') required double totalTaxAmount, @JsonKey(name: 'tax_percentage') required int taxPercentage, @JsonKey(name: 'coupon_discount_amount') required double couponDiscountAmount, @JsonKey(name: 'additional_charge') required double additionalCharge, @JsonKey(name: 'flash_admin_discount_amount') required double flashAdminDiscountAmount, @JsonKey(name: 'flash_store_discount_amount') required double flashStoreDiscountAmount, @JsonKey(name: 'extra_packaging_amount') required double extraPackagingAmount, @JsonKey(name: 'ref_bonus_amount') required double refBonusAmount, @JsonKey(name: 'module_type') required String moduleType, @JsonKey(name: 'coupon_code') String? couponCode,
    @JsonKey(name: 'order_note') String? orderNote,
    @JsonKey(name: 'delivery_instruction') String? deliveryInstruction,
  }) = _OrderNowOrder;

  factory OrderNowOrder.fromJson(Map<String, dynamic> json) => _$OrderNowOrderFromJson(json);
}

@freezed
abstract class OrderBreakdown with _$OrderBreakdown {
  const factory OrderBreakdown({
    required double subtotal,
    @JsonKey(name: 'delivery_fee') required double deliveryFee,
    required double tax,
    required double discount,
    @JsonKey(name: 'dm_tips') required double dmTips,
    required double total,
  }) = _OrderBreakdown;

  factory OrderBreakdown.fromJson(Map<String, dynamic> json) => _$OrderBreakdownFromJson(json);
}