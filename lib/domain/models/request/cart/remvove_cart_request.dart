import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/request/cart/remvove_cart_request.freezed.dart';
part '../../../../generated/domain/models/request/cart/remvove_cart_request.g.dart';

@freezed
abstract class RemoveFromCartRequest with _$RemoveFromCartRequest {
  const factory RemoveFromCartRequest({@JsonKey(name: 'cart_id') required int cartId}) = _RemoveFromCartRequest;

  factory RemoveFromCartRequest.fromJson(Map<String, dynamic> json) => _$RemoveFromCartRequestFromJson(json);
}
