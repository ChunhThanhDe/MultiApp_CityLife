// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/request/cart/add_to_cart_request.freezed.dart';
part '../../../../generated/domain/models/request/cart/add_to_cart_request.g.dart';

@freezed
abstract class AddToCartRequest with _$AddToCartRequest {
  const factory AddToCartRequest({
    @JsonKey(name: 'item_id') required int itemId,
    required String model,
    required double price,
    required int quantity,
    required List<CartVariation> variation,
    @JsonKey(name: 'add_on_ids') required List<int> addOnIds,
    @JsonKey(name: 'add_on_qtys') required List<int> addOnQtys,
  }) = _AddToCartRequest;

  factory AddToCartRequest.fromJson(Map<String, dynamic> json) => _$AddToCartRequestFromJson(json);
}

@freezed
abstract class CartVariation with _$CartVariation {
  const factory CartVariation({required String name, required Map<String, dynamic> values}) = _CartVariation;

  factory CartVariation.fromJson(Map<String, dynamic> json) => _$CartVariationFromJson(json);
}
