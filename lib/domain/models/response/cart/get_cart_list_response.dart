// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/models/response/cart/get_cart_list_response.freezed.dart';
part '../../../../generated/domain/models/response/cart/get_cart_list_response.g.dart';

@freezed
abstract class GetCartListResponse with _$GetCartListResponse {
  const factory GetCartListResponse({@JsonKey(name: "stores") List<GetCartListStore>? stores, @JsonKey(name: "summary") GetCartListSummary? summary}) = _GetCartListResponse;

  factory GetCartListResponse.fromJson(Map<String, dynamic> json) => _$GetCartListResponseFromJson(json);
}

@freezed
abstract class GetCartListStore with _$GetCartListStore {
  const factory GetCartListStore({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "store_logo") String? storeLogo,
    @JsonKey(name: "store_address") String? storeAddress,
    @JsonKey(name: "store_phone") String? storePhone,
    @JsonKey(name: "store_minimum_order") int? storeMinimumOrder,
    @JsonKey(name: "store_delivery_time") String? storeDeliveryTime,
    @JsonKey(name: "items") List<GetCartListItem>? items,
    @JsonKey(name: "store_total_items") int? storeTotalItems,
    @JsonKey(name: "store_total_price") double? storeTotalPrice,
  }) = _GetCartListStore;

  factory GetCartListStore.fromJson(Map<String, dynamic> json) => _$GetCartListStoreFromJson(json);
}

@freezed
abstract class GetCartListItem with _$GetCartListItem {
  const factory GetCartListItem({
    @JsonKey(name: "cart_id") int? cartId,
    @JsonKey(name: "item_id") int? itemId,
    @JsonKey(name: "item_type") String? itemType,
    @JsonKey(name: "item_name") String? itemName,
    @JsonKey(name: "item_image") String? itemImage,
    @JsonKey(name: "item_price") double? itemPrice,
    @JsonKey(name: "item_original_price") double? itemOriginalPrice,
    @JsonKey(name: "item_discount") int? itemDiscount,
    @JsonKey(name: "item_discount_type") String? itemDiscountType,
    @JsonKey(name: "item_quantity") int? itemQuantity,
    @JsonKey(name: "item_total_price") double? itemTotalPrice,
    @JsonKey(name: "item_variation") List<GetCartListItemVariation>? itemVariation,
    @JsonKey(name: "item_add_ons") List<dynamic>? itemAddOns,
    @JsonKey(name: "item_add_on_quantities") List<dynamic>? itemAddOnQuantities,
    @JsonKey(name: "item_description") String? itemDescription,
    @JsonKey(name: "item_category") GetCartListItemCategory? itemCategory,
    @JsonKey(name: "item_available") int? itemAvailable,
    @JsonKey(name: "item_maximum_cart_quantity") dynamic itemMaximumCartQuantity,
    @JsonKey(name: "is_favorite") bool? isFavorite,
  }) = _GetCartListItem;

  factory GetCartListItem.fromJson(Map<String, dynamic> json) => _$GetCartListItemFromJson(json);
}

@freezed
abstract class GetCartListItemCategory with _$GetCartListItemCategory {
  const factory GetCartListItemCategory({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "parent_id") int? parentId,
    @JsonKey(name: "position") int? position,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "module_id") int? moduleId,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "featured") int? featured,
    @JsonKey(name: "image_full_url") String? imageFullUrl,
  }) = _GetCartListItemCategory;

  factory GetCartListItemCategory.fromJson(Map<String, dynamic> json) => _$GetCartListItemCategoryFromJson(json);
}

@freezed
abstract class GetCartListItemVariation with _$GetCartListItemVariation {
  const factory GetCartListItemVariation({@JsonKey(name: "name") String? name, @JsonKey(name: "values") List<GetCartListItemValue>? values, @JsonKey(name: "type") String? type}) =
      _GetCartListItemVariation;

  factory GetCartListItemVariation.fromJson(Map<String, dynamic> json) => _$GetCartListItemVariationFromJson(json);
}

@freezed
abstract class GetCartListItemValue with _$GetCartListItemValue {
  const factory GetCartListItemValue({@JsonKey(name: "label") String? label}) = _GetCartListItemValue;

  factory GetCartListItemValue.fromJson(Map<String, dynamic> json) => _$GetCartListItemValueFromJson(json);
}

@freezed
abstract class GetCartListSummary with _$GetCartListSummary {
  const factory GetCartListSummary({@JsonKey(name: "total_stores") int? totalStores, @JsonKey(name: "total_items") int? totalItems, @JsonKey(name: "total_price") double? totalPrice}) =
      _GetCartListSummary;

  factory GetCartListSummary.fromJson(Map<String, dynamic> json) => _$GetCartListSummaryFromJson(json);
}
