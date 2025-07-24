// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_orders_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOrdersHistoryResponse _$GetOrdersHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _GetOrdersHistoryResponse(
  totalSize: (json['total_size'] as num?)?.toInt(),
  limit: json['limit'] as String?,
  offset: json['offset'] as String?,
  orders: (json['orders'] as List<dynamic>?)
      ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetOrdersHistoryResponseToJson(
  _GetOrdersHistoryResponse instance,
) => <String, dynamic>{
  'total_size': instance.totalSize,
  'limit': instance.limit,
  'offset': instance.offset,
  'orders': instance.orders,
};

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  orderAmount: (json['order_amount'] as num?)?.toDouble(),
  couponDiscountAmount: (json['coupon_discount_amount'] as num?)?.toInt(),
  couponDiscountTitle: json['coupon_discount_title'] as String?,
  paymentStatus: json['payment_status'] as String?,
  orderStatus: const OrderStatusConverter().fromJson(
    json['order_status'] as String?,
  ),
  totalTaxAmount: (json['total_tax_amount'] as num?)?.toDouble(),
  paymentMethod: json['payment_method'] as String?,
  transactionReference: json['transaction_reference'],
  deliveryAddressId: json['delivery_address_id'],
  deliveryManId: json['delivery_man_id'],
  couponCode: json['coupon_code'],
  orderNote: json['order_note'] as String?,
  orderType: json['order_type'] as String?,
  checked: (json['checked'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  deliveryCharge: (json['delivery_charge'] as num?)?.toInt(),
  scheduleAt: json['schedule_at'] == null
      ? null
      : DateTime.parse(json['schedule_at'] as String),
  callback: json['callback'],
  otp: json['otp'] as String?,
  pending: json['pending'] == null
      ? null
      : DateTime.parse(json['pending'] as String),
  accepted: json['accepted'],
  confirmed: json['confirmed'] == null
      ? null
      : DateTime.parse(json['confirmed'] as String),
  processing: json['processing'] == null
      ? null
      : DateTime.parse(json['processing'] as String),
  handover: json['handover'],
  pickedUp: json['picked_up'] == null
      ? null
      : DateTime.parse(json['picked_up'] as String),
  delivered: json['delivered'],
  canceled: json['canceled'],
  refundRequested: json['refund_requested'],
  refunded: json['refunded'],
  deliveryAddress: json['delivery_address'] == null
      ? null
      : DeliveryAddress.fromJson(
          json['delivery_address'] as Map<String, dynamic>,
        ),
  scheduled: (json['scheduled'] as num?)?.toInt(),
  storeDiscountAmount: (json['store_discount_amount'] as num?)?.toInt(),
  originalDeliveryCharge: (json['original_delivery_charge'] as num?)?.toInt(),
  failed: json['failed'],
  adjusment: json['adjusment'] as String?,
  edited: (json['edited'] as num?)?.toInt(),
  deliveryTime: json['delivery_time'],
  zoneId: (json['zone_id'] as num?)?.toInt(),
  moduleId: (json['module_id'] as num?)?.toInt(),
  orderAttachment: json['order_attachment'],
  parcelCategoryId: json['parcel_category_id'],
  receiverDetails: json['receiver_details'],
  chargePayer: json['charge_payer'],
  distance: (json['distance'] as num?)?.toDouble(),
  dmTips: (json['dm_tips'] as num?)?.toInt(),
  freeDeliveryBy: json['free_delivery_by'],
  refundRequestCanceled: json['refund_request_canceled'],
  prescriptionOrder: json['prescription_order'] as bool?,
  taxStatus: json['tax_status'] as String?,
  dmVehicleId: json['dm_vehicle_id'],
  cancellationReason: json['cancellation_reason'],
  canceledBy: json['canceled_by'],
  couponCreatedBy: json['coupon_created_by'],
  discountOnProductBy: json['discount_on_product_by'] as String?,
  processingTime: (json['processing_time'] as num?)?.toInt(),
  unavailableItemNote: json['unavailable_item_note'],
  cutlery: json['cutlery'] as bool?,
  deliveryInstruction: json['delivery_instruction'],
  taxPercentage: (json['tax_percentage'] as num?)?.toInt(),
  additionalCharge: (json['additional_charge'] as num?)?.toInt(),
  orderProof: json['order_proof'],
  partiallyPaidAmount: (json['partially_paid_amount'] as num?)?.toInt(),
  isGuest: json['is_guest'] as bool?,
  flashAdminDiscountAmount: (json['flash_admin_discount_amount'] as num?)
      ?.toInt(),
  flashStoreDiscountAmount: (json['flash_store_discount_amount'] as num?)
      ?.toInt(),
  cashBackId: json['cash_back_id'],
  extraPackagingAmount: (json['extra_packaging_amount'] as num?)?.toInt(),
  refBonusAmount: (json['ref_bonus_amount'] as num?)?.toInt(),
  detailsCount: (json['details_count'] as num?)?.toInt(),
  store: json['store'] == null
      ? null
      : Store.fromJson(json['store'] as Map<String, dynamic>),
  deliveryMan: json['delivery_man'],
  moduleType: json['module_type'] as String?,
  orderAttachmentFullUrl: json['order_attachment_full_url'] as List<dynamic>?,
  orderProofFullUrl: json['order_proof_full_url'] as List<dynamic>?,
  parcelCategory: json['parcel_category'],
  storage: json['storage'] as List<dynamic>?,
  module: json['module'] == null
      ? null
      : Module.fromJson(json['module'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'order_amount': instance.orderAmount,
  'coupon_discount_amount': instance.couponDiscountAmount,
  'coupon_discount_title': instance.couponDiscountTitle,
  'payment_status': instance.paymentStatus,
  'order_status': _$JsonConverterToJson<String?, OrderStatus>(
    instance.orderStatus,
    const OrderStatusConverter().toJson,
  ),
  'total_tax_amount': instance.totalTaxAmount,
  'payment_method': instance.paymentMethod,
  'transaction_reference': instance.transactionReference,
  'delivery_address_id': instance.deliveryAddressId,
  'delivery_man_id': instance.deliveryManId,
  'coupon_code': instance.couponCode,
  'order_note': instance.orderNote,
  'order_type': instance.orderType,
  'checked': instance.checked,
  'store_id': instance.storeId,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'delivery_charge': instance.deliveryCharge,
  'schedule_at': instance.scheduleAt?.toIso8601String(),
  'callback': instance.callback,
  'otp': instance.otp,
  'pending': instance.pending?.toIso8601String(),
  'accepted': instance.accepted,
  'confirmed': instance.confirmed?.toIso8601String(),
  'processing': instance.processing?.toIso8601String(),
  'handover': instance.handover,
  'picked_up': instance.pickedUp?.toIso8601String(),
  'delivered': instance.delivered,
  'canceled': instance.canceled,
  'refund_requested': instance.refundRequested,
  'refunded': instance.refunded,
  'delivery_address': instance.deliveryAddress,
  'scheduled': instance.scheduled,
  'store_discount_amount': instance.storeDiscountAmount,
  'original_delivery_charge': instance.originalDeliveryCharge,
  'failed': instance.failed,
  'adjusment': instance.adjusment,
  'edited': instance.edited,
  'delivery_time': instance.deliveryTime,
  'zone_id': instance.zoneId,
  'module_id': instance.moduleId,
  'order_attachment': instance.orderAttachment,
  'parcel_category_id': instance.parcelCategoryId,
  'receiver_details': instance.receiverDetails,
  'charge_payer': instance.chargePayer,
  'distance': instance.distance,
  'dm_tips': instance.dmTips,
  'free_delivery_by': instance.freeDeliveryBy,
  'refund_request_canceled': instance.refundRequestCanceled,
  'prescription_order': instance.prescriptionOrder,
  'tax_status': instance.taxStatus,
  'dm_vehicle_id': instance.dmVehicleId,
  'cancellation_reason': instance.cancellationReason,
  'canceled_by': instance.canceledBy,
  'coupon_created_by': instance.couponCreatedBy,
  'discount_on_product_by': instance.discountOnProductBy,
  'processing_time': instance.processingTime,
  'unavailable_item_note': instance.unavailableItemNote,
  'cutlery': instance.cutlery,
  'delivery_instruction': instance.deliveryInstruction,
  'tax_percentage': instance.taxPercentage,
  'additional_charge': instance.additionalCharge,
  'order_proof': instance.orderProof,
  'partially_paid_amount': instance.partiallyPaidAmount,
  'is_guest': instance.isGuest,
  'flash_admin_discount_amount': instance.flashAdminDiscountAmount,
  'flash_store_discount_amount': instance.flashStoreDiscountAmount,
  'cash_back_id': instance.cashBackId,
  'extra_packaging_amount': instance.extraPackagingAmount,
  'ref_bonus_amount': instance.refBonusAmount,
  'details_count': instance.detailsCount,
  'store': instance.store,
  'delivery_man': instance.deliveryMan,
  'module_type': instance.moduleType,
  'order_attachment_full_url': instance.orderAttachmentFullUrl,
  'order_proof_full_url': instance.orderProofFullUrl,
  'parcel_category': instance.parcelCategory,
  'storage': instance.storage,
  'module': instance.module,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) =>
    _DeliveryAddress(
      contactPersonName: json['contact_person_name'] as String?,
      contactPersonNumber: json['contact_person_number'] as String?,
      contactPersonEmail: json['contact_person_email'] as String?,
      addressType: json['address_type'] as String?,
      address: json['address'] as String?,
      floor: json['floor'] as String?,
      road: json['road'] as String?,
      house: json['house'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
    );

Map<String, dynamic> _$DeliveryAddressToJson(_DeliveryAddress instance) =>
    <String, dynamic>{
      'contact_person_name': instance.contactPersonName,
      'contact_person_number': instance.contactPersonNumber,
      'contact_person_email': instance.contactPersonEmail,
      'address_type': instance.addressType,
      'address': instance.address,
      'floor': instance.floor,
      'road': instance.road,
      'house': instance.house,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

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
      ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
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

_Storage _$StorageFromJson(Map<String, dynamic> json) => _Storage(
  id: (json['id'] as num?)?.toInt(),
  dataType: $enumDecodeNullable(_$TypeEnumMap, json['data_type']),
  dataId: json['data_id'] as String?,
  key: $enumDecodeNullable(_$StorageKeyEnumMap, json['key']),
  value: $enumDecodeNullable(_$ValueEnumMap, json['value']),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StorageToJson(_Storage instance) => <String, dynamic>{
  'id': instance.id,
  'data_type': _$TypeEnumMap[instance.dataType],
  'data_id': instance.dataId,
  'key': _$StorageKeyEnumMap[instance.key],
  'value': _$ValueEnumMap[instance.value],
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

const _$TypeEnumMap = {
  Type.APP_MODELS_MODULE: 'App\\Models\\Module',
  Type.APP_MODELS_STORE: 'App\\Models\\Store',
};

const _$StorageKeyEnumMap = {
  StorageKey.COVER_PHOTO: 'cover_photo',
  StorageKey.LOGO: 'logo',
  StorageKey.THUMBNAIL: 'thumbnail',
};

const _$ValueEnumMap = {Value.PUBLIC: 'public'};

_Translation _$TranslationFromJson(Map<String, dynamic> json) => _Translation(
  id: (json['id'] as num?)?.toInt(),
  translationableType: $enumDecodeNullable(
    _$TypeEnumMap,
    json['translationable_type'],
  ),
  translationableId: (json['translationable_id'] as num?)?.toInt(),
  locale: $enumDecodeNullable(_$LocaleEnumMap, json['locale']),
  key: $enumDecodeNullable(_$TranslationKeyEnumMap, json['key']),
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
      'key': _$TranslationKeyEnumMap[instance.key],
      'value': instance.value,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$LocaleEnumMap = {Locale.EN: 'en'};

const _$TranslationKeyEnumMap = {
  TranslationKey.ADDRESS: 'address',
  TranslationKey.DESCRIPTION: 'description',
  TranslationKey.MODULE_NAME: 'module_name',
  TranslationKey.NAME: 'name',
};

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
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
  orderPlaceToScheduleInterval: json['order_place_to_schedule_interval'],
  featured: (json['featured'] as num?)?.toInt(),
  perKmShippingCharge: (json['per_km_shipping_charge'] as num?)?.toInt(),
  prescriptionOrder: json['prescription_order'] as bool?,
  slug: json['slug'] as String?,
  maximumShippingCharge: json['maximum_shipping_charge'],
  cutlery: json['cutlery'] as bool?,
  metaTitle: json['meta_title'],
  metaDescription: json['meta_description'],
  metaImage: json['meta_image'],
  announcement: (json['announcement'] as num?)?.toInt(),
  announcementMessage: json['announcement_message'],
  storeBusinessModel: json['store_business_model'] as String?,
  packageId: json['package_id'],
  pickupZoneId: json['pickup_zone_id'],
  comment: json['comment'],
  isRecommended: json['is_recommended'] as bool?,
  minimumStockForWarning: (json['minimum_stock_for_warning'] as num?)?.toInt(),
  halalTagStatus: json['halal_tag_status'] as bool?,
  extraPackagingStatus: json['extra_packaging_status'],
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
  metaImageFullUrl: json['meta_image_full_url'],
  translations: (json['translations'] as List<dynamic>?)
      ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
      .toList(),
  storage: (json['storage'] as List<dynamic>?)
      ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
      .toList(),
  module: json['module'] == null
      ? null
      : Module.fromJson(json['module'] as Map<String, dynamic>),
  schedules: (json['schedules'] as List<dynamic>?)
      ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
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
