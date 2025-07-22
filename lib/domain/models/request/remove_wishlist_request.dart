// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sixam_mart_user/domain/enums/wishlist_item_type.dart';

part '../../../generated/domain/models/request/remove_wishlist_request.freezed.dart';
part '../../../generated/domain/models/request/remove_wishlist_request.g.dart';

@freezed
abstract class RemoveWishlistRequest with _$RemoveWishlistRequest {
  const factory RemoveWishlistRequest({required WishlistItemType type, required int id}) = _RemoveWishlistRequest;

  factory RemoveWishlistRequest.fromJson(Map<String, dynamic> json) => _$RemoveWishlistRequestFromJson(json);
}
