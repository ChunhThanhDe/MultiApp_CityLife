// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_cart_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCartListResponse _$GetCartListResponseFromJson(Map<String, dynamic> json) =>
    _GetCartListResponse(
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => GetCartListStore.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: json['summary'] == null
          ? null
          : GetCartListSummary.fromJson(
              json['summary'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$GetCartListResponseToJson(
  _GetCartListResponse instance,
) => <String, dynamic>{'stores': instance.stores, 'summary': instance.summary};

_GetCartListStore _$GetCartListStoreFromJson(Map<String, dynamic> json) =>
    _GetCartListStore(
      storeId: (json['store_id'] as num?)?.toInt(),
      storeName: json['store_name'] as String?,
      storeLogo: json['store_logo'] as String?,
      storeAddress: json['store_address'] as String?,
      storePhone: json['store_phone'] as String?,
      storeMinimumOrder: (json['store_minimum_order'] as num?)?.toInt(),
      storeDeliveryTime: json['store_delivery_time'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => GetCartListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      storeTotalItems: (json['store_total_items'] as num?)?.toInt(),
      storeTotalPrice: (json['store_total_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GetCartListStoreToJson(_GetCartListStore instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'store_logo': instance.storeLogo,
      'store_address': instance.storeAddress,
      'store_phone': instance.storePhone,
      'store_minimum_order': instance.storeMinimumOrder,
      'store_delivery_time': instance.storeDeliveryTime,
      'items': instance.items,
      'store_total_items': instance.storeTotalItems,
      'store_total_price': instance.storeTotalPrice,
    };

_GetCartListItem _$GetCartListItemFromJson(Map<String, dynamic> json) =>
    _GetCartListItem(
      cartId: (json['cart_id'] as num?)?.toInt(),
      itemId: (json['item_id'] as num?)?.toInt(),
      itemType: json['item_type'] as String?,
      itemName: json['item_name'] as String?,
      itemImage: json['item_image'] as String?,
      itemPrice: (json['item_price'] as num?)?.toDouble(),
      itemOriginalPrice: (json['item_original_price'] as num?)?.toDouble(),
      itemDiscount: (json['item_discount'] as num?)?.toInt(),
      itemDiscountType: json['item_discount_type'] as String?,
      itemQuantity: (json['item_quantity'] as num?)?.toInt(),
      itemTotalPrice: (json['item_total_price'] as num?)?.toDouble(),
      itemVariation: (json['item_variation'] as List<dynamic>?)
          ?.map(
            (e) => GetCartListItemVariation.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      itemAddOns: json['item_add_ons'] as List<dynamic>?,
      itemAddOnQuantities: json['item_add_on_quantities'] as List<dynamic>?,
      itemDescription: json['item_description'] as String?,
      itemCategory: json['item_category'] == null
          ? null
          : GetCartListItemCategory.fromJson(
              json['item_category'] as Map<String, dynamic>,
            ),
      itemAvailable: (json['item_available'] as num?)?.toInt(),
      itemMaximumCartQuantity: json['item_maximum_cart_quantity'],
      isFavorite: json['is_favorite'] as bool?,
    );

Map<String, dynamic> _$GetCartListItemToJson(_GetCartListItem instance) =>
    <String, dynamic>{
      'cart_id': instance.cartId,
      'item_id': instance.itemId,
      'item_type': instance.itemType,
      'item_name': instance.itemName,
      'item_image': instance.itemImage,
      'item_price': instance.itemPrice,
      'item_original_price': instance.itemOriginalPrice,
      'item_discount': instance.itemDiscount,
      'item_discount_type': instance.itemDiscountType,
      'item_quantity': instance.itemQuantity,
      'item_total_price': instance.itemTotalPrice,
      'item_variation': instance.itemVariation,
      'item_add_ons': instance.itemAddOns,
      'item_add_on_quantities': instance.itemAddOnQuantities,
      'item_description': instance.itemDescription,
      'item_category': instance.itemCategory,
      'item_available': instance.itemAvailable,
      'item_maximum_cart_quantity': instance.itemMaximumCartQuantity,
      'is_favorite': instance.isFavorite,
    };

_GetCartListItemCategory _$GetCartListItemCategoryFromJson(
  Map<String, dynamic> json,
) => _GetCartListItemCategory(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  position: (json['position'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  priority: (json['priority'] as num?)?.toInt(),
  moduleId: (json['module_id'] as num?)?.toInt(),
  slug: json['slug'] as String?,
  featured: (json['featured'] as num?)?.toInt(),
  imageFullUrl: json['image_full_url'] as String?,
);

Map<String, dynamic> _$GetCartListItemCategoryToJson(
  _GetCartListItemCategory instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'parent_id': instance.parentId,
  'position': instance.position,
  'status': instance.status,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'priority': instance.priority,
  'module_id': instance.moduleId,
  'slug': instance.slug,
  'featured': instance.featured,
  'image_full_url': instance.imageFullUrl,
};

_GetCartListItemVariation _$GetCartListItemVariationFromJson(
  Map<String, dynamic> json,
) => _GetCartListItemVariation(
  name: json['name'] as String?,
  values: (json['values'] as List<dynamic>?)
      ?.map((e) => GetCartListItemValue.fromJson(e as Map<String, dynamic>))
      .toList(),
  type: json['type'] as String?,
);

Map<String, dynamic> _$GetCartListItemVariationToJson(
  _GetCartListItemVariation instance,
) => <String, dynamic>{
  'name': instance.name,
  'values': instance.values,
  'type': instance.type,
};

_GetCartListItemValue _$GetCartListItemValueFromJson(
  Map<String, dynamic> json,
) => _GetCartListItemValue(label: json['label'] as String?);

Map<String, dynamic> _$GetCartListItemValueToJson(
  _GetCartListItemValue instance,
) => <String, dynamic>{'label': instance.label};

_GetCartListSummary _$GetCartListSummaryFromJson(Map<String, dynamic> json) =>
    _GetCartListSummary(
      totalStores: (json['total_stores'] as num?)?.toInt(),
      totalItems: (json['total_items'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GetCartListSummaryToJson(_GetCartListSummary instance) =>
    <String, dynamic>{
      'total_stores': instance.totalStores,
      'total_items': instance.totalItems,
      'total_price': instance.totalPrice,
    };
