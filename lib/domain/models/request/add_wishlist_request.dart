// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sixam_mart_user/domain/enums/wishlist_item_type.dart';

part '../../../generated/domain/models/request/add_wishlist_request.freezed.dart';
part '../../../generated/domain/models/request/add_wishlist_request.g.dart';

@freezed
abstract class AddWishlistRequest with _$AddWishlistRequest {
  const factory AddWishlistRequest({required WishlistItemType type, required int id}) = _AddWishlistRequest;

  factory AddWishlistRequest.fromJson(Map<String, dynamic> json) => _$AddWishlistRequestFromJson(json);
}
