class CheckoutCalculateResponse {
  CheckoutCalculateResponse({
    required this.subtotal,
    required this.deliveryFee,
    required this.tax,
    required this.discount,
    required this.dmTips,
    required this.total,
    required this.breakdown,
  });

  CheckoutCalculateResponse.fromJson(Map<String, dynamic> json)
      : subtotal = (json['subtotal'] as num?)?.toDouble() ?? 0.0,
        deliveryFee = (json['delivery_fee'] as num?)?.toDouble() ?? 0.0,
        tax = (json['tax'] as num?)?.toDouble() ?? 0.0,
        discount = (json['discount'] as num?)?.toDouble() ?? 0.0,
        dmTips = (json['dm_tips'] as num?)?.toDouble() ?? 0.0,
        total = (json['total'] as num?)?.toDouble() ?? 0.0,
        breakdown = CheckoutBreakdown.fromJson(json['breakdown'] ?? {});

  final double subtotal;
  final double deliveryFee;
  final double tax;
  final double discount;
  final double dmTips;
  final double total;
  final CheckoutBreakdown breakdown;

  Map<String, dynamic> toJson() {
    return {
      'subtotal': subtotal,
      'delivery_fee': deliveryFee,
      'tax': tax,
      'discount': discount,
      'dm_tips': dmTips,
      'total': total,
      'breakdown': breakdown.toJson(),
    };
  }
}

class CheckoutBreakdown {
  CheckoutBreakdown({
    required this.subtotal,
    required this.deliveryFee,
    required this.tax,
    required this.discount,
    required this.dmTips,
    required this.total,
  });

  CheckoutBreakdown.fromJson(Map<String, dynamic> json)
      : subtotal = (json['subtotal'] as num?)?.toDouble() ?? 0.0,
        deliveryFee = (json['delivery_fee'] as num?)?.toDouble() ?? 0.0,
        tax = (json['tax'] as num?)?.toDouble() ?? 0.0,
        discount = (json['discount'] as num?)?.toDouble() ?? 0.0,
        dmTips = (json['dm_tips'] as num?)?.toDouble() ?? 0.0,
        total = (json['total'] as num?)?.toDouble() ?? 0.0;

  final double subtotal;
  final double deliveryFee;
  final double tax;
  final double discount;
  final double dmTips;
  final double total;

  Map<String, dynamic> toJson() {
    return {
      'subtotal': subtotal,
      'delivery_fee': deliveryFee,
      'tax': tax,
      'discount': discount,
      'dm_tips': dmTips,
      'total': total,
    };
  }
}