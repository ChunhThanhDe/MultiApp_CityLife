// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_checkout_summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCheckoutSummaryResponse _$GetCheckoutSummaryResponseFromJson(
  Map<String, dynamic> json,
) => _GetCheckoutSummaryResponse(
  defaultAddress: json['default_address'] == null
      ? null
      : CheckoutAddress.fromJson(
          json['default_address'] as Map<String, dynamic>,
        ),
  addresses: (json['addresses'] as List<dynamic>?)
      ?.map((e) => CheckoutAddress.fromJson(e as Map<String, dynamic>))
      .toList(),
  deliveryOptions: (json['delivery_options'] as List<dynamic>?)
      ?.map((e) => DeliveryOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  paymentMethods: (json['payment_methods'] as List<dynamic>?)
      ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
      .toList(),
  cards: json['cards'] as List<dynamic>?,
  availableCoupons: (json['available_coupons'] as List<dynamic>?)
      ?.map((e) => AvailableCoupon.fromJson(e as Map<String, dynamic>))
      .toList(),
  cart: (json['cart'] as List<dynamic>?)
      ?.map((e) => CheckoutCartStore.fromJson(e as Map<String, dynamic>))
      .toList(),
  cartSummary: json['cart_summary'] == null
      ? null
      : CheckoutCartSummary.fromJson(
          json['cart_summary'] as Map<String, dynamic>,
        ),
  subtotal: (json['subtotal'] as num?)?.toDouble(),
  deliveryFee: (json['delivery_fee'] as num?)?.toDouble(),
  tax: (json['tax'] as num?)?.toDouble(),
  discount: (json['discount'] as num?)?.toDouble(),
  total: (json['total'] as num?)?.toDouble(),
);

Map<String, dynamic> _$GetCheckoutSummaryResponseToJson(
  _GetCheckoutSummaryResponse instance,
) => <String, dynamic>{
  'default_address': instance.defaultAddress,
  'addresses': instance.addresses,
  'delivery_options': instance.deliveryOptions,
  'payment_methods': instance.paymentMethods,
  'cards': instance.cards,
  'available_coupons': instance.availableCoupons,
  'cart': instance.cart,
  'cart_summary': instance.cartSummary,
  'subtotal': instance.subtotal,
  'delivery_fee': instance.deliveryFee,
  'tax': instance.tax,
  'discount': instance.discount,
  'total': instance.total,
};

_CheckoutAddress _$CheckoutAddressFromJson(Map<String, dynamic> json) =>
    _CheckoutAddress(
      id: (json['id'] as num?)?.toInt(),
      addressType: json['address_type'] as String?,
      contactPersonNumber: json['contact_person_number'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      contactPersonName: json['contact_person_name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      zoneId: (json['zone_id'] as num?)?.toInt(),
      floor: json['floor'] as String?,
      road: json['road'] as String?,
      house: json['house'] as String?,
    );

Map<String, dynamic> _$CheckoutAddressToJson(_CheckoutAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address_type': instance.addressType,
      'contact_person_number': instance.contactPersonNumber,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'user_id': instance.userId,
      'contact_person_name': instance.contactPersonName,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'zone_id': instance.zoneId,
      'floor': instance.floor,
      'road': instance.road,
      'house': instance.house,
    };

_DeliveryOption _$DeliveryOptionFromJson(Map<String, dynamic> json) =>
    _DeliveryOption(
      key: (json['key'] as num?)?.toInt(),
      label: json['label'] as String?,
      fee: (json['fee'] as num?)?.toDouble(),
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$DeliveryOptionToJson(_DeliveryOption instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'fee': instance.fee,
      'desc': instance.desc,
    };

_PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    _PaymentMethod(
      key: json['key'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$PaymentMethodToJson(_PaymentMethod instance) =>
    <String, dynamic>{'key': instance.key, 'label': instance.label};

_AvailableCoupon _$AvailableCouponFromJson(Map<String, dynamic> json) =>
    _AvailableCoupon(
      code: json['code'] as String?,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$AvailableCouponToJson(_AvailableCoupon instance) =>
    <String, dynamic>{'code': instance.code, 'desc': instance.desc};

_CheckoutCartStore _$CheckoutCartStoreFromJson(Map<String, dynamic> json) =>
    _CheckoutCartStore(
      storeId: (json['store_id'] as num?)?.toInt(),
      storeName: json['store_name'] as String?,
      storeLogo: json['store_logo'] as String?,
      storeAddress: json['store_address'] as String?,
      storePhone: json['store_phone'] as String?,
      storeMinimumOrder: (json['store_minimum_order'] as num?)?.toInt(),
      storeDeliveryTime: json['store_delivery_time'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CheckoutCartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      storeTotalItems: (json['store_total_items'] as num?)?.toInt(),
      storeTotalPrice: (json['store_total_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CheckoutCartStoreToJson(_CheckoutCartStore instance) =>
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

_CheckoutCartItem _$CheckoutCartItemFromJson(Map<String, dynamic> json) =>
    _CheckoutCartItem(
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
            (e) =>
                CheckoutCartItemVariation.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      itemAddOns: json['item_add_ons'] as List<dynamic>?,
      itemAddOnQuantities: json['item_add_on_quantities'] as List<dynamic>?,
      itemDescription: json['item_description'] as String?,
      itemCategory: json['item_category'] == null
          ? null
          : CheckoutCartItemCategory.fromJson(
              json['item_category'] as Map<String, dynamic>,
            ),
      itemAvailable: (json['item_available'] as num?)?.toInt(),
      itemMaximumCartQuantity: json['item_maximum_cart_quantity'],
      isFavorite: json['is_favorite'] as bool?,
    );

Map<String, dynamic> _$CheckoutCartItemToJson(_CheckoutCartItem instance) =>
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

_CheckoutCartItemCategory _$CheckoutCartItemCategoryFromJson(
  Map<String, dynamic> json,
) => _CheckoutCartItemCategory(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  position: (json['position'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  priority: (json['priority'] as num?)?.toInt(),
  moduleId: (json['module_id'] as num?)?.toInt(),
  slug: json['slug'] as String?,
  featured: (json['featured'] as num?)?.toInt(),
  imageFullUrl: json['image_full_url'] as String?,
  storage: json['storage'] as List<dynamic>?,
  translations: json['translations'] as List<dynamic>?,
);

Map<String, dynamic> _$CheckoutCartItemCategoryToJson(
  _CheckoutCartItemCategory instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'parent_id': instance.parentId,
  'position': instance.position,
  'status': instance.status,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'priority': instance.priority,
  'module_id': instance.moduleId,
  'slug': instance.slug,
  'featured': instance.featured,
  'image_full_url': instance.imageFullUrl,
  'storage': instance.storage,
  'translations': instance.translations,
};

_CheckoutCartItemVariation _$CheckoutCartItemVariationFromJson(
  Map<String, dynamic> json,
) => _CheckoutCartItemVariation(
  name: json['name'] as String?,
  values: (json['values'] as List<dynamic>?)
      ?.map((e) => CheckoutCartItemValue.fromJson(e as Map<String, dynamic>))
      .toList(),
  type: json['type'] as String?,
);

Map<String, dynamic> _$CheckoutCartItemVariationToJson(
  _CheckoutCartItemVariation instance,
) => <String, dynamic>{
  'name': instance.name,
  'values': instance.values,
  'type': instance.type,
};

_CheckoutCartItemValue _$CheckoutCartItemValueFromJson(
  Map<String, dynamic> json,
) => _CheckoutCartItemValue(label: json['label'] as String?);

Map<String, dynamic> _$CheckoutCartItemValueToJson(
  _CheckoutCartItemValue instance,
) => <String, dynamic>{'label': instance.label};

_CheckoutCartSummary _$CheckoutCartSummaryFromJson(Map<String, dynamic> json) =>
    _CheckoutCartSummary(
      totalStores: (json['total_stores'] as num?)?.toInt(),
      totalItems: (json['total_items'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CheckoutCartSummaryToJson(
  _CheckoutCartSummary instance,
) => <String, dynamic>{
  'total_stores': instance.totalStores,
  'total_items': instance.totalItems,
  'total_price': instance.totalPrice,
};
