class CheckoutCalculateRequest {
  CheckoutCalculateRequest({
    required this.selectedDeliveryOption,
    required this.selectedAddressId,
    this.appliedCoupon,
    this.dmTips,
  });

  CheckoutCalculateRequest.fromJson(Map<String, dynamic> json)
      : selectedDeliveryOption = json['selected_delivery_option'] ?? '',
        selectedAddressId = json['selected_address_id'] ?? 0,
        appliedCoupon = json['applied_coupon'],
        dmTips = json['dm_tips']?.toDouble();

  final String selectedDeliveryOption;
  final int selectedAddressId;
  final String? appliedCoupon;
  final double? dmTips;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'selected_delivery_option': selectedDeliveryOption,
      'selected_address_id': selectedAddressId,
    };
    
    if (appliedCoupon != null && appliedCoupon!.isNotEmpty) {
      data['applied_coupon'] = appliedCoupon;
    }
    
    if (dmTips != null) {
      data['dm_tips'] = dmTips;
    }
    
    return data;
  }
}