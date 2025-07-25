// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/request/cart/update_cart_request.freezed.dart';
part '../../../../generated/domain/models/request/cart/update_cart_request.g.dart';

@freezed
abstract class UpdateCartRequest with _$UpdateCartRequest {
  const factory UpdateCartRequest({@JsonKey(name: 'cart_id') required int cartId, required int quantity}) = _UpdateCartRequest;

  factory UpdateCartRequest.fromJson(Map<String, dynamic> json) => _$UpdateCartRequestFromJson(json);
}
