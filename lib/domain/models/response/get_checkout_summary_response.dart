// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_checkout_summary_response.freezed.dart';
part '../../../generated/domain/models/response/get_checkout_summary_response.g.dart';

@freezed
abstract class GetCheckoutSummaryResponse with _$GetCheckoutSummaryResponse {
  const factory GetCheckoutSummaryResponse({
    @JsonKey(name: 'default_address') CheckoutAddress? defaultAddress,
    @JsonKey(name: 'addresses') List<CheckoutAddress>? addresses,
    @JsonKey(name: 'delivery_options') List<DeliveryOption>? deliveryOptions,
    @JsonKey(name: 'payment_methods') List<PaymentMethod>? paymentMethods,
    @JsonKey(name: 'cards') List<dynamic>? cards,
    @JsonKey(name: 'available_coupons') List<AvailableCoupon>? availableCoupons,
    @JsonKey(name: 'cart') List<CheckoutCartStore>? cart,
    @JsonKey(name: 'cart_summary') CheckoutCartSummary? cartSummary,
    @JsonKey(name: 'subtotal') double? subtotal,
    @JsonKey(name: 'delivery_fee') double? deliveryFee,
    @JsonKey(name: 'tax') double? tax,
    @JsonKey(name: 'discount') double? discount,
    @JsonKey(name: 'total') double? total,
  }) = _GetCheckoutSummaryResponse;

  factory GetCheckoutSummaryResponse.fromJson(Map<String, dynamic> json) => _$GetCheckoutSummaryResponseFromJson(json);
}

@freezed
abstract class CheckoutAddress with _$CheckoutAddress {
  const factory CheckoutAddress({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'address_type') String? addressType,
    @JsonKey(name: 'contact_person_number') String? contactPersonNumber,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'contact_person_name') String? contactPersonName,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'zone_id') int? zoneId,
    @JsonKey(name: 'floor') String? floor,
    @JsonKey(name: 'road') String? road,
    @JsonKey(name: 'house') String? house,
  }) = _CheckoutAddress;

  factory CheckoutAddress.fromJson(Map<String, dynamic> json) => _$CheckoutAddressFromJson(json);
}

@freezed
abstract class DeliveryOption with _$DeliveryOption {
  const factory DeliveryOption({@JsonKey(name: 'key') String? key, @JsonKey(name: 'label') String? label, @JsonKey(name: 'fee') double? fee, @JsonKey(name: 'desc') String? desc}) = _DeliveryOption;

  factory DeliveryOption.fromJson(Map<String, dynamic> json) => _$DeliveryOptionFromJson(json);
}

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({@JsonKey(name: 'key') String? key, @JsonKey(name: 'label') String? label}) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);
}

@freezed
abstract class AvailableCoupon with _$AvailableCoupon {
  const factory AvailableCoupon({@JsonKey(name: 'code') String? code, @JsonKey(name: 'desc') String? desc}) = _AvailableCoupon;

  factory AvailableCoupon.fromJson(Map<String, dynamic> json) => _$AvailableCouponFromJson(json);
}

@freezed
abstract class CheckoutCartStore with _$CheckoutCartStore {
  const factory CheckoutCartStore({
    @JsonKey(name: 'store_id') int? storeId,
    @JsonKey(name: 'store_name') String? storeName,
    @JsonKey(name: 'store_logo') String? storeLogo,
    @JsonKey(name: 'store_address') String? storeAddress,
    @JsonKey(name: 'store_phone') String? storePhone,
    @JsonKey(name: 'store_minimum_order') int? storeMinimumOrder,
    @JsonKey(name: 'store_delivery_time') String? storeDeliveryTime,
    @JsonKey(name: 'items') List<CheckoutCartItem>? items,
    @JsonKey(name: 'store_total_items') int? storeTotalItems,
    @JsonKey(name: 'store_total_price') double? storeTotalPrice,
  }) = _CheckoutCartStore;

  factory CheckoutCartStore.fromJson(Map<String, dynamic> json) => _$CheckoutCartStoreFromJson(json);
}

@freezed
abstract class CheckoutCartItem with _$CheckoutCartItem {
  const factory CheckoutCartItem({
    @JsonKey(name: 'cart_id') int? cartId,
    @JsonKey(name: 'item_id') int? itemId,
    @JsonKey(name: 'item_type') String? itemType,
    @JsonKey(name: 'item_name') String? itemName,
    @JsonKey(name: 'item_image') String? itemImage,
    @JsonKey(name: 'item_price') double? itemPrice,
    @JsonKey(name: 'item_original_price') double? itemOriginalPrice,
    @JsonKey(name: 'item_discount') int? itemDiscount,
    @JsonKey(name: 'item_discount_type') String? itemDiscountType,
    @JsonKey(name: 'item_quantity') int? itemQuantity,
    @JsonKey(name: 'item_total_price') double? itemTotalPrice,
    @JsonKey(name: 'item_variation') List<CheckoutCartItemVariation>? itemVariation,
    @JsonKey(name: 'item_add_ons') List<dynamic>? itemAddOns,
    @JsonKey(name: 'item_add_on_quantities') List<dynamic>? itemAddOnQuantities,
    @JsonKey(name: 'item_description') String? itemDescription,
    @JsonKey(name: 'item_category') CheckoutCartItemCategory? itemCategory,
    @JsonKey(name: 'item_available') int? itemAvailable,
    @JsonKey(name: 'item_maximum_cart_quantity') dynamic itemMaximumCartQuantity,
    @JsonKey(name: 'is_favorite') bool? isFavorite,
  }) = _CheckoutCartItem;

  factory CheckoutCartItem.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemFromJson(json);
}

@freezed
abstract class CheckoutCartItemCategory with _$CheckoutCartItemCategory {
  const factory CheckoutCartItemCategory({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'position') int? position,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'module_id') int? moduleId,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'featured') int? featured,
    @JsonKey(name: 'image_full_url') String? imageFullUrl,
    @JsonKey(name: 'storage') List<dynamic>? storage,
    @JsonKey(name: 'translations') List<dynamic>? translations,
  }) = _CheckoutCartItemCategory;

  factory CheckoutCartItemCategory.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemCategoryFromJson(json);
}

@freezed
abstract class CheckoutCartItemVariation with _$CheckoutCartItemVariation {
  const factory CheckoutCartItemVariation({@JsonKey(name: 'name') String? name, @JsonKey(name: 'values') List<CheckoutCartItemValue>? values, @JsonKey(name: 'type') String? type}) =
      _CheckoutCartItemVariation;

  factory CheckoutCartItemVariation.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemVariationFromJson(json);
}

@freezed
abstract class CheckoutCartItemValue with _$CheckoutCartItemValue {
  const factory CheckoutCartItemValue({@JsonKey(name: 'label') String? label}) = _CheckoutCartItemValue;

  factory CheckoutCartItemValue.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemValueFromJson(json);
}

@freezed
abstract class CheckoutCartSummary with _$CheckoutCartSummary {
  const factory CheckoutCartSummary({@JsonKey(name: 'total_stores') int? totalStores, @JsonKey(name: 'total_items') int? totalItems, @JsonKey(name: 'total_price') double? totalPrice}) =
      _CheckoutCartSummary;

  factory CheckoutCartSummary.fromJson(Map<String, dynamic> json) => _$CheckoutCartSummaryFromJson(json);
}
