// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/wishlist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WishlistResponse _$WishlistResponseFromJson(Map<String, dynamic> json) =>
    _WishlistResponse(
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => WishlistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      store: (json['store'] as List<dynamic>?)
          ?.map((e) => WishlistStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WishlistResponseToJson(_WishlistResponse instance) =>
    <String, dynamic>{'item': instance.item, 'store': instance.store};

_WistlistItem _$WistlistItemFromJson(Map<String, dynamic> json) =>
    _WistlistItem(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => CategoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => Variation.fromJson(e as Map<String, dynamic>))
          .toList(),
      addOns: json['add_ons'] as List<dynamic>?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      choiceOptions: (json['choice_options'] as List<dynamic>?)
          ?.map((e) => ChoiceOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num?)?.toInt(),
      tax: (json['tax'] as num?)?.toInt(),
      taxType: json['tax_type'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      discountType: json['discount_type'] as String?,
      availableTimeStarts: json['available_time_starts'] as String?,
      availableTimeEnds: json['available_time_ends'] as String?,
      veg: (json['veg'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      storeId: (json['store_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      orderCount: (json['order_count'] as num?)?.toInt(),
      avgRating: (json['avg_rating'] as num?)?.toInt(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      moduleId: (json['module_id'] as num?)?.toInt(),
      stock: (json['stock'] as num?)?.toInt(),
      unitId: (json['unit_id'] as num?)?.toInt(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodVariations: json['food_variations'],
      slug: json['slug'] as String?,
      recommended: (json['recommended'] as num?)?.toInt(),
      organic: (json['organic'] as num?)?.toInt(),
      maximumCartQuantity: json['maximum_cart_quantity'],
      isApproved: (json['is_approved'] as num?)?.toInt(),
      isHalal: (json['is_halal'] as num?)?.toInt(),
      storeName: json['store_name'] as String?,
      isCampaign: (json['is_campaign'] as num?)?.toInt(),
      moduleType: json['module_type'] as String?,
      zoneId: (json['zone_id'] as num?)?.toInt(),
      flashSale: (json['flash_sale'] as num?)?.toInt(),
      storeDiscount: (json['store_discount'] as num?)?.toInt(),
      scheduleOrder: json['schedule_order'] as bool?,
      minDeliveryTime: (json['min_delivery_time'] as num?)?.toInt(),
      maxDeliveryTime: (json['max_delivery_time'] as num?)?.toInt(),
      commonConditionId: (json['common_condition_id'] as num?)?.toInt(),
      brandId: (json['brand_id'] as num?)?.toInt(),
      isBasic: (json['is_basic'] as num?)?.toInt(),
      isPrescriptionRequired: (json['is_prescription_required'] as num?)
          ?.toInt(),
      halalTagStatus: (json['halal_tag_status'] as num?)?.toInt(),
      nutritionsName: json['nutritions_name'] as List<dynamic>?,
      allergiesName: json['allergies_name'] as List<dynamic>?,
      genericName: json['generic_name'] as List<dynamic>?,
      unitType: json['unit_type'],
      imageFullUrl: json['image_full_url'] as String?,
      imagesFullUrl: (json['images_full_url'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      storage: (json['storage'] as List<dynamic>?)
          ?.map((e) => StorageElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      translations: json['translations'] as List<dynamic>?,
      module: json['module'] == null
          ? null
          : Module.fromJson(json['module'] as Map<String, dynamic>),
      ecommerceItemDetails: json['ecommerce_item_details'],
      unit: json['unit'],
    );

Map<String, dynamic> _$WistlistItemToJson(_WistlistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'category_id': instance.categoryId,
      'category_ids': instance.categoryIds,
      'variations': instance.variations,
      'add_ons': instance.addOns,
      'attributes': instance.attributes,
      'choice_options': instance.choiceOptions,
      'price': instance.price,
      'tax': instance.tax,
      'tax_type': instance.taxType,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'available_time_starts': instance.availableTimeStarts,
      'available_time_ends': instance.availableTimeEnds,
      'veg': instance.veg,
      'status': instance.status,
      'store_id': instance.storeId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'order_count': instance.orderCount,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
      'module_id': instance.moduleId,
      'stock': instance.stock,
      'unit_id': instance.unitId,
      'images': instance.images,
      'food_variations': instance.foodVariations,
      'slug': instance.slug,
      'recommended': instance.recommended,
      'organic': instance.organic,
      'maximum_cart_quantity': instance.maximumCartQuantity,
      'is_approved': instance.isApproved,
      'is_halal': instance.isHalal,
      'store_name': instance.storeName,
      'is_campaign': instance.isCampaign,
      'module_type': instance.moduleType,
      'zone_id': instance.zoneId,
      'flash_sale': instance.flashSale,
      'store_discount': instance.storeDiscount,
      'schedule_order': instance.scheduleOrder,
      'min_delivery_time': instance.minDeliveryTime,
      'max_delivery_time': instance.maxDeliveryTime,
      'common_condition_id': instance.commonConditionId,
      'brand_id': instance.brandId,
      'is_basic': instance.isBasic,
      'is_prescription_required': instance.isPrescriptionRequired,
      'halal_tag_status': instance.halalTagStatus,
      'nutritions_name': instance.nutritionsName,
      'allergies_name': instance.allergiesName,
      'generic_name': instance.genericName,
      'unit_type': instance.unitType,
      'image_full_url': instance.imageFullUrl,
      'images_full_url': instance.imagesFullUrl,
      'storage': instance.storage,
      'translations': instance.translations,
      'module': instance.module,
      'ecommerce_item_details': instance.ecommerceItemDetails,
      'unit': instance.unit,
    };

_CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) => _CategoryId(
  id: json['id'] as String?,
  position: (json['position'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$CategoryIdToJson(_CategoryId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
      'name': instance.name,
    };

_ChoiceOption _$ChoiceOptionFromJson(Map<String, dynamic> json) =>
    _ChoiceOption(
      name: json['name'] as String?,
      title: json['title'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ChoiceOptionToJson(_ChoiceOption instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'options': instance.options,
    };

_FoodVariation _$FoodVariationFromJson(Map<String, dynamic> json) =>
    _FoodVariation(
      name: json['name'] as String?,
      type: json['type'] as String?,
      min: (json['min'] as num?)?.toInt(),
      max: (json['max'] as num?)?.toInt(),
      required: json['required'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodVariationToJson(_FoodVariation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'min': instance.min,
      'max': instance.max,
      'required': instance.required,
      'values': instance.values,
    };

_Value _$ValueFromJson(Map<String, dynamic> json) => _Value(
  label: json['label'] as String?,
  optionPrice: json['optionPrice'] as String?,
);

Map<String, dynamic> _$ValueToJson(_Value instance) => <String, dynamic>{
  'label': instance.label,
  'optionPrice': instance.optionPrice,
};

_Image _$ImageFromJson(Map<String, dynamic> json) => _Image(
  img: json['img'] as String?,
  storage: $enumDecodeNullable(_$StorageEnumEnumMap, json['storage']),
);

Map<String, dynamic> _$ImageToJson(_Image instance) => <String, dynamic>{
  'img': instance.img,
  'storage': _$StorageEnumEnumMap[instance.storage],
};

const _$StorageEnumEnumMap = {StorageEnum.PUBLIC: 'public'};

_Module _$ModuleFromJson(Map<String, dynamic> json) => _Module(
  id: (json['id'] as num?)?.toInt(),
  moduleName: json['module_name'] as String?,
  moduleType: json['module_type'] as String?,
  thumbnail: json['thumbnail'] as String?,
  status: json['status'] as String?,
  storesCount: (json['stores_count'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  icon: json['icon'] as String?,
  themeId: (json['theme_id'] as num?)?.toInt(),
  description: json['description'] as String?,
  allZoneService: (json['all_zone_service'] as num?)?.toInt(),
  iconFullUrl: json['icon_full_url'] as String?,
  thumbnailFullUrl: json['thumbnail_full_url'] as String?,
  storage: (json['storage'] as List<dynamic>?)
      ?.map((e) => StorageElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ModuleToJson(_Module instance) => <String, dynamic>{
  'id': instance.id,
  'module_name': instance.moduleName,
  'module_type': instance.moduleType,
  'thumbnail': instance.thumbnail,
  'status': instance.status,
  'stores_count': instance.storesCount,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'icon': instance.icon,
  'theme_id': instance.themeId,
  'description': instance.description,
  'all_zone_service': instance.allZoneService,
  'icon_full_url': instance.iconFullUrl,
  'thumbnail_full_url': instance.thumbnailFullUrl,
  'storage': instance.storage,
  'translations': instance.translations,
};

_StorageElement _$StorageElementFromJson(Map<String, dynamic> json) =>
    _StorageElement(
      id: (json['id'] as num?)?.toInt(),
      dataType: $enumDecodeNullable(_$TypeEnumMap, json['data_type']),
      dataId: json['data_id'] as String?,
      key: json['key'] as String?,
      value: $enumDecodeNullable(_$StorageEnumEnumMap, json['value']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$StorageElementToJson(_StorageElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data_type': _$TypeEnumMap[instance.dataType],
      'data_id': instance.dataId,
      'key': instance.key,
      'value': _$StorageEnumEnumMap[instance.value],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$TypeEnumMap = {
  Type.APP_MODELS_ITEM: 'App\\Models\\Item',
  Type.APP_MODELS_MODULE: 'App\\Models\\Module',
  Type.APP_MODELS_STORE: 'App\\Models\\Store',
};

_Translation _$TranslationFromJson(Map<String, dynamic> json) => _Translation(
  id: (json['id'] as num?)?.toInt(),
  translationableType: $enumDecodeNullable(
    _$TypeEnumMap,
    json['translationable_type'],
  ),
  translationableId: (json['translationable_id'] as num?)?.toInt(),
  locale: $enumDecodeNullable(_$LocaleEnumMap, json['locale']),
  key: json['key'] as String?,
  value: json['value'] as String?,
  createdAt: json['created_at'],
  updatedAt: json['updated_at'],
);

Map<String, dynamic> _$TranslationToJson(_Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'translationable_type': _$TypeEnumMap[instance.translationableType],
      'translationable_id': instance.translationableId,
      'locale': _$LocaleEnumMap[instance.locale],
      'key': instance.key,
      'value': instance.value,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$LocaleEnumMap = {Locale.EN: 'en'};

_Variation _$VariationFromJson(Map<String, dynamic> json) => _Variation(
  type: json['type'] as String?,
  price: (json['price'] as num?)?.toInt(),
  stock: (json['stock'] as num?)?.toInt(),
);

Map<String, dynamic> _$VariationToJson(_Variation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'price': instance.price,
      'stock': instance.stock,
    };

_WishlistStore _$WishlistStoreFromJson(Map<String, dynamic> json) =>
    _WishlistStore(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      logo: json['logo'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
      footerText: json['footer_text'],
      minimumOrder: (json['minimum_order'] as num?)?.toInt(),
      comission: json['comission'],
      scheduleOrder: json['schedule_order'] as bool?,
      status: (json['status'] as num?)?.toInt(),
      vendorId: (json['vendor_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      freeDelivery: json['free_delivery'] as bool?,
      coverPhoto: json['cover_photo'] as String?,
      delivery: json['delivery'] as bool?,
      takeAway: json['take_away'] as bool?,
      itemSection: json['item_section'] as bool?,
      tax: (json['tax'] as num?)?.toInt(),
      zoneId: (json['zone_id'] as num?)?.toInt(),
      reviewsSection: json['reviews_section'] as bool?,
      active: json['active'] as bool?,
      offDay: json['off_day'] as String?,
      selfDeliverySystem: (json['self_delivery_system'] as num?)?.toInt(),
      posSystem: json['pos_system'] as bool?,
      minimumShippingCharge: (json['minimum_shipping_charge'] as num?)?.toInt(),
      deliveryTime: json['delivery_time'] as String?,
      veg: (json['veg'] as num?)?.toInt(),
      nonVeg: (json['non_veg'] as num?)?.toInt(),
      orderCount: (json['order_count'] as num?)?.toInt(),
      totalOrder: (json['total_order'] as num?)?.toInt(),
      moduleId: (json['module_id'] as num?)?.toInt(),
      orderPlaceToScheduleInterval:
          (json['order_place_to_schedule_interval'] as num?)?.toInt(),
      featured: (json['featured'] as num?)?.toInt(),
      perKmShippingCharge: (json['per_km_shipping_charge'] as num?)?.toInt(),
      prescriptionOrder: json['prescription_order'] as bool?,
      slug: json['slug'] as String?,
      maximumShippingCharge: json['maximum_shipping_charge'],
      cutlery: json['cutlery'] as bool?,
      metaTitle: json['meta_title'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaImage: json['meta_image'] as String?,
      announcement: (json['announcement'] as num?)?.toInt(),
      announcementMessage: json['announcement_message'],
      storeBusinessModel: json['store_business_model'] as String?,
      packageId: json['package_id'],
      pickupZoneId: json['pickup_zone_id'],
      comment: json['comment'],
      isRecommended: json['is_recommended'] as bool?,
      minimumStockForWarning: (json['minimum_stock_for_warning'] as num?)
          ?.toInt(),
      halalTagStatus: json['halal_tag_status'] as bool?,
      extraPackagingStatus: json['extra_packaging_status'] as bool?,
      extraPackagingAmount: (json['extra_packaging_amount'] as num?)?.toInt(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      avgRating: (json['avg_rating'] as num?)?.toInt(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      positiveRating: (json['positive_rating'] as num?)?.toInt(),
      totalItems: json['total_items'],
      totalCampaigns: json['total_campaigns'],
      currentOpeningTime: json['current_opening_time'] as String?,
      gstStatus: json['gst_status'] as bool?,
      gstCode: json['gst_code'] as String?,
      logoFullUrl: json['logo_full_url'] as String?,
      coverPhotoFullUrl: json['cover_photo_full_url'] as String?,
      metaImageFullUrl: json['meta_image_full_url'] as String?,
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      storage: (json['storage'] as List<dynamic>?)
          ?.map((e) => StorageElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      module: json['module'] == null
          ? null
          : Module.fromJson(json['module'] as Map<String, dynamic>),
      schedules: (json['schedules'] as List<dynamic>?)
          ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WishlistStoreToJson(_WishlistStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'logo': instance.logo,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'footer_text': instance.footerText,
      'minimum_order': instance.minimumOrder,
      'comission': instance.comission,
      'schedule_order': instance.scheduleOrder,
      'status': instance.status,
      'vendor_id': instance.vendorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'free_delivery': instance.freeDelivery,
      'cover_photo': instance.coverPhoto,
      'delivery': instance.delivery,
      'take_away': instance.takeAway,
      'item_section': instance.itemSection,
      'tax': instance.tax,
      'zone_id': instance.zoneId,
      'reviews_section': instance.reviewsSection,
      'active': instance.active,
      'off_day': instance.offDay,
      'self_delivery_system': instance.selfDeliverySystem,
      'pos_system': instance.posSystem,
      'minimum_shipping_charge': instance.minimumShippingCharge,
      'delivery_time': instance.deliveryTime,
      'veg': instance.veg,
      'non_veg': instance.nonVeg,
      'order_count': instance.orderCount,
      'total_order': instance.totalOrder,
      'module_id': instance.moduleId,
      'order_place_to_schedule_interval': instance.orderPlaceToScheduleInterval,
      'featured': instance.featured,
      'per_km_shipping_charge': instance.perKmShippingCharge,
      'prescription_order': instance.prescriptionOrder,
      'slug': instance.slug,
      'maximum_shipping_charge': instance.maximumShippingCharge,
      'cutlery': instance.cutlery,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'meta_image': instance.metaImage,
      'announcement': instance.announcement,
      'announcement_message': instance.announcementMessage,
      'store_business_model': instance.storeBusinessModel,
      'package_id': instance.packageId,
      'pickup_zone_id': instance.pickupZoneId,
      'comment': instance.comment,
      'is_recommended': instance.isRecommended,
      'minimum_stock_for_warning': instance.minimumStockForWarning,
      'halal_tag_status': instance.halalTagStatus,
      'extra_packaging_status': instance.extraPackagingStatus,
      'extra_packaging_amount': instance.extraPackagingAmount,
      'ratings': instance.ratings,
      'avg_rating': instance.avgRating,
      'rating_count': instance.ratingCount,
      'positive_rating': instance.positiveRating,
      'total_items': instance.totalItems,
      'total_campaigns': instance.totalCampaigns,
      'current_opening_time': instance.currentOpeningTime,
      'gst_status': instance.gstStatus,
      'gst_code': instance.gstCode,
      'logo_full_url': instance.logoFullUrl,
      'cover_photo_full_url': instance.coverPhotoFullUrl,
      'meta_image_full_url': instance.metaImageFullUrl,
      'translations': instance.translations,
      'storage': instance.storage,
      'module': instance.module,
      'schedules': instance.schedules,
    };

_Schedule _$ScheduleFromJson(Map<String, dynamic> json) => _Schedule(
  id: (json['id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  day: (json['day'] as num?)?.toInt(),
  openingTime: json['opening_time'] as String?,
  closingTime: json['closing_time'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ScheduleToJson(_Schedule instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'day': instance.day,
  'opening_time': instance.openingTime,
  'closing_time': instance.closingTime,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
