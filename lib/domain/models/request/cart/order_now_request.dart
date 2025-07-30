import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/request/cart/order_now_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OrderNowRequest {

  OrderNowRequest({required this.selectedDeliveryOption, required this.selectedAddressId, required this.appliedCoupon, required this.paymentMethod});

  factory OrderNowRequest.fromJson(Map<String, dynamic> json) => _$OrderNowRequestFromJson(json);
  final String selectedDeliveryOption;
  final int selectedAddressId;
  final String appliedCoupon;
  final String paymentMethod;

  Map<String, dynamic> toJson() => _$OrderNowRequestToJson(this);
}
