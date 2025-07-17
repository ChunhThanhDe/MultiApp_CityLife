// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_store_info_response.freezed.dart';
part '../../../generated/domain/models/response/get_store_info_response.g.dart';

@freezed
abstract class StoreInfoResponse with _$StoreInfoResponse {
  const factory StoreInfoResponse({
    required StoreInfo store,
    required List<MenuCategory> menu,
  }) = _StoreInfoResponse;

  factory StoreInfoResponse.fromJson(Map<String, dynamic> json) => _$StoreInfoResponseFromJson(json);
}

@freezed
abstract class StoreInfo with _$StoreInfo {
  const factory StoreInfo({
    required int id,
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    required double rating,
    @JsonKey(name: 'review_count') required int reviewCount,
    required String module,
    required List<String> tags,
    required StoreMenuServices services,
    @JsonKey(name: 'logo_url') required String logoUrl,
    String? comment,
  }) = _StoreInfo;

  factory StoreInfo.fromJson(Map<String, dynamic> json) => _$StoreInfoFromJson(json);
}

@freezed
abstract class StoreMenuServices with _$StoreMenuServices {
  const factory StoreMenuServices({
    @JsonKey(name: 'delivery_fee') required int deliveryFee,
    @JsonKey(name: 'delivery_time') required String deliveryTime,
    @JsonKey(name: 'take_away') required bool takeAway,
    @JsonKey(name: 'self_drive_thru') required bool selfDriveThru,
  }) = _StoreMenuServices;

  factory StoreMenuServices.fromJson(Map<String, dynamic> json) => _$StoreMenuServicesFromJson(json);
}

@freezed
abstract class MenuCategory with _$MenuCategory {
  const factory MenuCategory({
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'category_name') required String categoryName,
    required List<MenuItem> items,
  }) = _MenuCategory;

  factory MenuCategory.fromJson(Map<String, dynamic> json) => _$MenuCategoryFromJson(json);
}

@freezed
abstract class MenuItem with _$MenuItem {
  const factory MenuItem({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    required int price,
    @JsonKey(name: 'avg_rating') required double avgRating,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) => _$MenuItemFromJson(json);
}
