// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_orders_history_response.freezed.dart';
part '../../../generated/domain/models/response/get_orders_history_response.g.dart';

@freezed
abstract class GetOrdersHistoryResponse with _$GetOrdersHistoryResponse {
  const factory GetOrdersHistoryResponse({
    @JsonKey(name: "total_size") int? totalSize,
    @JsonKey(name: "limit") String? limit,
    @JsonKey(name: "offset") String? offset,
    @JsonKey(name: "orders") List<Order>? orders,
  }) = _GetOrdersHistoryResponse;

  factory GetOrdersHistoryResponse.fromJson(Map<String, dynamic> json) => _$GetOrdersHistoryResponseFromJson(json);
}

class OrderStatusConverter implements JsonConverter<OrderStatus, String?> {
  const OrderStatusConverter();

  @override
  OrderStatus fromJson(String? json) => orderStatusFromString(json);

  @override
  String toJson(OrderStatus object) => object.en;
}

@freezed
abstract class Order with _$Order {
  const factory Order({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "order_amount") double? orderAmount,
    @JsonKey(name: "coupon_discount_amount") int? couponDiscountAmount,
    @JsonKey(name: "coupon_discount_title") String? couponDiscountTitle,
    @JsonKey(name: "payment_status") String? paymentStatus,
    @OrderStatusConverter() @JsonKey(name: "order_status") OrderStatus? orderStatus,
    @JsonKey(name: "total_tax_amount") double? totalTaxAmount,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "transaction_reference") dynamic transactionReference,
    @JsonKey(name: "delivery_address_id") dynamic deliveryAddressId,
    @JsonKey(name: "delivery_man_id") dynamic deliveryManId,
    @JsonKey(name: "coupon_code") dynamic couponCode,
    @JsonKey(name: "order_note") String? orderNote,
    @JsonKey(name: "order_type") String? orderType,
    @JsonKey(name: "checked") int? checked,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "delivery_charge") int? deliveryCharge,
    @JsonKey(name: "schedule_at") DateTime? scheduleAt,
    @JsonKey(name: "callback") dynamic callback,
    @JsonKey(name: "otp") String? otp,
    @JsonKey(name: "pending") DateTime? pending,
    @JsonKey(name: "accepted") dynamic accepted,
    @JsonKey(name: "confirmed") DateTime? confirmed,
    @JsonKey(name: "processing") DateTime? processing,
    @JsonKey(name: "handover") dynamic handover,
    @JsonKey(name: "picked_up") DateTime? pickedUp,
    @JsonKey(name: "delivered") dynamic delivered,
    @JsonKey(name: "canceled") dynamic canceled,
    @JsonKey(name: "refund_requested") dynamic refundRequested,
    @JsonKey(name: "refunded") dynamic refunded,
    @JsonKey(name: "delivery_address") DeliveryAddress? deliveryAddress,
    @JsonKey(name: "scheduled") int? scheduled,
    @JsonKey(name: "store_discount_amount") int? storeDiscountAmount,
    @JsonKey(name: "original_delivery_charge") int? originalDeliveryCharge,
    @JsonKey(name: "failed") dynamic failed,
    @JsonKey(name: "adjusment") String? adjusment,
    @JsonKey(name: "edited") int? edited,
    @JsonKey(name: "delivery_time") dynamic deliveryTime,
    @JsonKey(name: "zone_id") int? zoneId,
    @JsonKey(name: "module_id") int? moduleId,
    @JsonKey(name: "order_attachment") dynamic orderAttachment,
    @JsonKey(name: "parcel_category_id") dynamic parcelCategoryId,
    @JsonKey(name: "receiver_details") dynamic receiverDetails,
    @JsonKey(name: "charge_payer") dynamic chargePayer,
    @JsonKey(name: "distance") double? distance,
    @JsonKey(name: "dm_tips") int? dmTips,
    @JsonKey(name: "free_delivery_by") dynamic freeDeliveryBy,
    @JsonKey(name: "refund_request_canceled") dynamic refundRequestCanceled,
    @JsonKey(name: "prescription_order") bool? prescriptionOrder,
    @JsonKey(name: "tax_status") String? taxStatus,
    @JsonKey(name: "dm_vehicle_id") dynamic dmVehicleId,
    @JsonKey(name: "cancellation_reason") dynamic cancellationReason,
    @JsonKey(name: "canceled_by") dynamic canceledBy,
    @JsonKey(name: "coupon_created_by") dynamic couponCreatedBy,
    @JsonKey(name: "discount_on_product_by") String? discountOnProductBy,
    @JsonKey(name: "processing_time") int? processingTime,
    @JsonKey(name: "unavailable_item_note") dynamic unavailableItemNote,
    @JsonKey(name: "cutlery") bool? cutlery,
    @JsonKey(name: "delivery_instruction") dynamic deliveryInstruction,
    @JsonKey(name: "tax_percentage") int? taxPercentage,
    @JsonKey(name: "additional_charge") int? additionalCharge,
    @JsonKey(name: "order_proof") dynamic orderProof,
    @JsonKey(name: "partially_paid_amount") int? partiallyPaidAmount,
    @JsonKey(name: "is_guest") bool? isGuest,
    @JsonKey(name: "flash_admin_discount_amount") int? flashAdminDiscountAmount,
    @JsonKey(name: "flash_store_discount_amount") int? flashStoreDiscountAmount,
    @JsonKey(name: "cash_back_id") dynamic cashBackId,
    @JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,
    @JsonKey(name: "ref_bonus_amount") int? refBonusAmount,
    @JsonKey(name: "details_count") int? detailsCount,
    @JsonKey(name: "store") Store? store,
    @JsonKey(name: "delivery_man") dynamic deliveryMan,
    @JsonKey(name: "module_type") String? moduleType,
    @JsonKey(name: "order_attachment_full_url") List<dynamic>? orderAttachmentFullUrl,
    @JsonKey(name: "order_proof_full_url") List<dynamic>? orderProofFullUrl,
    @JsonKey(name: "parcel_category") dynamic parcelCategory,
    @JsonKey(name: "storage") List<dynamic>? storage,
    @JsonKey(name: "module") Module? module,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

// Order status enum with Vietnamese translations as comments
enum OrderStatus {
  pending, // Chờ xử lý
  accepted, // Đã được cửa hàng chấp nhận
  confirmed, // Cửa hàng xác nhận đang chuẩn bị
  preparing, // Đang chuẩn bị
  processing, // Đơn đang được xử lý/giao
  handover, // Giao cho shipper
  picked_up, // Đã được shipper lấy hàng
  delivered, // Giao hàng thành công
  canceled, // Đơn hàng bị hủy
  failed, // Giao hàng thất bại
}

OrderStatus orderStatusFromString(String? status) {
  switch (status?.toLowerCase()) {
    case 'pending':
      return OrderStatus.pending;
    case 'accepted':
      return OrderStatus.accepted;
    case 'confirmed':
      return OrderStatus.confirmed;
    case 'preparing':
      return OrderStatus.preparing;
    case 'processing':
      return OrderStatus.processing;
    case 'handover':
      return OrderStatus.handover;
    case 'picked_up':
      return OrderStatus.picked_up;
    case 'delivered':
      return OrderStatus.delivered;
    case 'canceled':
      return OrderStatus.canceled;
    case 'failed':
      return OrderStatus.failed;
    default:
      return OrderStatus.pending;
  }
}

extension OrderStatusExtension on OrderStatus {
  String get vi {
    switch (this) {
      case OrderStatus.pending:
        return 'Chờ xử lý';
      case OrderStatus.accepted:
        return 'Đã được cửa hàng chấp nhận';
      case OrderStatus.confirmed:
        return 'Cửa hàng xác nhận đang chuẩn bị';
      case OrderStatus.preparing:
        return 'Đang chuẩn bị';
      case OrderStatus.processing:
        return 'Đơn đang được xử lý/giao';
      case OrderStatus.handover:
        return 'Giao cho shipper';
      case OrderStatus.picked_up:
        return 'Đã được shipper lấy hàng';
      case OrderStatus.delivered:
        return 'Giao hàng thành công';
      case OrderStatus.canceled:
        return 'Đơn hàng bị hủy';
      case OrderStatus.failed:
        return 'Giao hàng thất bại';
    }
  }

  String get en => toString().split('.').last;
}

@freezed
abstract class DeliveryAddress with _$DeliveryAddress {
  const factory DeliveryAddress({
    @JsonKey(name: "contact_person_name") String? contactPersonName,
    @JsonKey(name: "contact_person_number") String? contactPersonNumber,
    @JsonKey(name: "contact_person_email") String? contactPersonEmail,
    @JsonKey(name: "address_type") String? addressType,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "floor") String? floor,
    @JsonKey(name: "road") String? road,
    @JsonKey(name: "house") String? house,
    @JsonKey(name: "longitude") String? longitude,
    @JsonKey(name: "latitude") String? latitude,
  }) = _DeliveryAddress;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) => _$DeliveryAddressFromJson(json);
}

@freezed
abstract class Module with _$Module {
  const factory Module({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "module_name") String? moduleName,
    @JsonKey(name: "module_type") String? moduleType,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "stores_count") int? storesCount,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "icon") String? icon,
    @JsonKey(name: "theme_id") int? themeId,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "all_zone_service") int? allZoneService,
    @JsonKey(name: "icon_full_url") String? iconFullUrl,
    @JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl,
    @JsonKey(name: "storage") List<Storage>? storage,
    @JsonKey(name: "translations") List<Translation>? translations,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}

@freezed
abstract class Storage with _$Storage {
  const factory Storage({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "data_type") Type? dataType,
    @JsonKey(name: "data_id") String? dataId,
    @JsonKey(name: "key") StorageKey? key,
    @JsonKey(name: "value") Value? value,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Storage;

  factory Storage.fromJson(Map<String, dynamic> json) => _$StorageFromJson(json);
}

enum Type {
  @JsonValue("App\\Models\\Module")
  APP_MODELS_MODULE,
  @JsonValue("App\\Models\\Store")
  APP_MODELS_STORE,
}

final typeValues = EnumValues({"App\\Models\\Module": Type.APP_MODELS_MODULE, "App\\Models\\Store": Type.APP_MODELS_STORE});

enum StorageKey {
  @JsonValue("cover_photo")
  COVER_PHOTO,
  @JsonValue("logo")
  LOGO,
  @JsonValue("thumbnail")
  THUMBNAIL,
}

final storageKeyValues = EnumValues({"cover_photo": StorageKey.COVER_PHOTO, "logo": StorageKey.LOGO, "thumbnail": StorageKey.THUMBNAIL});

enum Value {
  @JsonValue("public")
  PUBLIC,
}

final valueValues = EnumValues({"public": Value.PUBLIC});

@freezed
abstract class Translation with _$Translation {
  const factory Translation({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "translationable_type") Type? translationableType,
    @JsonKey(name: "translationable_id") int? translationableId,
    @JsonKey(name: "locale") Locale? locale,
    @JsonKey(name: "key") TranslationKey? key,
    @JsonKey(name: "value") String? value,
    @JsonKey(name: "created_at") dynamic createdAt,
    @JsonKey(name: "updated_at") dynamic updatedAt,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);
}

enum TranslationKey {
  @JsonValue("address")
  ADDRESS,
  @JsonValue("description")
  DESCRIPTION,
  @JsonValue("module_name")
  MODULE_NAME,
  @JsonValue("name")
  NAME,
}

final translationKeyValues = EnumValues({"address": TranslationKey.ADDRESS, "description": TranslationKey.DESCRIPTION, "module_name": TranslationKey.MODULE_NAME, "name": TranslationKey.NAME});

enum Locale {
  @JsonValue("en")
  EN,
}

final localeValues = EnumValues({"en": Locale.EN});

@freezed
abstract class Store with _$Store {
  const factory Store({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "logo") String? logo,
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "footer_text") dynamic footerText,
    @JsonKey(name: "minimum_order") int? minimumOrder,
    @JsonKey(name: "comission") dynamic comission,
    @JsonKey(name: "schedule_order") bool? scheduleOrder,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "vendor_id") int? vendorId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "free_delivery") bool? freeDelivery,
    @JsonKey(name: "cover_photo") String? coverPhoto,
    @JsonKey(name: "delivery") bool? delivery,
    @JsonKey(name: "take_away") bool? takeAway,
    @JsonKey(name: "item_section") bool? itemSection,
    @JsonKey(name: "tax") int? tax,
    @JsonKey(name: "zone_id") int? zoneId,
    @JsonKey(name: "reviews_section") bool? reviewsSection,
    @JsonKey(name: "active") bool? active,
    @JsonKey(name: "off_day") String? offDay,
    @JsonKey(name: "self_delivery_system") int? selfDeliverySystem,
    @JsonKey(name: "pos_system") bool? posSystem,
    @JsonKey(name: "minimum_shipping_charge") int? minimumShippingCharge,
    @JsonKey(name: "delivery_time") String? deliveryTime,
    @JsonKey(name: "veg") int? veg,
    @JsonKey(name: "non_veg") int? nonVeg,
    @JsonKey(name: "order_count") int? orderCount,
    @JsonKey(name: "total_order") int? totalOrder,
    @JsonKey(name: "module_id") int? moduleId,
    @JsonKey(name: "order_place_to_schedule_interval") dynamic orderPlaceToScheduleInterval,
    @JsonKey(name: "featured") int? featured,
    @JsonKey(name: "per_km_shipping_charge") int? perKmShippingCharge,
    @JsonKey(name: "prescription_order") bool? prescriptionOrder,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "maximum_shipping_charge") dynamic maximumShippingCharge,
    @JsonKey(name: "cutlery") bool? cutlery,
    @JsonKey(name: "meta_title") dynamic metaTitle,
    @JsonKey(name: "meta_description") dynamic metaDescription,
    @JsonKey(name: "meta_image") dynamic metaImage,
    @JsonKey(name: "announcement") int? announcement,
    @JsonKey(name: "announcement_message") dynamic announcementMessage,
    @JsonKey(name: "store_business_model") String? storeBusinessModel,
    @JsonKey(name: "package_id") dynamic packageId,
    @JsonKey(name: "pickup_zone_id") dynamic pickupZoneId,
    @JsonKey(name: "comment") dynamic comment,
    @JsonKey(name: "is_recommended") bool? isRecommended,
    @JsonKey(name: "minimum_stock_for_warning") int? minimumStockForWarning,
    @JsonKey(name: "halal_tag_status") bool? halalTagStatus,
    @JsonKey(name: "extra_packaging_status") dynamic extraPackagingStatus,
    @JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,
    @JsonKey(name: "ratings") List<int>? ratings,
    @JsonKey(name: "avg_rating") int? avgRating,
    @JsonKey(name: "rating_count") int? ratingCount,
    @JsonKey(name: "positive_rating") int? positiveRating,
    @JsonKey(name: "total_items") dynamic totalItems,
    @JsonKey(name: "total_campaigns") dynamic totalCampaigns,
    @JsonKey(name: "current_opening_time") String? currentOpeningTime,
    @JsonKey(name: "gst_status") bool? gstStatus,
    @JsonKey(name: "gst_code") String? gstCode,
    @JsonKey(name: "logo_full_url") String? logoFullUrl,
    @JsonKey(name: "cover_photo_full_url") String? coverPhotoFullUrl,
    @JsonKey(name: "meta_image_full_url") dynamic metaImageFullUrl,
    @JsonKey(name: "translations") List<Translation>? translations,
    @JsonKey(name: "storage") List<Storage>? storage,
    @JsonKey(name: "module") Module? module,
    @JsonKey(name: "schedules") List<Schedule>? schedules,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
abstract class Schedule with _$Schedule {
  const factory Schedule({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "day") int? day,
    @JsonKey(name: "opening_time") String? openingTime,
    @JsonKey(name: "closing_time") String? closingTime,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
