// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/wishlist_response.freezed.dart';
part '../../../generated/domain/models/response/wishlist_response.g.dart';

@freezed
abstract class WishlistResponse with _$WishlistResponse {
  const factory WishlistResponse({@JsonKey(name: "item") List<WishlistItem>? item, @JsonKey(name: "store") List<WishlistStore>? store}) = _WishlistResponse;

  factory WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);
}

@freezed
abstract class WishlistItem with _$WishlistItem {
  const factory WishlistItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_ids") List<CategoryId>? categoryIds,
    @JsonKey(name: "variations") List<Variation>? variations,
    @JsonKey(name: "add_ons") List<dynamic>? addOns,
    @JsonKey(name: "attributes") List<String>? attributes,
    @JsonKey(name: "choice_options") List<ChoiceOption>? choiceOptions,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "tax") int? tax,
    @JsonKey(name: "tax_type") String? taxType,
    @JsonKey(name: "discount") int? discount,
    @JsonKey(name: "discount_type") String? discountType,
    @JsonKey(name: "available_time_starts") String? availableTimeStarts,
    @JsonKey(name: "available_time_ends") String? availableTimeEnds,
    @JsonKey(name: "veg") int? veg,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "order_count") int? orderCount,
    @JsonKey(name: "avg_rating") int? avgRating,
    @JsonKey(name: "rating_count") int? ratingCount,
    @JsonKey(name: "module_id") int? moduleId,
    @JsonKey(name: "stock") int? stock,
    @JsonKey(name: "unit_id") int? unitId,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "food_variations") dynamic foodVariations,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "recommended") int? recommended,
    @JsonKey(name: "organic") int? organic,
    @JsonKey(name: "maximum_cart_quantity") dynamic maximumCartQuantity,
    @JsonKey(name: "is_approved") int? isApproved,
    @JsonKey(name: "is_halal") int? isHalal,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "is_campaign") int? isCampaign,
    @JsonKey(name: "module_type") String? moduleType,
    @JsonKey(name: "zone_id") int? zoneId,
    @JsonKey(name: "flash_sale") int? flashSale,
    @JsonKey(name: "store_discount") int? storeDiscount,
    @JsonKey(name: "schedule_order") bool? scheduleOrder,
    @JsonKey(name: "min_delivery_time") int? minDeliveryTime,
    @JsonKey(name: "max_delivery_time") int? maxDeliveryTime,
    @JsonKey(name: "common_condition_id") int? commonConditionId,
    @JsonKey(name: "brand_id") int? brandId,
    @JsonKey(name: "is_basic") int? isBasic,
    @JsonKey(name: "is_prescription_required") int? isPrescriptionRequired,
    @JsonKey(name: "halal_tag_status") int? halalTagStatus,
    @JsonKey(name: "nutritions_name") List<dynamic>? nutritionsName,
    @JsonKey(name: "allergies_name") List<dynamic>? allergiesName,
    @JsonKey(name: "generic_name") List<dynamic>? genericName,
    @JsonKey(name: "unit_type") dynamic unitType,
    @JsonKey(name: "image_full_url") String? imageFullUrl,
    @JsonKey(name: "images_full_url") List<String>? imagesFullUrl,
    @JsonKey(name: "storage") List<StorageElement>? storage,
    @JsonKey(name: "translations") List<dynamic>? translations,
    @JsonKey(name: "module") Module? module,
    @JsonKey(name: "ecommerce_item_details") dynamic ecommerceItemDetails,
    @JsonKey(name: "unit") dynamic unit,
  }) = _WistlistItem;

  factory WishlistItem.fromJson(Map<String, dynamic> json) => _$WishlistItemFromJson(json);
}

@freezed
abstract class CategoryId with _$CategoryId {
  const factory CategoryId({@JsonKey(name: "id") String? id, @JsonKey(name: "position") int? position, @JsonKey(name: "name") String? name}) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) => _$CategoryIdFromJson(json);
}

@freezed
abstract class ChoiceOption with _$ChoiceOption {
  const factory ChoiceOption({@JsonKey(name: "name") String? name, @JsonKey(name: "title") String? title, @JsonKey(name: "options") List<String>? options}) = _ChoiceOption;

  factory ChoiceOption.fromJson(Map<String, dynamic> json) => _$ChoiceOptionFromJson(json);
}

@freezed
abstract class FoodVariation with _$FoodVariation {
  const factory FoodVariation({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "min") int? min,
    @JsonKey(name: "max") int? max,
    @JsonKey(name: "required") String? required,
    @JsonKey(name: "values") List<Value>? values,
  }) = _FoodVariation;

  factory FoodVariation.fromJson(Map<String, dynamic> json) => _$FoodVariationFromJson(json);
}

@freezed
abstract class Value with _$Value {
  const factory Value({@JsonKey(name: "label") String? label, @JsonKey(name: "optionPrice") String? optionPrice}) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({@JsonKey(name: "img") String? img, @JsonKey(name: "storage") StorageEnum? storage}) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

enum StorageEnum {
  @JsonValue("public")
  PUBLIC,
}

final storageEnumValues = EnumValues({"public": StorageEnum.PUBLIC});

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
    @JsonKey(name: "storage") List<StorageElement>? storage,
    @JsonKey(name: "translations") List<Translation>? translations,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}

@freezed
abstract class StorageElement with _$StorageElement {
  const factory StorageElement({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "data_type") Type? dataType,
    @JsonKey(name: "data_id") String? dataId,
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "value") StorageEnum? value,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _StorageElement;

  factory StorageElement.fromJson(Map<String, dynamic> json) => _$StorageElementFromJson(json);
}

enum Type {
  @JsonValue("App\\Models\\Item")
  APP_MODELS_ITEM,
  @JsonValue("App\\Models\\Module")
  APP_MODELS_MODULE,
  @JsonValue("App\\Models\\Store")
  APP_MODELS_STORE,
}

final typeValues = EnumValues({"App\\Models\\Item": Type.APP_MODELS_ITEM, "App\\Models\\Module": Type.APP_MODELS_MODULE, "App\\Models\\Store": Type.APP_MODELS_STORE});

@freezed
abstract class Translation with _$Translation {
  const factory Translation({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "translationable_type") Type? translationableType,
    @JsonKey(name: "translationable_id") int? translationableId,
    @JsonKey(name: "locale") Locale? locale,
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "value") String? value,
    @JsonKey(name: "created_at") dynamic createdAt,
    @JsonKey(name: "updated_at") dynamic updatedAt,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);
}

enum Locale {
  @JsonValue("en")
  EN,
}

final localeValues = EnumValues({"en": Locale.EN});

@freezed
abstract class Variation with _$Variation {
  const factory Variation({@JsonKey(name: "type") String? type, @JsonKey(name: "price") int? price, @JsonKey(name: "stock") int? stock}) = _Variation;

  factory Variation.fromJson(Map<String, dynamic> json) => _$VariationFromJson(json);
}

@freezed
abstract class WishlistStore with _$WishlistStore {
  const factory WishlistStore({
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
    @JsonKey(name: "order_place_to_schedule_interval") int? orderPlaceToScheduleInterval,
    @JsonKey(name: "featured") int? featured,
    @JsonKey(name: "per_km_shipping_charge") int? perKmShippingCharge,
    @JsonKey(name: "prescription_order") bool? prescriptionOrder,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "maximum_shipping_charge") dynamic maximumShippingCharge,
    @JsonKey(name: "cutlery") bool? cutlery,
    @JsonKey(name: "meta_title") String? metaTitle,
    @JsonKey(name: "meta_description") String? metaDescription,
    @JsonKey(name: "meta_image") String? metaImage,
    @JsonKey(name: "announcement") int? announcement,
    @JsonKey(name: "announcement_message") dynamic announcementMessage,
    @JsonKey(name: "store_business_model") String? storeBusinessModel,
    @JsonKey(name: "package_id") dynamic packageId,
    @JsonKey(name: "pickup_zone_id") dynamic pickupZoneId,
    @JsonKey(name: "comment") dynamic comment,
    @JsonKey(name: "is_recommended") bool? isRecommended,
    @JsonKey(name: "minimum_stock_for_warning") int? minimumStockForWarning,
    @JsonKey(name: "halal_tag_status") bool? halalTagStatus,
    @JsonKey(name: "extra_packaging_status") bool? extraPackagingStatus,
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
    @JsonKey(name: "meta_image_full_url") String? metaImageFullUrl,
    @JsonKey(name: "translations") List<Translation>? translations,
    @JsonKey(name: "storage") List<StorageElement>? storage,
    @JsonKey(name: "module") Module? module,
    @JsonKey(name: "schedules") List<Schedule>? schedules,
  }) = _WishlistStore;

  factory WishlistStore.fromJson(Map<String, dynamic> json) => _$WishlistStoreFromJson(json);
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
