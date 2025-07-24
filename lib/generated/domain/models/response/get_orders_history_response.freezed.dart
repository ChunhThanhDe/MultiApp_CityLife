// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_orders_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetOrdersHistoryResponse {

@JsonKey(name: "total_size") int? get totalSize;@JsonKey(name: "limit") String? get limit;@JsonKey(name: "offset") String? get offset;@JsonKey(name: "orders") List<Order>? get orders;
/// Create a copy of GetOrdersHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrdersHistoryResponseCopyWith<GetOrdersHistoryResponse> get copyWith => _$GetOrdersHistoryResponseCopyWithImpl<GetOrdersHistoryResponse>(this as GetOrdersHistoryResponse, _$identity);

  /// Serializes this GetOrdersHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersHistoryResponse&&(identical(other.totalSize, totalSize) || other.totalSize == totalSize)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&const DeepCollectionEquality().equals(other.orders, orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSize,limit,offset,const DeepCollectionEquality().hash(orders));

@override
String toString() {
  return 'GetOrdersHistoryResponse(totalSize: $totalSize, limit: $limit, offset: $offset, orders: $orders)';
}


}

/// @nodoc
abstract mixin class $GetOrdersHistoryResponseCopyWith<$Res>  {
  factory $GetOrdersHistoryResponseCopyWith(GetOrdersHistoryResponse value, $Res Function(GetOrdersHistoryResponse) _then) = _$GetOrdersHistoryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "total_size") int? totalSize,@JsonKey(name: "limit") String? limit,@JsonKey(name: "offset") String? offset,@JsonKey(name: "orders") List<Order>? orders
});




}
/// @nodoc
class _$GetOrdersHistoryResponseCopyWithImpl<$Res>
    implements $GetOrdersHistoryResponseCopyWith<$Res> {
  _$GetOrdersHistoryResponseCopyWithImpl(this._self, this._then);

  final GetOrdersHistoryResponse _self;
  final $Res Function(GetOrdersHistoryResponse) _then;

/// Create a copy of GetOrdersHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSize = freezed,Object? limit = freezed,Object? offset = freezed,Object? orders = freezed,}) {
  return _then(_self.copyWith(
totalSize: freezed == totalSize ? _self.totalSize : totalSize // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String?,orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetOrdersHistoryResponse implements GetOrdersHistoryResponse {
  const _GetOrdersHistoryResponse({@JsonKey(name: "total_size") this.totalSize, @JsonKey(name: "limit") this.limit, @JsonKey(name: "offset") this.offset, @JsonKey(name: "orders") final  List<Order>? orders}): _orders = orders;
  factory _GetOrdersHistoryResponse.fromJson(Map<String, dynamic> json) => _$GetOrdersHistoryResponseFromJson(json);

@override@JsonKey(name: "total_size") final  int? totalSize;
@override@JsonKey(name: "limit") final  String? limit;
@override@JsonKey(name: "offset") final  String? offset;
 final  List<Order>? _orders;
@override@JsonKey(name: "orders") List<Order>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetOrdersHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrdersHistoryResponseCopyWith<_GetOrdersHistoryResponse> get copyWith => __$GetOrdersHistoryResponseCopyWithImpl<_GetOrdersHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetOrdersHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrdersHistoryResponse&&(identical(other.totalSize, totalSize) || other.totalSize == totalSize)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&const DeepCollectionEquality().equals(other._orders, _orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSize,limit,offset,const DeepCollectionEquality().hash(_orders));

@override
String toString() {
  return 'GetOrdersHistoryResponse(totalSize: $totalSize, limit: $limit, offset: $offset, orders: $orders)';
}


}

/// @nodoc
abstract mixin class _$GetOrdersHistoryResponseCopyWith<$Res> implements $GetOrdersHistoryResponseCopyWith<$Res> {
  factory _$GetOrdersHistoryResponseCopyWith(_GetOrdersHistoryResponse value, $Res Function(_GetOrdersHistoryResponse) _then) = __$GetOrdersHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "total_size") int? totalSize,@JsonKey(name: "limit") String? limit,@JsonKey(name: "offset") String? offset,@JsonKey(name: "orders") List<Order>? orders
});




}
/// @nodoc
class __$GetOrdersHistoryResponseCopyWithImpl<$Res>
    implements _$GetOrdersHistoryResponseCopyWith<$Res> {
  __$GetOrdersHistoryResponseCopyWithImpl(this._self, this._then);

  final _GetOrdersHistoryResponse _self;
  final $Res Function(_GetOrdersHistoryResponse) _then;

/// Create a copy of GetOrdersHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSize = freezed,Object? limit = freezed,Object? offset = freezed,Object? orders = freezed,}) {
  return _then(_GetOrdersHistoryResponse(
totalSize: freezed == totalSize ? _self.totalSize : totalSize // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String?,orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>?,
  ));
}


}


/// @nodoc
mixin _$Order {

@JsonKey(name: "id") int? get id;@JsonKey(name: "user_id") int? get userId;@JsonKey(name: "order_amount") double? get orderAmount;@JsonKey(name: "coupon_discount_amount") int? get couponDiscountAmount;@JsonKey(name: "coupon_discount_title") String? get couponDiscountTitle;@JsonKey(name: "payment_status") String? get paymentStatus;@JsonKey(name: "order_status") String? get orderStatus;@JsonKey(name: "total_tax_amount") double? get totalTaxAmount;@JsonKey(name: "payment_method") String? get paymentMethod;@JsonKey(name: "transaction_reference") dynamic get transactionReference;@JsonKey(name: "delivery_address_id") dynamic get deliveryAddressId;@JsonKey(name: "delivery_man_id") dynamic get deliveryManId;@JsonKey(name: "coupon_code") dynamic get couponCode;@JsonKey(name: "order_note") String? get orderNote;@JsonKey(name: "order_type") String? get orderType;@JsonKey(name: "checked") int? get checked;@JsonKey(name: "store_id") int? get storeId;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "delivery_charge") int? get deliveryCharge;@JsonKey(name: "schedule_at") DateTime? get scheduleAt;@JsonKey(name: "callback") dynamic get callback;@JsonKey(name: "otp") String? get otp;@JsonKey(name: "pending") DateTime? get pending;@JsonKey(name: "accepted") dynamic get accepted;@JsonKey(name: "confirmed") DateTime? get confirmed;@JsonKey(name: "processing") DateTime? get processing;@JsonKey(name: "handover") dynamic get handover;@JsonKey(name: "picked_up") DateTime? get pickedUp;@JsonKey(name: "delivered") dynamic get delivered;@JsonKey(name: "canceled") dynamic get canceled;@JsonKey(name: "refund_requested") dynamic get refundRequested;@JsonKey(name: "refunded") dynamic get refunded;@JsonKey(name: "delivery_address") DeliveryAddress? get deliveryAddress;@JsonKey(name: "scheduled") int? get scheduled;@JsonKey(name: "store_discount_amount") int? get storeDiscountAmount;@JsonKey(name: "original_delivery_charge") int? get originalDeliveryCharge;@JsonKey(name: "failed") dynamic get failed;@JsonKey(name: "adjusment") String? get adjusment;@JsonKey(name: "edited") int? get edited;@JsonKey(name: "delivery_time") dynamic get deliveryTime;@JsonKey(name: "zone_id") int? get zoneId;@JsonKey(name: "module_id") int? get moduleId;@JsonKey(name: "order_attachment") dynamic get orderAttachment;@JsonKey(name: "parcel_category_id") dynamic get parcelCategoryId;@JsonKey(name: "receiver_details") dynamic get receiverDetails;@JsonKey(name: "charge_payer") dynamic get chargePayer;@JsonKey(name: "distance") double? get distance;@JsonKey(name: "dm_tips") int? get dmTips;@JsonKey(name: "free_delivery_by") dynamic get freeDeliveryBy;@JsonKey(name: "refund_request_canceled") dynamic get refundRequestCanceled;@JsonKey(name: "prescription_order") bool? get prescriptionOrder;@JsonKey(name: "tax_status") String? get taxStatus;@JsonKey(name: "dm_vehicle_id") dynamic get dmVehicleId;@JsonKey(name: "cancellation_reason") dynamic get cancellationReason;@JsonKey(name: "canceled_by") dynamic get canceledBy;@JsonKey(name: "coupon_created_by") dynamic get couponCreatedBy;@JsonKey(name: "discount_on_product_by") String? get discountOnProductBy;@JsonKey(name: "processing_time") int? get processingTime;@JsonKey(name: "unavailable_item_note") dynamic get unavailableItemNote;@JsonKey(name: "cutlery") bool? get cutlery;@JsonKey(name: "delivery_instruction") dynamic get deliveryInstruction;@JsonKey(name: "tax_percentage") int? get taxPercentage;@JsonKey(name: "additional_charge") int? get additionalCharge;@JsonKey(name: "order_proof") dynamic get orderProof;@JsonKey(name: "partially_paid_amount") int? get partiallyPaidAmount;@JsonKey(name: "is_guest") bool? get isGuest;@JsonKey(name: "flash_admin_discount_amount") int? get flashAdminDiscountAmount;@JsonKey(name: "flash_store_discount_amount") int? get flashStoreDiscountAmount;@JsonKey(name: "cash_back_id") dynamic get cashBackId;@JsonKey(name: "extra_packaging_amount") int? get extraPackagingAmount;@JsonKey(name: "ref_bonus_amount") int? get refBonusAmount;@JsonKey(name: "details_count") int? get detailsCount;@JsonKey(name: "store") Store? get store;@JsonKey(name: "delivery_man") dynamic get deliveryMan;@JsonKey(name: "module_type") String? get moduleType;@JsonKey(name: "order_attachment_full_url") List<dynamic>? get orderAttachmentFullUrl;@JsonKey(name: "order_proof_full_url") List<dynamic>? get orderProofFullUrl;@JsonKey(name: "parcel_category") dynamic get parcelCategory;@JsonKey(name: "storage") List<dynamic>? get storage;@JsonKey(name: "module") Module? get module;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.couponDiscountAmount, couponDiscountAmount) || other.couponDiscountAmount == couponDiscountAmount)&&(identical(other.couponDiscountTitle, couponDiscountTitle) || other.couponDiscountTitle == couponDiscountTitle)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.totalTaxAmount, totalTaxAmount) || other.totalTaxAmount == totalTaxAmount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&const DeepCollectionEquality().equals(other.transactionReference, transactionReference)&&const DeepCollectionEquality().equals(other.deliveryAddressId, deliveryAddressId)&&const DeepCollectionEquality().equals(other.deliveryManId, deliveryManId)&&const DeepCollectionEquality().equals(other.couponCode, couponCode)&&(identical(other.orderNote, orderNote) || other.orderNote == orderNote)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&const DeepCollectionEquality().equals(other.callback, callback)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.pending, pending) || other.pending == pending)&&const DeepCollectionEquality().equals(other.accepted, accepted)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.processing, processing) || other.processing == processing)&&const DeepCollectionEquality().equals(other.handover, handover)&&(identical(other.pickedUp, pickedUp) || other.pickedUp == pickedUp)&&const DeepCollectionEquality().equals(other.delivered, delivered)&&const DeepCollectionEquality().equals(other.canceled, canceled)&&const DeepCollectionEquality().equals(other.refundRequested, refundRequested)&&const DeepCollectionEquality().equals(other.refunded, refunded)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.storeDiscountAmount, storeDiscountAmount) || other.storeDiscountAmount == storeDiscountAmount)&&(identical(other.originalDeliveryCharge, originalDeliveryCharge) || other.originalDeliveryCharge == originalDeliveryCharge)&&const DeepCollectionEquality().equals(other.failed, failed)&&(identical(other.adjusment, adjusment) || other.adjusment == adjusment)&&(identical(other.edited, edited) || other.edited == edited)&&const DeepCollectionEquality().equals(other.deliveryTime, deliveryTime)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&const DeepCollectionEquality().equals(other.orderAttachment, orderAttachment)&&const DeepCollectionEquality().equals(other.parcelCategoryId, parcelCategoryId)&&const DeepCollectionEquality().equals(other.receiverDetails, receiverDetails)&&const DeepCollectionEquality().equals(other.chargePayer, chargePayer)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.dmTips, dmTips) || other.dmTips == dmTips)&&const DeepCollectionEquality().equals(other.freeDeliveryBy, freeDeliveryBy)&&const DeepCollectionEquality().equals(other.refundRequestCanceled, refundRequestCanceled)&&(identical(other.prescriptionOrder, prescriptionOrder) || other.prescriptionOrder == prescriptionOrder)&&(identical(other.taxStatus, taxStatus) || other.taxStatus == taxStatus)&&const DeepCollectionEquality().equals(other.dmVehicleId, dmVehicleId)&&const DeepCollectionEquality().equals(other.cancellationReason, cancellationReason)&&const DeepCollectionEquality().equals(other.canceledBy, canceledBy)&&const DeepCollectionEquality().equals(other.couponCreatedBy, couponCreatedBy)&&(identical(other.discountOnProductBy, discountOnProductBy) || other.discountOnProductBy == discountOnProductBy)&&(identical(other.processingTime, processingTime) || other.processingTime == processingTime)&&const DeepCollectionEquality().equals(other.unavailableItemNote, unavailableItemNote)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&const DeepCollectionEquality().equals(other.deliveryInstruction, deliveryInstruction)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.additionalCharge, additionalCharge) || other.additionalCharge == additionalCharge)&&const DeepCollectionEquality().equals(other.orderProof, orderProof)&&(identical(other.partiallyPaidAmount, partiallyPaidAmount) || other.partiallyPaidAmount == partiallyPaidAmount)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.flashAdminDiscountAmount, flashAdminDiscountAmount) || other.flashAdminDiscountAmount == flashAdminDiscountAmount)&&(identical(other.flashStoreDiscountAmount, flashStoreDiscountAmount) || other.flashStoreDiscountAmount == flashStoreDiscountAmount)&&const DeepCollectionEquality().equals(other.cashBackId, cashBackId)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&(identical(other.refBonusAmount, refBonusAmount) || other.refBonusAmount == refBonusAmount)&&(identical(other.detailsCount, detailsCount) || other.detailsCount == detailsCount)&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.deliveryMan, deliveryMan)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&const DeepCollectionEquality().equals(other.orderAttachmentFullUrl, orderAttachmentFullUrl)&&const DeepCollectionEquality().equals(other.orderProofFullUrl, orderProofFullUrl)&&const DeepCollectionEquality().equals(other.parcelCategory, parcelCategory)&&const DeepCollectionEquality().equals(other.storage, storage)&&(identical(other.module, module) || other.module == module));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,orderAmount,couponDiscountAmount,couponDiscountTitle,paymentStatus,orderStatus,totalTaxAmount,paymentMethod,const DeepCollectionEquality().hash(transactionReference),const DeepCollectionEquality().hash(deliveryAddressId),const DeepCollectionEquality().hash(deliveryManId),const DeepCollectionEquality().hash(couponCode),orderNote,orderType,checked,storeId,createdAt,updatedAt,deliveryCharge,scheduleAt,const DeepCollectionEquality().hash(callback),otp,pending,const DeepCollectionEquality().hash(accepted),confirmed,processing,const DeepCollectionEquality().hash(handover),pickedUp,const DeepCollectionEquality().hash(delivered),const DeepCollectionEquality().hash(canceled),const DeepCollectionEquality().hash(refundRequested),const DeepCollectionEquality().hash(refunded),deliveryAddress,scheduled,storeDiscountAmount,originalDeliveryCharge,const DeepCollectionEquality().hash(failed),adjusment,edited,const DeepCollectionEquality().hash(deliveryTime),zoneId,moduleId,const DeepCollectionEquality().hash(orderAttachment),const DeepCollectionEquality().hash(parcelCategoryId),const DeepCollectionEquality().hash(receiverDetails),const DeepCollectionEquality().hash(chargePayer),distance,dmTips,const DeepCollectionEquality().hash(freeDeliveryBy),const DeepCollectionEquality().hash(refundRequestCanceled),prescriptionOrder,taxStatus,const DeepCollectionEquality().hash(dmVehicleId),const DeepCollectionEquality().hash(cancellationReason),const DeepCollectionEquality().hash(canceledBy),const DeepCollectionEquality().hash(couponCreatedBy),discountOnProductBy,processingTime,const DeepCollectionEquality().hash(unavailableItemNote),cutlery,const DeepCollectionEquality().hash(deliveryInstruction),taxPercentage,additionalCharge,const DeepCollectionEquality().hash(orderProof),partiallyPaidAmount,isGuest,flashAdminDiscountAmount,flashStoreDiscountAmount,const DeepCollectionEquality().hash(cashBackId),extraPackagingAmount,refBonusAmount,detailsCount,store,const DeepCollectionEquality().hash(deliveryMan),moduleType,const DeepCollectionEquality().hash(orderAttachmentFullUrl),const DeepCollectionEquality().hash(orderProofFullUrl),const DeepCollectionEquality().hash(parcelCategory),const DeepCollectionEquality().hash(storage),module]);

@override
String toString() {
  return 'Order(id: $id, userId: $userId, orderAmount: $orderAmount, couponDiscountAmount: $couponDiscountAmount, couponDiscountTitle: $couponDiscountTitle, paymentStatus: $paymentStatus, orderStatus: $orderStatus, totalTaxAmount: $totalTaxAmount, paymentMethod: $paymentMethod, transactionReference: $transactionReference, deliveryAddressId: $deliveryAddressId, deliveryManId: $deliveryManId, couponCode: $couponCode, orderNote: $orderNote, orderType: $orderType, checked: $checked, storeId: $storeId, createdAt: $createdAt, updatedAt: $updatedAt, deliveryCharge: $deliveryCharge, scheduleAt: $scheduleAt, callback: $callback, otp: $otp, pending: $pending, accepted: $accepted, confirmed: $confirmed, processing: $processing, handover: $handover, pickedUp: $pickedUp, delivered: $delivered, canceled: $canceled, refundRequested: $refundRequested, refunded: $refunded, deliveryAddress: $deliveryAddress, scheduled: $scheduled, storeDiscountAmount: $storeDiscountAmount, originalDeliveryCharge: $originalDeliveryCharge, failed: $failed, adjusment: $adjusment, edited: $edited, deliveryTime: $deliveryTime, zoneId: $zoneId, moduleId: $moduleId, orderAttachment: $orderAttachment, parcelCategoryId: $parcelCategoryId, receiverDetails: $receiverDetails, chargePayer: $chargePayer, distance: $distance, dmTips: $dmTips, freeDeliveryBy: $freeDeliveryBy, refundRequestCanceled: $refundRequestCanceled, prescriptionOrder: $prescriptionOrder, taxStatus: $taxStatus, dmVehicleId: $dmVehicleId, cancellationReason: $cancellationReason, canceledBy: $canceledBy, couponCreatedBy: $couponCreatedBy, discountOnProductBy: $discountOnProductBy, processingTime: $processingTime, unavailableItemNote: $unavailableItemNote, cutlery: $cutlery, deliveryInstruction: $deliveryInstruction, taxPercentage: $taxPercentage, additionalCharge: $additionalCharge, orderProof: $orderProof, partiallyPaidAmount: $partiallyPaidAmount, isGuest: $isGuest, flashAdminDiscountAmount: $flashAdminDiscountAmount, flashStoreDiscountAmount: $flashStoreDiscountAmount, cashBackId: $cashBackId, extraPackagingAmount: $extraPackagingAmount, refBonusAmount: $refBonusAmount, detailsCount: $detailsCount, store: $store, deliveryMan: $deliveryMan, moduleType: $moduleType, orderAttachmentFullUrl: $orderAttachmentFullUrl, orderProofFullUrl: $orderProofFullUrl, parcelCategory: $parcelCategory, storage: $storage, module: $module)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "user_id") int? userId,@JsonKey(name: "order_amount") double? orderAmount,@JsonKey(name: "coupon_discount_amount") int? couponDiscountAmount,@JsonKey(name: "coupon_discount_title") String? couponDiscountTitle,@JsonKey(name: "payment_status") String? paymentStatus,@JsonKey(name: "order_status") String? orderStatus,@JsonKey(name: "total_tax_amount") double? totalTaxAmount,@JsonKey(name: "payment_method") String? paymentMethod,@JsonKey(name: "transaction_reference") dynamic transactionReference,@JsonKey(name: "delivery_address_id") dynamic deliveryAddressId,@JsonKey(name: "delivery_man_id") dynamic deliveryManId,@JsonKey(name: "coupon_code") dynamic couponCode,@JsonKey(name: "order_note") String? orderNote,@JsonKey(name: "order_type") String? orderType,@JsonKey(name: "checked") int? checked,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "delivery_charge") int? deliveryCharge,@JsonKey(name: "schedule_at") DateTime? scheduleAt,@JsonKey(name: "callback") dynamic callback,@JsonKey(name: "otp") String? otp,@JsonKey(name: "pending") DateTime? pending,@JsonKey(name: "accepted") dynamic accepted,@JsonKey(name: "confirmed") DateTime? confirmed,@JsonKey(name: "processing") DateTime? processing,@JsonKey(name: "handover") dynamic handover,@JsonKey(name: "picked_up") DateTime? pickedUp,@JsonKey(name: "delivered") dynamic delivered,@JsonKey(name: "canceled") dynamic canceled,@JsonKey(name: "refund_requested") dynamic refundRequested,@JsonKey(name: "refunded") dynamic refunded,@JsonKey(name: "delivery_address") DeliveryAddress? deliveryAddress,@JsonKey(name: "scheduled") int? scheduled,@JsonKey(name: "store_discount_amount") int? storeDiscountAmount,@JsonKey(name: "original_delivery_charge") int? originalDeliveryCharge,@JsonKey(name: "failed") dynamic failed,@JsonKey(name: "adjusment") String? adjusment,@JsonKey(name: "edited") int? edited,@JsonKey(name: "delivery_time") dynamic deliveryTime,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "order_attachment") dynamic orderAttachment,@JsonKey(name: "parcel_category_id") dynamic parcelCategoryId,@JsonKey(name: "receiver_details") dynamic receiverDetails,@JsonKey(name: "charge_payer") dynamic chargePayer,@JsonKey(name: "distance") double? distance,@JsonKey(name: "dm_tips") int? dmTips,@JsonKey(name: "free_delivery_by") dynamic freeDeliveryBy,@JsonKey(name: "refund_request_canceled") dynamic refundRequestCanceled,@JsonKey(name: "prescription_order") bool? prescriptionOrder,@JsonKey(name: "tax_status") String? taxStatus,@JsonKey(name: "dm_vehicle_id") dynamic dmVehicleId,@JsonKey(name: "cancellation_reason") dynamic cancellationReason,@JsonKey(name: "canceled_by") dynamic canceledBy,@JsonKey(name: "coupon_created_by") dynamic couponCreatedBy,@JsonKey(name: "discount_on_product_by") String? discountOnProductBy,@JsonKey(name: "processing_time") int? processingTime,@JsonKey(name: "unavailable_item_note") dynamic unavailableItemNote,@JsonKey(name: "cutlery") bool? cutlery,@JsonKey(name: "delivery_instruction") dynamic deliveryInstruction,@JsonKey(name: "tax_percentage") int? taxPercentage,@JsonKey(name: "additional_charge") int? additionalCharge,@JsonKey(name: "order_proof") dynamic orderProof,@JsonKey(name: "partially_paid_amount") int? partiallyPaidAmount,@JsonKey(name: "is_guest") bool? isGuest,@JsonKey(name: "flash_admin_discount_amount") int? flashAdminDiscountAmount,@JsonKey(name: "flash_store_discount_amount") int? flashStoreDiscountAmount,@JsonKey(name: "cash_back_id") dynamic cashBackId,@JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,@JsonKey(name: "ref_bonus_amount") int? refBonusAmount,@JsonKey(name: "details_count") int? detailsCount,@JsonKey(name: "store") Store? store,@JsonKey(name: "delivery_man") dynamic deliveryMan,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "order_attachment_full_url") List<dynamic>? orderAttachmentFullUrl,@JsonKey(name: "order_proof_full_url") List<dynamic>? orderProofFullUrl,@JsonKey(name: "parcel_category") dynamic parcelCategory,@JsonKey(name: "storage") List<dynamic>? storage,@JsonKey(name: "module") Module? module
});


$DeliveryAddressCopyWith<$Res>? get deliveryAddress;$StoreCopyWith<$Res>? get store;$ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? orderAmount = freezed,Object? couponDiscountAmount = freezed,Object? couponDiscountTitle = freezed,Object? paymentStatus = freezed,Object? orderStatus = freezed,Object? totalTaxAmount = freezed,Object? paymentMethod = freezed,Object? transactionReference = freezed,Object? deliveryAddressId = freezed,Object? deliveryManId = freezed,Object? couponCode = freezed,Object? orderNote = freezed,Object? orderType = freezed,Object? checked = freezed,Object? storeId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deliveryCharge = freezed,Object? scheduleAt = freezed,Object? callback = freezed,Object? otp = freezed,Object? pending = freezed,Object? accepted = freezed,Object? confirmed = freezed,Object? processing = freezed,Object? handover = freezed,Object? pickedUp = freezed,Object? delivered = freezed,Object? canceled = freezed,Object? refundRequested = freezed,Object? refunded = freezed,Object? deliveryAddress = freezed,Object? scheduled = freezed,Object? storeDiscountAmount = freezed,Object? originalDeliveryCharge = freezed,Object? failed = freezed,Object? adjusment = freezed,Object? edited = freezed,Object? deliveryTime = freezed,Object? zoneId = freezed,Object? moduleId = freezed,Object? orderAttachment = freezed,Object? parcelCategoryId = freezed,Object? receiverDetails = freezed,Object? chargePayer = freezed,Object? distance = freezed,Object? dmTips = freezed,Object? freeDeliveryBy = freezed,Object? refundRequestCanceled = freezed,Object? prescriptionOrder = freezed,Object? taxStatus = freezed,Object? dmVehicleId = freezed,Object? cancellationReason = freezed,Object? canceledBy = freezed,Object? couponCreatedBy = freezed,Object? discountOnProductBy = freezed,Object? processingTime = freezed,Object? unavailableItemNote = freezed,Object? cutlery = freezed,Object? deliveryInstruction = freezed,Object? taxPercentage = freezed,Object? additionalCharge = freezed,Object? orderProof = freezed,Object? partiallyPaidAmount = freezed,Object? isGuest = freezed,Object? flashAdminDiscountAmount = freezed,Object? flashStoreDiscountAmount = freezed,Object? cashBackId = freezed,Object? extraPackagingAmount = freezed,Object? refBonusAmount = freezed,Object? detailsCount = freezed,Object? store = freezed,Object? deliveryMan = freezed,Object? moduleType = freezed,Object? orderAttachmentFullUrl = freezed,Object? orderProofFullUrl = freezed,Object? parcelCategory = freezed,Object? storage = freezed,Object? module = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,orderAmount: freezed == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as double?,couponDiscountAmount: freezed == couponDiscountAmount ? _self.couponDiscountAmount : couponDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,couponDiscountTitle: freezed == couponDiscountTitle ? _self.couponDiscountTitle : couponDiscountTitle // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String?,totalTaxAmount: freezed == totalTaxAmount ? _self.totalTaxAmount : totalTaxAmount // ignore: cast_nullable_to_non_nullable
as double?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as dynamic,deliveryAddressId: freezed == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as dynamic,deliveryManId: freezed == deliveryManId ? _self.deliveryManId : deliveryManId // ignore: cast_nullable_to_non_nullable
as dynamic,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as dynamic,orderNote: freezed == orderNote ? _self.orderNote : orderNote // ignore: cast_nullable_to_non_nullable
as String?,orderType: freezed == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String?,checked: freezed == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryCharge: freezed == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as int?,scheduleAt: freezed == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,callback: freezed == callback ? _self.callback : callback // ignore: cast_nullable_to_non_nullable
as dynamic,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as DateTime?,accepted: freezed == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as dynamic,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as DateTime?,processing: freezed == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as DateTime?,handover: freezed == handover ? _self.handover : handover // ignore: cast_nullable_to_non_nullable
as dynamic,pickedUp: freezed == pickedUp ? _self.pickedUp : pickedUp // ignore: cast_nullable_to_non_nullable
as DateTime?,delivered: freezed == delivered ? _self.delivered : delivered // ignore: cast_nullable_to_non_nullable
as dynamic,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as dynamic,refundRequested: freezed == refundRequested ? _self.refundRequested : refundRequested // ignore: cast_nullable_to_non_nullable
as dynamic,refunded: freezed == refunded ? _self.refunded : refunded // ignore: cast_nullable_to_non_nullable
as dynamic,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int?,storeDiscountAmount: freezed == storeDiscountAmount ? _self.storeDiscountAmount : storeDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,originalDeliveryCharge: freezed == originalDeliveryCharge ? _self.originalDeliveryCharge : originalDeliveryCharge // ignore: cast_nullable_to_non_nullable
as int?,failed: freezed == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as dynamic,adjusment: freezed == adjusment ? _self.adjusment : adjusment // ignore: cast_nullable_to_non_nullable
as String?,edited: freezed == edited ? _self.edited : edited // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as dynamic,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,orderAttachment: freezed == orderAttachment ? _self.orderAttachment : orderAttachment // ignore: cast_nullable_to_non_nullable
as dynamic,parcelCategoryId: freezed == parcelCategoryId ? _self.parcelCategoryId : parcelCategoryId // ignore: cast_nullable_to_non_nullable
as dynamic,receiverDetails: freezed == receiverDetails ? _self.receiverDetails : receiverDetails // ignore: cast_nullable_to_non_nullable
as dynamic,chargePayer: freezed == chargePayer ? _self.chargePayer : chargePayer // ignore: cast_nullable_to_non_nullable
as dynamic,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,dmTips: freezed == dmTips ? _self.dmTips : dmTips // ignore: cast_nullable_to_non_nullable
as int?,freeDeliveryBy: freezed == freeDeliveryBy ? _self.freeDeliveryBy : freeDeliveryBy // ignore: cast_nullable_to_non_nullable
as dynamic,refundRequestCanceled: freezed == refundRequestCanceled ? _self.refundRequestCanceled : refundRequestCanceled // ignore: cast_nullable_to_non_nullable
as dynamic,prescriptionOrder: freezed == prescriptionOrder ? _self.prescriptionOrder : prescriptionOrder // ignore: cast_nullable_to_non_nullable
as bool?,taxStatus: freezed == taxStatus ? _self.taxStatus : taxStatus // ignore: cast_nullable_to_non_nullable
as String?,dmVehicleId: freezed == dmVehicleId ? _self.dmVehicleId : dmVehicleId // ignore: cast_nullable_to_non_nullable
as dynamic,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as dynamic,canceledBy: freezed == canceledBy ? _self.canceledBy : canceledBy // ignore: cast_nullable_to_non_nullable
as dynamic,couponCreatedBy: freezed == couponCreatedBy ? _self.couponCreatedBy : couponCreatedBy // ignore: cast_nullable_to_non_nullable
as dynamic,discountOnProductBy: freezed == discountOnProductBy ? _self.discountOnProductBy : discountOnProductBy // ignore: cast_nullable_to_non_nullable
as String?,processingTime: freezed == processingTime ? _self.processingTime : processingTime // ignore: cast_nullable_to_non_nullable
as int?,unavailableItemNote: freezed == unavailableItemNote ? _self.unavailableItemNote : unavailableItemNote // ignore: cast_nullable_to_non_nullable
as dynamic,cutlery: freezed == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool?,deliveryInstruction: freezed == deliveryInstruction ? _self.deliveryInstruction : deliveryInstruction // ignore: cast_nullable_to_non_nullable
as dynamic,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int?,additionalCharge: freezed == additionalCharge ? _self.additionalCharge : additionalCharge // ignore: cast_nullable_to_non_nullable
as int?,orderProof: freezed == orderProof ? _self.orderProof : orderProof // ignore: cast_nullable_to_non_nullable
as dynamic,partiallyPaidAmount: freezed == partiallyPaidAmount ? _self.partiallyPaidAmount : partiallyPaidAmount // ignore: cast_nullable_to_non_nullable
as int?,isGuest: freezed == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool?,flashAdminDiscountAmount: freezed == flashAdminDiscountAmount ? _self.flashAdminDiscountAmount : flashAdminDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,flashStoreDiscountAmount: freezed == flashStoreDiscountAmount ? _self.flashStoreDiscountAmount : flashStoreDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,cashBackId: freezed == cashBackId ? _self.cashBackId : cashBackId // ignore: cast_nullable_to_non_nullable
as dynamic,extraPackagingAmount: freezed == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as int?,refBonusAmount: freezed == refBonusAmount ? _self.refBonusAmount : refBonusAmount // ignore: cast_nullable_to_non_nullable
as int?,detailsCount: freezed == detailsCount ? _self.detailsCount : detailsCount // ignore: cast_nullable_to_non_nullable
as int?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,deliveryMan: freezed == deliveryMan ? _self.deliveryMan : deliveryMan // ignore: cast_nullable_to_non_nullable
as dynamic,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,orderAttachmentFullUrl: freezed == orderAttachmentFullUrl ? _self.orderAttachmentFullUrl : orderAttachmentFullUrl // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,orderProofFullUrl: freezed == orderProofFullUrl ? _self.orderProofFullUrl : orderProofFullUrl // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,parcelCategory: freezed == parcelCategory ? _self.parcelCategory : parcelCategory // ignore: cast_nullable_to_non_nullable
as dynamic,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,
  ));
}
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
    return null;
  }

  return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Order implements Order {
  const _Order({@JsonKey(name: "id") this.id, @JsonKey(name: "user_id") this.userId, @JsonKey(name: "order_amount") this.orderAmount, @JsonKey(name: "coupon_discount_amount") this.couponDiscountAmount, @JsonKey(name: "coupon_discount_title") this.couponDiscountTitle, @JsonKey(name: "payment_status") this.paymentStatus, @JsonKey(name: "order_status") this.orderStatus, @JsonKey(name: "total_tax_amount") this.totalTaxAmount, @JsonKey(name: "payment_method") this.paymentMethod, @JsonKey(name: "transaction_reference") this.transactionReference, @JsonKey(name: "delivery_address_id") this.deliveryAddressId, @JsonKey(name: "delivery_man_id") this.deliveryManId, @JsonKey(name: "coupon_code") this.couponCode, @JsonKey(name: "order_note") this.orderNote, @JsonKey(name: "order_type") this.orderType, @JsonKey(name: "checked") this.checked, @JsonKey(name: "store_id") this.storeId, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "delivery_charge") this.deliveryCharge, @JsonKey(name: "schedule_at") this.scheduleAt, @JsonKey(name: "callback") this.callback, @JsonKey(name: "otp") this.otp, @JsonKey(name: "pending") this.pending, @JsonKey(name: "accepted") this.accepted, @JsonKey(name: "confirmed") this.confirmed, @JsonKey(name: "processing") this.processing, @JsonKey(name: "handover") this.handover, @JsonKey(name: "picked_up") this.pickedUp, @JsonKey(name: "delivered") this.delivered, @JsonKey(name: "canceled") this.canceled, @JsonKey(name: "refund_requested") this.refundRequested, @JsonKey(name: "refunded") this.refunded, @JsonKey(name: "delivery_address") this.deliveryAddress, @JsonKey(name: "scheduled") this.scheduled, @JsonKey(name: "store_discount_amount") this.storeDiscountAmount, @JsonKey(name: "original_delivery_charge") this.originalDeliveryCharge, @JsonKey(name: "failed") this.failed, @JsonKey(name: "adjusment") this.adjusment, @JsonKey(name: "edited") this.edited, @JsonKey(name: "delivery_time") this.deliveryTime, @JsonKey(name: "zone_id") this.zoneId, @JsonKey(name: "module_id") this.moduleId, @JsonKey(name: "order_attachment") this.orderAttachment, @JsonKey(name: "parcel_category_id") this.parcelCategoryId, @JsonKey(name: "receiver_details") this.receiverDetails, @JsonKey(name: "charge_payer") this.chargePayer, @JsonKey(name: "distance") this.distance, @JsonKey(name: "dm_tips") this.dmTips, @JsonKey(name: "free_delivery_by") this.freeDeliveryBy, @JsonKey(name: "refund_request_canceled") this.refundRequestCanceled, @JsonKey(name: "prescription_order") this.prescriptionOrder, @JsonKey(name: "tax_status") this.taxStatus, @JsonKey(name: "dm_vehicle_id") this.dmVehicleId, @JsonKey(name: "cancellation_reason") this.cancellationReason, @JsonKey(name: "canceled_by") this.canceledBy, @JsonKey(name: "coupon_created_by") this.couponCreatedBy, @JsonKey(name: "discount_on_product_by") this.discountOnProductBy, @JsonKey(name: "processing_time") this.processingTime, @JsonKey(name: "unavailable_item_note") this.unavailableItemNote, @JsonKey(name: "cutlery") this.cutlery, @JsonKey(name: "delivery_instruction") this.deliveryInstruction, @JsonKey(name: "tax_percentage") this.taxPercentage, @JsonKey(name: "additional_charge") this.additionalCharge, @JsonKey(name: "order_proof") this.orderProof, @JsonKey(name: "partially_paid_amount") this.partiallyPaidAmount, @JsonKey(name: "is_guest") this.isGuest, @JsonKey(name: "flash_admin_discount_amount") this.flashAdminDiscountAmount, @JsonKey(name: "flash_store_discount_amount") this.flashStoreDiscountAmount, @JsonKey(name: "cash_back_id") this.cashBackId, @JsonKey(name: "extra_packaging_amount") this.extraPackagingAmount, @JsonKey(name: "ref_bonus_amount") this.refBonusAmount, @JsonKey(name: "details_count") this.detailsCount, @JsonKey(name: "store") this.store, @JsonKey(name: "delivery_man") this.deliveryMan, @JsonKey(name: "module_type") this.moduleType, @JsonKey(name: "order_attachment_full_url") final  List<dynamic>? orderAttachmentFullUrl, @JsonKey(name: "order_proof_full_url") final  List<dynamic>? orderProofFullUrl, @JsonKey(name: "parcel_category") this.parcelCategory, @JsonKey(name: "storage") final  List<dynamic>? storage, @JsonKey(name: "module") this.module}): _orderAttachmentFullUrl = orderAttachmentFullUrl,_orderProofFullUrl = orderProofFullUrl,_storage = storage;
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "user_id") final  int? userId;
@override@JsonKey(name: "order_amount") final  double? orderAmount;
@override@JsonKey(name: "coupon_discount_amount") final  int? couponDiscountAmount;
@override@JsonKey(name: "coupon_discount_title") final  String? couponDiscountTitle;
@override@JsonKey(name: "payment_status") final  String? paymentStatus;
@override@JsonKey(name: "order_status") final  String? orderStatus;
@override@JsonKey(name: "total_tax_amount") final  double? totalTaxAmount;
@override@JsonKey(name: "payment_method") final  String? paymentMethod;
@override@JsonKey(name: "transaction_reference") final  dynamic transactionReference;
@override@JsonKey(name: "delivery_address_id") final  dynamic deliveryAddressId;
@override@JsonKey(name: "delivery_man_id") final  dynamic deliveryManId;
@override@JsonKey(name: "coupon_code") final  dynamic couponCode;
@override@JsonKey(name: "order_note") final  String? orderNote;
@override@JsonKey(name: "order_type") final  String? orderType;
@override@JsonKey(name: "checked") final  int? checked;
@override@JsonKey(name: "store_id") final  int? storeId;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "delivery_charge") final  int? deliveryCharge;
@override@JsonKey(name: "schedule_at") final  DateTime? scheduleAt;
@override@JsonKey(name: "callback") final  dynamic callback;
@override@JsonKey(name: "otp") final  String? otp;
@override@JsonKey(name: "pending") final  DateTime? pending;
@override@JsonKey(name: "accepted") final  dynamic accepted;
@override@JsonKey(name: "confirmed") final  DateTime? confirmed;
@override@JsonKey(name: "processing") final  DateTime? processing;
@override@JsonKey(name: "handover") final  dynamic handover;
@override@JsonKey(name: "picked_up") final  DateTime? pickedUp;
@override@JsonKey(name: "delivered") final  dynamic delivered;
@override@JsonKey(name: "canceled") final  dynamic canceled;
@override@JsonKey(name: "refund_requested") final  dynamic refundRequested;
@override@JsonKey(name: "refunded") final  dynamic refunded;
@override@JsonKey(name: "delivery_address") final  DeliveryAddress? deliveryAddress;
@override@JsonKey(name: "scheduled") final  int? scheduled;
@override@JsonKey(name: "store_discount_amount") final  int? storeDiscountAmount;
@override@JsonKey(name: "original_delivery_charge") final  int? originalDeliveryCharge;
@override@JsonKey(name: "failed") final  dynamic failed;
@override@JsonKey(name: "adjusment") final  String? adjusment;
@override@JsonKey(name: "edited") final  int? edited;
@override@JsonKey(name: "delivery_time") final  dynamic deliveryTime;
@override@JsonKey(name: "zone_id") final  int? zoneId;
@override@JsonKey(name: "module_id") final  int? moduleId;
@override@JsonKey(name: "order_attachment") final  dynamic orderAttachment;
@override@JsonKey(name: "parcel_category_id") final  dynamic parcelCategoryId;
@override@JsonKey(name: "receiver_details") final  dynamic receiverDetails;
@override@JsonKey(name: "charge_payer") final  dynamic chargePayer;
@override@JsonKey(name: "distance") final  double? distance;
@override@JsonKey(name: "dm_tips") final  int? dmTips;
@override@JsonKey(name: "free_delivery_by") final  dynamic freeDeliveryBy;
@override@JsonKey(name: "refund_request_canceled") final  dynamic refundRequestCanceled;
@override@JsonKey(name: "prescription_order") final  bool? prescriptionOrder;
@override@JsonKey(name: "tax_status") final  String? taxStatus;
@override@JsonKey(name: "dm_vehicle_id") final  dynamic dmVehicleId;
@override@JsonKey(name: "cancellation_reason") final  dynamic cancellationReason;
@override@JsonKey(name: "canceled_by") final  dynamic canceledBy;
@override@JsonKey(name: "coupon_created_by") final  dynamic couponCreatedBy;
@override@JsonKey(name: "discount_on_product_by") final  String? discountOnProductBy;
@override@JsonKey(name: "processing_time") final  int? processingTime;
@override@JsonKey(name: "unavailable_item_note") final  dynamic unavailableItemNote;
@override@JsonKey(name: "cutlery") final  bool? cutlery;
@override@JsonKey(name: "delivery_instruction") final  dynamic deliveryInstruction;
@override@JsonKey(name: "tax_percentage") final  int? taxPercentage;
@override@JsonKey(name: "additional_charge") final  int? additionalCharge;
@override@JsonKey(name: "order_proof") final  dynamic orderProof;
@override@JsonKey(name: "partially_paid_amount") final  int? partiallyPaidAmount;
@override@JsonKey(name: "is_guest") final  bool? isGuest;
@override@JsonKey(name: "flash_admin_discount_amount") final  int? flashAdminDiscountAmount;
@override@JsonKey(name: "flash_store_discount_amount") final  int? flashStoreDiscountAmount;
@override@JsonKey(name: "cash_back_id") final  dynamic cashBackId;
@override@JsonKey(name: "extra_packaging_amount") final  int? extraPackagingAmount;
@override@JsonKey(name: "ref_bonus_amount") final  int? refBonusAmount;
@override@JsonKey(name: "details_count") final  int? detailsCount;
@override@JsonKey(name: "store") final  Store? store;
@override@JsonKey(name: "delivery_man") final  dynamic deliveryMan;
@override@JsonKey(name: "module_type") final  String? moduleType;
 final  List<dynamic>? _orderAttachmentFullUrl;
@override@JsonKey(name: "order_attachment_full_url") List<dynamic>? get orderAttachmentFullUrl {
  final value = _orderAttachmentFullUrl;
  if (value == null) return null;
  if (_orderAttachmentFullUrl is EqualUnmodifiableListView) return _orderAttachmentFullUrl;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _orderProofFullUrl;
@override@JsonKey(name: "order_proof_full_url") List<dynamic>? get orderProofFullUrl {
  final value = _orderProofFullUrl;
  if (value == null) return null;
  if (_orderProofFullUrl is EqualUnmodifiableListView) return _orderProofFullUrl;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "parcel_category") final  dynamic parcelCategory;
 final  List<dynamic>? _storage;
@override@JsonKey(name: "storage") List<dynamic>? get storage {
  final value = _storage;
  if (value == null) return null;
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "module") final  Module? module;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.couponDiscountAmount, couponDiscountAmount) || other.couponDiscountAmount == couponDiscountAmount)&&(identical(other.couponDiscountTitle, couponDiscountTitle) || other.couponDiscountTitle == couponDiscountTitle)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.totalTaxAmount, totalTaxAmount) || other.totalTaxAmount == totalTaxAmount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&const DeepCollectionEquality().equals(other.transactionReference, transactionReference)&&const DeepCollectionEquality().equals(other.deliveryAddressId, deliveryAddressId)&&const DeepCollectionEquality().equals(other.deliveryManId, deliveryManId)&&const DeepCollectionEquality().equals(other.couponCode, couponCode)&&(identical(other.orderNote, orderNote) || other.orderNote == orderNote)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&const DeepCollectionEquality().equals(other.callback, callback)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.pending, pending) || other.pending == pending)&&const DeepCollectionEquality().equals(other.accepted, accepted)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.processing, processing) || other.processing == processing)&&const DeepCollectionEquality().equals(other.handover, handover)&&(identical(other.pickedUp, pickedUp) || other.pickedUp == pickedUp)&&const DeepCollectionEquality().equals(other.delivered, delivered)&&const DeepCollectionEquality().equals(other.canceled, canceled)&&const DeepCollectionEquality().equals(other.refundRequested, refundRequested)&&const DeepCollectionEquality().equals(other.refunded, refunded)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.storeDiscountAmount, storeDiscountAmount) || other.storeDiscountAmount == storeDiscountAmount)&&(identical(other.originalDeliveryCharge, originalDeliveryCharge) || other.originalDeliveryCharge == originalDeliveryCharge)&&const DeepCollectionEquality().equals(other.failed, failed)&&(identical(other.adjusment, adjusment) || other.adjusment == adjusment)&&(identical(other.edited, edited) || other.edited == edited)&&const DeepCollectionEquality().equals(other.deliveryTime, deliveryTime)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&const DeepCollectionEquality().equals(other.orderAttachment, orderAttachment)&&const DeepCollectionEquality().equals(other.parcelCategoryId, parcelCategoryId)&&const DeepCollectionEquality().equals(other.receiverDetails, receiverDetails)&&const DeepCollectionEquality().equals(other.chargePayer, chargePayer)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.dmTips, dmTips) || other.dmTips == dmTips)&&const DeepCollectionEquality().equals(other.freeDeliveryBy, freeDeliveryBy)&&const DeepCollectionEquality().equals(other.refundRequestCanceled, refundRequestCanceled)&&(identical(other.prescriptionOrder, prescriptionOrder) || other.prescriptionOrder == prescriptionOrder)&&(identical(other.taxStatus, taxStatus) || other.taxStatus == taxStatus)&&const DeepCollectionEquality().equals(other.dmVehicleId, dmVehicleId)&&const DeepCollectionEquality().equals(other.cancellationReason, cancellationReason)&&const DeepCollectionEquality().equals(other.canceledBy, canceledBy)&&const DeepCollectionEquality().equals(other.couponCreatedBy, couponCreatedBy)&&(identical(other.discountOnProductBy, discountOnProductBy) || other.discountOnProductBy == discountOnProductBy)&&(identical(other.processingTime, processingTime) || other.processingTime == processingTime)&&const DeepCollectionEquality().equals(other.unavailableItemNote, unavailableItemNote)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&const DeepCollectionEquality().equals(other.deliveryInstruction, deliveryInstruction)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.additionalCharge, additionalCharge) || other.additionalCharge == additionalCharge)&&const DeepCollectionEquality().equals(other.orderProof, orderProof)&&(identical(other.partiallyPaidAmount, partiallyPaidAmount) || other.partiallyPaidAmount == partiallyPaidAmount)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.flashAdminDiscountAmount, flashAdminDiscountAmount) || other.flashAdminDiscountAmount == flashAdminDiscountAmount)&&(identical(other.flashStoreDiscountAmount, flashStoreDiscountAmount) || other.flashStoreDiscountAmount == flashStoreDiscountAmount)&&const DeepCollectionEquality().equals(other.cashBackId, cashBackId)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&(identical(other.refBonusAmount, refBonusAmount) || other.refBonusAmount == refBonusAmount)&&(identical(other.detailsCount, detailsCount) || other.detailsCount == detailsCount)&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.deliveryMan, deliveryMan)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&const DeepCollectionEquality().equals(other._orderAttachmentFullUrl, _orderAttachmentFullUrl)&&const DeepCollectionEquality().equals(other._orderProofFullUrl, _orderProofFullUrl)&&const DeepCollectionEquality().equals(other.parcelCategory, parcelCategory)&&const DeepCollectionEquality().equals(other._storage, _storage)&&(identical(other.module, module) || other.module == module));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,orderAmount,couponDiscountAmount,couponDiscountTitle,paymentStatus,orderStatus,totalTaxAmount,paymentMethod,const DeepCollectionEquality().hash(transactionReference),const DeepCollectionEquality().hash(deliveryAddressId),const DeepCollectionEquality().hash(deliveryManId),const DeepCollectionEquality().hash(couponCode),orderNote,orderType,checked,storeId,createdAt,updatedAt,deliveryCharge,scheduleAt,const DeepCollectionEquality().hash(callback),otp,pending,const DeepCollectionEquality().hash(accepted),confirmed,processing,const DeepCollectionEquality().hash(handover),pickedUp,const DeepCollectionEquality().hash(delivered),const DeepCollectionEquality().hash(canceled),const DeepCollectionEquality().hash(refundRequested),const DeepCollectionEquality().hash(refunded),deliveryAddress,scheduled,storeDiscountAmount,originalDeliveryCharge,const DeepCollectionEquality().hash(failed),adjusment,edited,const DeepCollectionEquality().hash(deliveryTime),zoneId,moduleId,const DeepCollectionEquality().hash(orderAttachment),const DeepCollectionEquality().hash(parcelCategoryId),const DeepCollectionEquality().hash(receiverDetails),const DeepCollectionEquality().hash(chargePayer),distance,dmTips,const DeepCollectionEquality().hash(freeDeliveryBy),const DeepCollectionEquality().hash(refundRequestCanceled),prescriptionOrder,taxStatus,const DeepCollectionEquality().hash(dmVehicleId),const DeepCollectionEquality().hash(cancellationReason),const DeepCollectionEquality().hash(canceledBy),const DeepCollectionEquality().hash(couponCreatedBy),discountOnProductBy,processingTime,const DeepCollectionEquality().hash(unavailableItemNote),cutlery,const DeepCollectionEquality().hash(deliveryInstruction),taxPercentage,additionalCharge,const DeepCollectionEquality().hash(orderProof),partiallyPaidAmount,isGuest,flashAdminDiscountAmount,flashStoreDiscountAmount,const DeepCollectionEquality().hash(cashBackId),extraPackagingAmount,refBonusAmount,detailsCount,store,const DeepCollectionEquality().hash(deliveryMan),moduleType,const DeepCollectionEquality().hash(_orderAttachmentFullUrl),const DeepCollectionEquality().hash(_orderProofFullUrl),const DeepCollectionEquality().hash(parcelCategory),const DeepCollectionEquality().hash(_storage),module]);

@override
String toString() {
  return 'Order(id: $id, userId: $userId, orderAmount: $orderAmount, couponDiscountAmount: $couponDiscountAmount, couponDiscountTitle: $couponDiscountTitle, paymentStatus: $paymentStatus, orderStatus: $orderStatus, totalTaxAmount: $totalTaxAmount, paymentMethod: $paymentMethod, transactionReference: $transactionReference, deliveryAddressId: $deliveryAddressId, deliveryManId: $deliveryManId, couponCode: $couponCode, orderNote: $orderNote, orderType: $orderType, checked: $checked, storeId: $storeId, createdAt: $createdAt, updatedAt: $updatedAt, deliveryCharge: $deliveryCharge, scheduleAt: $scheduleAt, callback: $callback, otp: $otp, pending: $pending, accepted: $accepted, confirmed: $confirmed, processing: $processing, handover: $handover, pickedUp: $pickedUp, delivered: $delivered, canceled: $canceled, refundRequested: $refundRequested, refunded: $refunded, deliveryAddress: $deliveryAddress, scheduled: $scheduled, storeDiscountAmount: $storeDiscountAmount, originalDeliveryCharge: $originalDeliveryCharge, failed: $failed, adjusment: $adjusment, edited: $edited, deliveryTime: $deliveryTime, zoneId: $zoneId, moduleId: $moduleId, orderAttachment: $orderAttachment, parcelCategoryId: $parcelCategoryId, receiverDetails: $receiverDetails, chargePayer: $chargePayer, distance: $distance, dmTips: $dmTips, freeDeliveryBy: $freeDeliveryBy, refundRequestCanceled: $refundRequestCanceled, prescriptionOrder: $prescriptionOrder, taxStatus: $taxStatus, dmVehicleId: $dmVehicleId, cancellationReason: $cancellationReason, canceledBy: $canceledBy, couponCreatedBy: $couponCreatedBy, discountOnProductBy: $discountOnProductBy, processingTime: $processingTime, unavailableItemNote: $unavailableItemNote, cutlery: $cutlery, deliveryInstruction: $deliveryInstruction, taxPercentage: $taxPercentage, additionalCharge: $additionalCharge, orderProof: $orderProof, partiallyPaidAmount: $partiallyPaidAmount, isGuest: $isGuest, flashAdminDiscountAmount: $flashAdminDiscountAmount, flashStoreDiscountAmount: $flashStoreDiscountAmount, cashBackId: $cashBackId, extraPackagingAmount: $extraPackagingAmount, refBonusAmount: $refBonusAmount, detailsCount: $detailsCount, store: $store, deliveryMan: $deliveryMan, moduleType: $moduleType, orderAttachmentFullUrl: $orderAttachmentFullUrl, orderProofFullUrl: $orderProofFullUrl, parcelCategory: $parcelCategory, storage: $storage, module: $module)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "user_id") int? userId,@JsonKey(name: "order_amount") double? orderAmount,@JsonKey(name: "coupon_discount_amount") int? couponDiscountAmount,@JsonKey(name: "coupon_discount_title") String? couponDiscountTitle,@JsonKey(name: "payment_status") String? paymentStatus,@JsonKey(name: "order_status") String? orderStatus,@JsonKey(name: "total_tax_amount") double? totalTaxAmount,@JsonKey(name: "payment_method") String? paymentMethod,@JsonKey(name: "transaction_reference") dynamic transactionReference,@JsonKey(name: "delivery_address_id") dynamic deliveryAddressId,@JsonKey(name: "delivery_man_id") dynamic deliveryManId,@JsonKey(name: "coupon_code") dynamic couponCode,@JsonKey(name: "order_note") String? orderNote,@JsonKey(name: "order_type") String? orderType,@JsonKey(name: "checked") int? checked,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "delivery_charge") int? deliveryCharge,@JsonKey(name: "schedule_at") DateTime? scheduleAt,@JsonKey(name: "callback") dynamic callback,@JsonKey(name: "otp") String? otp,@JsonKey(name: "pending") DateTime? pending,@JsonKey(name: "accepted") dynamic accepted,@JsonKey(name: "confirmed") DateTime? confirmed,@JsonKey(name: "processing") DateTime? processing,@JsonKey(name: "handover") dynamic handover,@JsonKey(name: "picked_up") DateTime? pickedUp,@JsonKey(name: "delivered") dynamic delivered,@JsonKey(name: "canceled") dynamic canceled,@JsonKey(name: "refund_requested") dynamic refundRequested,@JsonKey(name: "refunded") dynamic refunded,@JsonKey(name: "delivery_address") DeliveryAddress? deliveryAddress,@JsonKey(name: "scheduled") int? scheduled,@JsonKey(name: "store_discount_amount") int? storeDiscountAmount,@JsonKey(name: "original_delivery_charge") int? originalDeliveryCharge,@JsonKey(name: "failed") dynamic failed,@JsonKey(name: "adjusment") String? adjusment,@JsonKey(name: "edited") int? edited,@JsonKey(name: "delivery_time") dynamic deliveryTime,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "order_attachment") dynamic orderAttachment,@JsonKey(name: "parcel_category_id") dynamic parcelCategoryId,@JsonKey(name: "receiver_details") dynamic receiverDetails,@JsonKey(name: "charge_payer") dynamic chargePayer,@JsonKey(name: "distance") double? distance,@JsonKey(name: "dm_tips") int? dmTips,@JsonKey(name: "free_delivery_by") dynamic freeDeliveryBy,@JsonKey(name: "refund_request_canceled") dynamic refundRequestCanceled,@JsonKey(name: "prescription_order") bool? prescriptionOrder,@JsonKey(name: "tax_status") String? taxStatus,@JsonKey(name: "dm_vehicle_id") dynamic dmVehicleId,@JsonKey(name: "cancellation_reason") dynamic cancellationReason,@JsonKey(name: "canceled_by") dynamic canceledBy,@JsonKey(name: "coupon_created_by") dynamic couponCreatedBy,@JsonKey(name: "discount_on_product_by") String? discountOnProductBy,@JsonKey(name: "processing_time") int? processingTime,@JsonKey(name: "unavailable_item_note") dynamic unavailableItemNote,@JsonKey(name: "cutlery") bool? cutlery,@JsonKey(name: "delivery_instruction") dynamic deliveryInstruction,@JsonKey(name: "tax_percentage") int? taxPercentage,@JsonKey(name: "additional_charge") int? additionalCharge,@JsonKey(name: "order_proof") dynamic orderProof,@JsonKey(name: "partially_paid_amount") int? partiallyPaidAmount,@JsonKey(name: "is_guest") bool? isGuest,@JsonKey(name: "flash_admin_discount_amount") int? flashAdminDiscountAmount,@JsonKey(name: "flash_store_discount_amount") int? flashStoreDiscountAmount,@JsonKey(name: "cash_back_id") dynamic cashBackId,@JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,@JsonKey(name: "ref_bonus_amount") int? refBonusAmount,@JsonKey(name: "details_count") int? detailsCount,@JsonKey(name: "store") Store? store,@JsonKey(name: "delivery_man") dynamic deliveryMan,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "order_attachment_full_url") List<dynamic>? orderAttachmentFullUrl,@JsonKey(name: "order_proof_full_url") List<dynamic>? orderProofFullUrl,@JsonKey(name: "parcel_category") dynamic parcelCategory,@JsonKey(name: "storage") List<dynamic>? storage,@JsonKey(name: "module") Module? module
});


@override $DeliveryAddressCopyWith<$Res>? get deliveryAddress;@override $StoreCopyWith<$Res>? get store;@override $ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? orderAmount = freezed,Object? couponDiscountAmount = freezed,Object? couponDiscountTitle = freezed,Object? paymentStatus = freezed,Object? orderStatus = freezed,Object? totalTaxAmount = freezed,Object? paymentMethod = freezed,Object? transactionReference = freezed,Object? deliveryAddressId = freezed,Object? deliveryManId = freezed,Object? couponCode = freezed,Object? orderNote = freezed,Object? orderType = freezed,Object? checked = freezed,Object? storeId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deliveryCharge = freezed,Object? scheduleAt = freezed,Object? callback = freezed,Object? otp = freezed,Object? pending = freezed,Object? accepted = freezed,Object? confirmed = freezed,Object? processing = freezed,Object? handover = freezed,Object? pickedUp = freezed,Object? delivered = freezed,Object? canceled = freezed,Object? refundRequested = freezed,Object? refunded = freezed,Object? deliveryAddress = freezed,Object? scheduled = freezed,Object? storeDiscountAmount = freezed,Object? originalDeliveryCharge = freezed,Object? failed = freezed,Object? adjusment = freezed,Object? edited = freezed,Object? deliveryTime = freezed,Object? zoneId = freezed,Object? moduleId = freezed,Object? orderAttachment = freezed,Object? parcelCategoryId = freezed,Object? receiverDetails = freezed,Object? chargePayer = freezed,Object? distance = freezed,Object? dmTips = freezed,Object? freeDeliveryBy = freezed,Object? refundRequestCanceled = freezed,Object? prescriptionOrder = freezed,Object? taxStatus = freezed,Object? dmVehicleId = freezed,Object? cancellationReason = freezed,Object? canceledBy = freezed,Object? couponCreatedBy = freezed,Object? discountOnProductBy = freezed,Object? processingTime = freezed,Object? unavailableItemNote = freezed,Object? cutlery = freezed,Object? deliveryInstruction = freezed,Object? taxPercentage = freezed,Object? additionalCharge = freezed,Object? orderProof = freezed,Object? partiallyPaidAmount = freezed,Object? isGuest = freezed,Object? flashAdminDiscountAmount = freezed,Object? flashStoreDiscountAmount = freezed,Object? cashBackId = freezed,Object? extraPackagingAmount = freezed,Object? refBonusAmount = freezed,Object? detailsCount = freezed,Object? store = freezed,Object? deliveryMan = freezed,Object? moduleType = freezed,Object? orderAttachmentFullUrl = freezed,Object? orderProofFullUrl = freezed,Object? parcelCategory = freezed,Object? storage = freezed,Object? module = freezed,}) {
  return _then(_Order(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,orderAmount: freezed == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as double?,couponDiscountAmount: freezed == couponDiscountAmount ? _self.couponDiscountAmount : couponDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,couponDiscountTitle: freezed == couponDiscountTitle ? _self.couponDiscountTitle : couponDiscountTitle // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String?,totalTaxAmount: freezed == totalTaxAmount ? _self.totalTaxAmount : totalTaxAmount // ignore: cast_nullable_to_non_nullable
as double?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as dynamic,deliveryAddressId: freezed == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as dynamic,deliveryManId: freezed == deliveryManId ? _self.deliveryManId : deliveryManId // ignore: cast_nullable_to_non_nullable
as dynamic,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as dynamic,orderNote: freezed == orderNote ? _self.orderNote : orderNote // ignore: cast_nullable_to_non_nullable
as String?,orderType: freezed == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String?,checked: freezed == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryCharge: freezed == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as int?,scheduleAt: freezed == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,callback: freezed == callback ? _self.callback : callback // ignore: cast_nullable_to_non_nullable
as dynamic,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as DateTime?,accepted: freezed == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as dynamic,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as DateTime?,processing: freezed == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as DateTime?,handover: freezed == handover ? _self.handover : handover // ignore: cast_nullable_to_non_nullable
as dynamic,pickedUp: freezed == pickedUp ? _self.pickedUp : pickedUp // ignore: cast_nullable_to_non_nullable
as DateTime?,delivered: freezed == delivered ? _self.delivered : delivered // ignore: cast_nullable_to_non_nullable
as dynamic,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as dynamic,refundRequested: freezed == refundRequested ? _self.refundRequested : refundRequested // ignore: cast_nullable_to_non_nullable
as dynamic,refunded: freezed == refunded ? _self.refunded : refunded // ignore: cast_nullable_to_non_nullable
as dynamic,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int?,storeDiscountAmount: freezed == storeDiscountAmount ? _self.storeDiscountAmount : storeDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,originalDeliveryCharge: freezed == originalDeliveryCharge ? _self.originalDeliveryCharge : originalDeliveryCharge // ignore: cast_nullable_to_non_nullable
as int?,failed: freezed == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as dynamic,adjusment: freezed == adjusment ? _self.adjusment : adjusment // ignore: cast_nullable_to_non_nullable
as String?,edited: freezed == edited ? _self.edited : edited // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as dynamic,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,orderAttachment: freezed == orderAttachment ? _self.orderAttachment : orderAttachment // ignore: cast_nullable_to_non_nullable
as dynamic,parcelCategoryId: freezed == parcelCategoryId ? _self.parcelCategoryId : parcelCategoryId // ignore: cast_nullable_to_non_nullable
as dynamic,receiverDetails: freezed == receiverDetails ? _self.receiverDetails : receiverDetails // ignore: cast_nullable_to_non_nullable
as dynamic,chargePayer: freezed == chargePayer ? _self.chargePayer : chargePayer // ignore: cast_nullable_to_non_nullable
as dynamic,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,dmTips: freezed == dmTips ? _self.dmTips : dmTips // ignore: cast_nullable_to_non_nullable
as int?,freeDeliveryBy: freezed == freeDeliveryBy ? _self.freeDeliveryBy : freeDeliveryBy // ignore: cast_nullable_to_non_nullable
as dynamic,refundRequestCanceled: freezed == refundRequestCanceled ? _self.refundRequestCanceled : refundRequestCanceled // ignore: cast_nullable_to_non_nullable
as dynamic,prescriptionOrder: freezed == prescriptionOrder ? _self.prescriptionOrder : prescriptionOrder // ignore: cast_nullable_to_non_nullable
as bool?,taxStatus: freezed == taxStatus ? _self.taxStatus : taxStatus // ignore: cast_nullable_to_non_nullable
as String?,dmVehicleId: freezed == dmVehicleId ? _self.dmVehicleId : dmVehicleId // ignore: cast_nullable_to_non_nullable
as dynamic,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as dynamic,canceledBy: freezed == canceledBy ? _self.canceledBy : canceledBy // ignore: cast_nullable_to_non_nullable
as dynamic,couponCreatedBy: freezed == couponCreatedBy ? _self.couponCreatedBy : couponCreatedBy // ignore: cast_nullable_to_non_nullable
as dynamic,discountOnProductBy: freezed == discountOnProductBy ? _self.discountOnProductBy : discountOnProductBy // ignore: cast_nullable_to_non_nullable
as String?,processingTime: freezed == processingTime ? _self.processingTime : processingTime // ignore: cast_nullable_to_non_nullable
as int?,unavailableItemNote: freezed == unavailableItemNote ? _self.unavailableItemNote : unavailableItemNote // ignore: cast_nullable_to_non_nullable
as dynamic,cutlery: freezed == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool?,deliveryInstruction: freezed == deliveryInstruction ? _self.deliveryInstruction : deliveryInstruction // ignore: cast_nullable_to_non_nullable
as dynamic,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int?,additionalCharge: freezed == additionalCharge ? _self.additionalCharge : additionalCharge // ignore: cast_nullable_to_non_nullable
as int?,orderProof: freezed == orderProof ? _self.orderProof : orderProof // ignore: cast_nullable_to_non_nullable
as dynamic,partiallyPaidAmount: freezed == partiallyPaidAmount ? _self.partiallyPaidAmount : partiallyPaidAmount // ignore: cast_nullable_to_non_nullable
as int?,isGuest: freezed == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool?,flashAdminDiscountAmount: freezed == flashAdminDiscountAmount ? _self.flashAdminDiscountAmount : flashAdminDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,flashStoreDiscountAmount: freezed == flashStoreDiscountAmount ? _self.flashStoreDiscountAmount : flashStoreDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,cashBackId: freezed == cashBackId ? _self.cashBackId : cashBackId // ignore: cast_nullable_to_non_nullable
as dynamic,extraPackagingAmount: freezed == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as int?,refBonusAmount: freezed == refBonusAmount ? _self.refBonusAmount : refBonusAmount // ignore: cast_nullable_to_non_nullable
as int?,detailsCount: freezed == detailsCount ? _self.detailsCount : detailsCount // ignore: cast_nullable_to_non_nullable
as int?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,deliveryMan: freezed == deliveryMan ? _self.deliveryMan : deliveryMan // ignore: cast_nullable_to_non_nullable
as dynamic,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,orderAttachmentFullUrl: freezed == orderAttachmentFullUrl ? _self._orderAttachmentFullUrl : orderAttachmentFullUrl // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,orderProofFullUrl: freezed == orderProofFullUrl ? _self._orderProofFullUrl : orderProofFullUrl // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,parcelCategory: freezed == parcelCategory ? _self.parcelCategory : parcelCategory // ignore: cast_nullable_to_non_nullable
as dynamic,storage: freezed == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,
  ));
}

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
    return null;
  }

  return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
mixin _$DeliveryAddress {

@JsonKey(name: "contact_person_name") String? get contactPersonName;@JsonKey(name: "contact_person_number") String? get contactPersonNumber;@JsonKey(name: "contact_person_email") String? get contactPersonEmail;@JsonKey(name: "address_type") String? get addressType;@JsonKey(name: "address") String? get address;@JsonKey(name: "floor") String? get floor;@JsonKey(name: "road") String? get road;@JsonKey(name: "house") String? get house;@JsonKey(name: "longitude") String? get longitude;@JsonKey(name: "latitude") String? get latitude;
/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<DeliveryAddress> get copyWith => _$DeliveryAddressCopyWithImpl<DeliveryAddress>(this as DeliveryAddress, _$identity);

  /// Serializes this DeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryAddress&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.contactPersonNumber, contactPersonNumber) || other.contactPersonNumber == contactPersonNumber)&&(identical(other.contactPersonEmail, contactPersonEmail) || other.contactPersonEmail == contactPersonEmail)&&(identical(other.addressType, addressType) || other.addressType == addressType)&&(identical(other.address, address) || other.address == address)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.road, road) || other.road == road)&&(identical(other.house, house) || other.house == house)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactPersonName,contactPersonNumber,contactPersonEmail,addressType,address,floor,road,house,longitude,latitude);

@override
String toString() {
  return 'DeliveryAddress(contactPersonName: $contactPersonName, contactPersonNumber: $contactPersonNumber, contactPersonEmail: $contactPersonEmail, addressType: $addressType, address: $address, floor: $floor, road: $road, house: $house, longitude: $longitude, latitude: $latitude)';
}


}

/// @nodoc
abstract mixin class $DeliveryAddressCopyWith<$Res>  {
  factory $DeliveryAddressCopyWith(DeliveryAddress value, $Res Function(DeliveryAddress) _then) = _$DeliveryAddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "contact_person_name") String? contactPersonName,@JsonKey(name: "contact_person_number") String? contactPersonNumber,@JsonKey(name: "contact_person_email") String? contactPersonEmail,@JsonKey(name: "address_type") String? addressType,@JsonKey(name: "address") String? address,@JsonKey(name: "floor") String? floor,@JsonKey(name: "road") String? road,@JsonKey(name: "house") String? house,@JsonKey(name: "longitude") String? longitude,@JsonKey(name: "latitude") String? latitude
});




}
/// @nodoc
class _$DeliveryAddressCopyWithImpl<$Res>
    implements $DeliveryAddressCopyWith<$Res> {
  _$DeliveryAddressCopyWithImpl(this._self, this._then);

  final DeliveryAddress _self;
  final $Res Function(DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contactPersonName = freezed,Object? contactPersonNumber = freezed,Object? contactPersonEmail = freezed,Object? addressType = freezed,Object? address = freezed,Object? floor = freezed,Object? road = freezed,Object? house = freezed,Object? longitude = freezed,Object? latitude = freezed,}) {
  return _then(_self.copyWith(
contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,contactPersonNumber: freezed == contactPersonNumber ? _self.contactPersonNumber : contactPersonNumber // ignore: cast_nullable_to_non_nullable
as String?,contactPersonEmail: freezed == contactPersonEmail ? _self.contactPersonEmail : contactPersonEmail // ignore: cast_nullable_to_non_nullable
as String?,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DeliveryAddress implements DeliveryAddress {
  const _DeliveryAddress({@JsonKey(name: "contact_person_name") this.contactPersonName, @JsonKey(name: "contact_person_number") this.contactPersonNumber, @JsonKey(name: "contact_person_email") this.contactPersonEmail, @JsonKey(name: "address_type") this.addressType, @JsonKey(name: "address") this.address, @JsonKey(name: "floor") this.floor, @JsonKey(name: "road") this.road, @JsonKey(name: "house") this.house, @JsonKey(name: "longitude") this.longitude, @JsonKey(name: "latitude") this.latitude});
  factory _DeliveryAddress.fromJson(Map<String, dynamic> json) => _$DeliveryAddressFromJson(json);

@override@JsonKey(name: "contact_person_name") final  String? contactPersonName;
@override@JsonKey(name: "contact_person_number") final  String? contactPersonNumber;
@override@JsonKey(name: "contact_person_email") final  String? contactPersonEmail;
@override@JsonKey(name: "address_type") final  String? addressType;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "floor") final  String? floor;
@override@JsonKey(name: "road") final  String? road;
@override@JsonKey(name: "house") final  String? house;
@override@JsonKey(name: "longitude") final  String? longitude;
@override@JsonKey(name: "latitude") final  String? latitude;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryAddressCopyWith<_DeliveryAddress> get copyWith => __$DeliveryAddressCopyWithImpl<_DeliveryAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryAddress&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.contactPersonNumber, contactPersonNumber) || other.contactPersonNumber == contactPersonNumber)&&(identical(other.contactPersonEmail, contactPersonEmail) || other.contactPersonEmail == contactPersonEmail)&&(identical(other.addressType, addressType) || other.addressType == addressType)&&(identical(other.address, address) || other.address == address)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.road, road) || other.road == road)&&(identical(other.house, house) || other.house == house)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactPersonName,contactPersonNumber,contactPersonEmail,addressType,address,floor,road,house,longitude,latitude);

@override
String toString() {
  return 'DeliveryAddress(contactPersonName: $contactPersonName, contactPersonNumber: $contactPersonNumber, contactPersonEmail: $contactPersonEmail, addressType: $addressType, address: $address, floor: $floor, road: $road, house: $house, longitude: $longitude, latitude: $latitude)';
}


}

/// @nodoc
abstract mixin class _$DeliveryAddressCopyWith<$Res> implements $DeliveryAddressCopyWith<$Res> {
  factory _$DeliveryAddressCopyWith(_DeliveryAddress value, $Res Function(_DeliveryAddress) _then) = __$DeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "contact_person_name") String? contactPersonName,@JsonKey(name: "contact_person_number") String? contactPersonNumber,@JsonKey(name: "contact_person_email") String? contactPersonEmail,@JsonKey(name: "address_type") String? addressType,@JsonKey(name: "address") String? address,@JsonKey(name: "floor") String? floor,@JsonKey(name: "road") String? road,@JsonKey(name: "house") String? house,@JsonKey(name: "longitude") String? longitude,@JsonKey(name: "latitude") String? latitude
});




}
/// @nodoc
class __$DeliveryAddressCopyWithImpl<$Res>
    implements _$DeliveryAddressCopyWith<$Res> {
  __$DeliveryAddressCopyWithImpl(this._self, this._then);

  final _DeliveryAddress _self;
  final $Res Function(_DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contactPersonName = freezed,Object? contactPersonNumber = freezed,Object? contactPersonEmail = freezed,Object? addressType = freezed,Object? address = freezed,Object? floor = freezed,Object? road = freezed,Object? house = freezed,Object? longitude = freezed,Object? latitude = freezed,}) {
  return _then(_DeliveryAddress(
contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,contactPersonNumber: freezed == contactPersonNumber ? _self.contactPersonNumber : contactPersonNumber // ignore: cast_nullable_to_non_nullable
as String?,contactPersonEmail: freezed == contactPersonEmail ? _self.contactPersonEmail : contactPersonEmail // ignore: cast_nullable_to_non_nullable
as String?,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Module {

@JsonKey(name: "id") int? get id;@JsonKey(name: "module_name") String? get moduleName;@JsonKey(name: "module_type") String? get moduleType;@JsonKey(name: "thumbnail") String? get thumbnail;@JsonKey(name: "status") String? get status;@JsonKey(name: "stores_count") int? get storesCount;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "icon") String? get icon;@JsonKey(name: "theme_id") int? get themeId;@JsonKey(name: "description") String? get description;@JsonKey(name: "all_zone_service") int? get allZoneService;@JsonKey(name: "icon_full_url") String? get iconFullUrl;@JsonKey(name: "thumbnail_full_url") String? get thumbnailFullUrl;@JsonKey(name: "storage") List<Storage>? get storage;@JsonKey(name: "translations") List<Translation>? get translations;
/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleCopyWith<Module> get copyWith => _$ModuleCopyWithImpl<Module>(this as Module, _$identity);

  /// Serializes this Module to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Module&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.status, status) || other.status == status)&&(identical(other.storesCount, storesCount) || other.storesCount == storesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.themeId, themeId) || other.themeId == themeId)&&(identical(other.description, description) || other.description == description)&&(identical(other.allZoneService, allZoneService) || other.allZoneService == allZoneService)&&(identical(other.iconFullUrl, iconFullUrl) || other.iconFullUrl == iconFullUrl)&&(identical(other.thumbnailFullUrl, thumbnailFullUrl) || other.thumbnailFullUrl == thumbnailFullUrl)&&const DeepCollectionEquality().equals(other.storage, storage)&&const DeepCollectionEquality().equals(other.translations, translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleName,moduleType,thumbnail,status,storesCount,createdAt,updatedAt,icon,themeId,description,allZoneService,iconFullUrl,thumbnailFullUrl,const DeepCollectionEquality().hash(storage),const DeepCollectionEquality().hash(translations));

@override
String toString() {
  return 'Module(id: $id, moduleName: $moduleName, moduleType: $moduleType, thumbnail: $thumbnail, status: $status, storesCount: $storesCount, createdAt: $createdAt, updatedAt: $updatedAt, icon: $icon, themeId: $themeId, description: $description, allZoneService: $allZoneService, iconFullUrl: $iconFullUrl, thumbnailFullUrl: $thumbnailFullUrl, storage: $storage, translations: $translations)';
}


}

/// @nodoc
abstract mixin class $ModuleCopyWith<$Res>  {
  factory $ModuleCopyWith(Module value, $Res Function(Module) _then) = _$ModuleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "module_name") String? moduleName,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "status") String? status,@JsonKey(name: "stores_count") int? storesCount,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "icon") String? icon,@JsonKey(name: "theme_id") int? themeId,@JsonKey(name: "description") String? description,@JsonKey(name: "all_zone_service") int? allZoneService,@JsonKey(name: "icon_full_url") String? iconFullUrl,@JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl,@JsonKey(name: "storage") List<Storage>? storage,@JsonKey(name: "translations") List<Translation>? translations
});




}
/// @nodoc
class _$ModuleCopyWithImpl<$Res>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._self, this._then);

  final Module _self;
  final $Res Function(Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? moduleName = freezed,Object? moduleType = freezed,Object? thumbnail = freezed,Object? status = freezed,Object? storesCount = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? icon = freezed,Object? themeId = freezed,Object? description = freezed,Object? allZoneService = freezed,Object? iconFullUrl = freezed,Object? thumbnailFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storesCount: freezed == storesCount ? _self.storesCount : storesCount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,themeId: freezed == themeId ? _self.themeId : themeId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,allZoneService: freezed == allZoneService ? _self.allZoneService : allZoneService // ignore: cast_nullable_to_non_nullable
as int?,iconFullUrl: freezed == iconFullUrl ? _self.iconFullUrl : iconFullUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailFullUrl: freezed == thumbnailFullUrl ? _self.thumbnailFullUrl : thumbnailFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<Storage>?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Module implements Module {
  const _Module({@JsonKey(name: "id") this.id, @JsonKey(name: "module_name") this.moduleName, @JsonKey(name: "module_type") this.moduleType, @JsonKey(name: "thumbnail") this.thumbnail, @JsonKey(name: "status") this.status, @JsonKey(name: "stores_count") this.storesCount, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "icon") this.icon, @JsonKey(name: "theme_id") this.themeId, @JsonKey(name: "description") this.description, @JsonKey(name: "all_zone_service") this.allZoneService, @JsonKey(name: "icon_full_url") this.iconFullUrl, @JsonKey(name: "thumbnail_full_url") this.thumbnailFullUrl, @JsonKey(name: "storage") final  List<Storage>? storage, @JsonKey(name: "translations") final  List<Translation>? translations}): _storage = storage,_translations = translations;
  factory _Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "module_name") final  String? moduleName;
@override@JsonKey(name: "module_type") final  String? moduleType;
@override@JsonKey(name: "thumbnail") final  String? thumbnail;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "stores_count") final  int? storesCount;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "icon") final  String? icon;
@override@JsonKey(name: "theme_id") final  int? themeId;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "all_zone_service") final  int? allZoneService;
@override@JsonKey(name: "icon_full_url") final  String? iconFullUrl;
@override@JsonKey(name: "thumbnail_full_url") final  String? thumbnailFullUrl;
 final  List<Storage>? _storage;
@override@JsonKey(name: "storage") List<Storage>? get storage {
  final value = _storage;
  if (value == null) return null;
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Translation>? _translations;
@override@JsonKey(name: "translations") List<Translation>? get translations {
  final value = _translations;
  if (value == null) return null;
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleCopyWith<_Module> get copyWith => __$ModuleCopyWithImpl<_Module>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Module&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.status, status) || other.status == status)&&(identical(other.storesCount, storesCount) || other.storesCount == storesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.themeId, themeId) || other.themeId == themeId)&&(identical(other.description, description) || other.description == description)&&(identical(other.allZoneService, allZoneService) || other.allZoneService == allZoneService)&&(identical(other.iconFullUrl, iconFullUrl) || other.iconFullUrl == iconFullUrl)&&(identical(other.thumbnailFullUrl, thumbnailFullUrl) || other.thumbnailFullUrl == thumbnailFullUrl)&&const DeepCollectionEquality().equals(other._storage, _storage)&&const DeepCollectionEquality().equals(other._translations, _translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleName,moduleType,thumbnail,status,storesCount,createdAt,updatedAt,icon,themeId,description,allZoneService,iconFullUrl,thumbnailFullUrl,const DeepCollectionEquality().hash(_storage),const DeepCollectionEquality().hash(_translations));

@override
String toString() {
  return 'Module(id: $id, moduleName: $moduleName, moduleType: $moduleType, thumbnail: $thumbnail, status: $status, storesCount: $storesCount, createdAt: $createdAt, updatedAt: $updatedAt, icon: $icon, themeId: $themeId, description: $description, allZoneService: $allZoneService, iconFullUrl: $iconFullUrl, thumbnailFullUrl: $thumbnailFullUrl, storage: $storage, translations: $translations)';
}


}

/// @nodoc
abstract mixin class _$ModuleCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$ModuleCopyWith(_Module value, $Res Function(_Module) _then) = __$ModuleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "module_name") String? moduleName,@JsonKey(name: "module_type") String? moduleType,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "status") String? status,@JsonKey(name: "stores_count") int? storesCount,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "icon") String? icon,@JsonKey(name: "theme_id") int? themeId,@JsonKey(name: "description") String? description,@JsonKey(name: "all_zone_service") int? allZoneService,@JsonKey(name: "icon_full_url") String? iconFullUrl,@JsonKey(name: "thumbnail_full_url") String? thumbnailFullUrl,@JsonKey(name: "storage") List<Storage>? storage,@JsonKey(name: "translations") List<Translation>? translations
});




}
/// @nodoc
class __$ModuleCopyWithImpl<$Res>
    implements _$ModuleCopyWith<$Res> {
  __$ModuleCopyWithImpl(this._self, this._then);

  final _Module _self;
  final $Res Function(_Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? moduleName = freezed,Object? moduleType = freezed,Object? thumbnail = freezed,Object? status = freezed,Object? storesCount = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? icon = freezed,Object? themeId = freezed,Object? description = freezed,Object? allZoneService = freezed,Object? iconFullUrl = freezed,Object? thumbnailFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,}) {
  return _then(_Module(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,moduleType: freezed == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storesCount: freezed == storesCount ? _self.storesCount : storesCount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,themeId: freezed == themeId ? _self.themeId : themeId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,allZoneService: freezed == allZoneService ? _self.allZoneService : allZoneService // ignore: cast_nullable_to_non_nullable
as int?,iconFullUrl: freezed == iconFullUrl ? _self.iconFullUrl : iconFullUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailFullUrl: freezed == thumbnailFullUrl ? _self.thumbnailFullUrl : thumbnailFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<Storage>?,translations: freezed == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,
  ));
}


}


/// @nodoc
mixin _$Storage {

@JsonKey(name: "id") int? get id;@JsonKey(name: "data_type") Type? get dataType;@JsonKey(name: "data_id") String? get dataId;@JsonKey(name: "key") StorageKey? get key;@JsonKey(name: "value") Value? get value;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;
/// Create a copy of Storage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageCopyWith<Storage> get copyWith => _$StorageCopyWithImpl<Storage>(this as Storage, _$identity);

  /// Serializes this Storage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Storage&&(identical(other.id, id) || other.id == id)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dataType,dataId,key,value,createdAt,updatedAt);

@override
String toString() {
  return 'Storage(id: $id, dataType: $dataType, dataId: $dataId, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StorageCopyWith<$Res>  {
  factory $StorageCopyWith(Storage value, $Res Function(Storage) _then) = _$StorageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "data_type") Type? dataType,@JsonKey(name: "data_id") String? dataId,@JsonKey(name: "key") StorageKey? key,@JsonKey(name: "value") Value? value,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class _$StorageCopyWithImpl<$Res>
    implements $StorageCopyWith<$Res> {
  _$StorageCopyWithImpl(this._self, this._then);

  final Storage _self;
  final $Res Function(Storage) _then;

/// Create a copy of Storage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? dataType = freezed,Object? dataId = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as Type?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as StorageKey?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Value?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Storage implements Storage {
  const _Storage({@JsonKey(name: "id") this.id, @JsonKey(name: "data_type") this.dataType, @JsonKey(name: "data_id") this.dataId, @JsonKey(name: "key") this.key, @JsonKey(name: "value") this.value, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt});
  factory _Storage.fromJson(Map<String, dynamic> json) => _$StorageFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "data_type") final  Type? dataType;
@override@JsonKey(name: "data_id") final  String? dataId;
@override@JsonKey(name: "key") final  StorageKey? key;
@override@JsonKey(name: "value") final  Value? value;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;

/// Create a copy of Storage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorageCopyWith<_Storage> get copyWith => __$StorageCopyWithImpl<_Storage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Storage&&(identical(other.id, id) || other.id == id)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.dataId, dataId) || other.dataId == dataId)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dataType,dataId,key,value,createdAt,updatedAt);

@override
String toString() {
  return 'Storage(id: $id, dataType: $dataType, dataId: $dataId, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StorageCopyWith<$Res> implements $StorageCopyWith<$Res> {
  factory _$StorageCopyWith(_Storage value, $Res Function(_Storage) _then) = __$StorageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "data_type") Type? dataType,@JsonKey(name: "data_id") String? dataId,@JsonKey(name: "key") StorageKey? key,@JsonKey(name: "value") Value? value,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class __$StorageCopyWithImpl<$Res>
    implements _$StorageCopyWith<$Res> {
  __$StorageCopyWithImpl(this._self, this._then);

  final _Storage _self;
  final $Res Function(_Storage) _then;

/// Create a copy of Storage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? dataType = freezed,Object? dataId = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Storage(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as Type?,dataId: freezed == dataId ? _self.dataId : dataId // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as StorageKey?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Value?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$Translation {

@JsonKey(name: "id") int? get id;@JsonKey(name: "translationable_type") Type? get translationableType;@JsonKey(name: "translationable_id") int? get translationableId;@JsonKey(name: "locale") Locale? get locale;@JsonKey(name: "key") TranslationKey? get key;@JsonKey(name: "value") String? get value;@JsonKey(name: "created_at") dynamic get createdAt;@JsonKey(name: "updated_at") dynamic get updatedAt;
/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationCopyWith<Translation> get copyWith => _$TranslationCopyWithImpl<Translation>(this as Translation, _$identity);

  /// Serializes this Translation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Translation&&(identical(other.id, id) || other.id == id)&&(identical(other.translationableType, translationableType) || other.translationableType == translationableType)&&(identical(other.translationableId, translationableId) || other.translationableId == translationableId)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.createdAt, createdAt)&&const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,translationableType,translationableId,locale,key,value,const DeepCollectionEquality().hash(createdAt),const DeepCollectionEquality().hash(updatedAt));

@override
String toString() {
  return 'Translation(id: $id, translationableType: $translationableType, translationableId: $translationableId, locale: $locale, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TranslationCopyWith<$Res>  {
  factory $TranslationCopyWith(Translation value, $Res Function(Translation) _then) = _$TranslationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "translationable_type") Type? translationableType,@JsonKey(name: "translationable_id") int? translationableId,@JsonKey(name: "locale") Locale? locale,@JsonKey(name: "key") TranslationKey? key,@JsonKey(name: "value") String? value,@JsonKey(name: "created_at") dynamic createdAt,@JsonKey(name: "updated_at") dynamic updatedAt
});




}
/// @nodoc
class _$TranslationCopyWithImpl<$Res>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._self, this._then);

  final Translation _self;
  final $Res Function(Translation) _then;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? translationableType = freezed,Object? translationableId = freezed,Object? locale = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,translationableType: freezed == translationableType ? _self.translationableType : translationableType // ignore: cast_nullable_to_non_nullable
as Type?,translationableId: freezed == translationableId ? _self.translationableId : translationableId // ignore: cast_nullable_to_non_nullable
as int?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as TranslationKey?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Translation implements Translation {
  const _Translation({@JsonKey(name: "id") this.id, @JsonKey(name: "translationable_type") this.translationableType, @JsonKey(name: "translationable_id") this.translationableId, @JsonKey(name: "locale") this.locale, @JsonKey(name: "key") this.key, @JsonKey(name: "value") this.value, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt});
  factory _Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "translationable_type") final  Type? translationableType;
@override@JsonKey(name: "translationable_id") final  int? translationableId;
@override@JsonKey(name: "locale") final  Locale? locale;
@override@JsonKey(name: "key") final  TranslationKey? key;
@override@JsonKey(name: "value") final  String? value;
@override@JsonKey(name: "created_at") final  dynamic createdAt;
@override@JsonKey(name: "updated_at") final  dynamic updatedAt;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationCopyWith<_Translation> get copyWith => __$TranslationCopyWithImpl<_Translation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Translation&&(identical(other.id, id) || other.id == id)&&(identical(other.translationableType, translationableType) || other.translationableType == translationableType)&&(identical(other.translationableId, translationableId) || other.translationableId == translationableId)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.createdAt, createdAt)&&const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,translationableType,translationableId,locale,key,value,const DeepCollectionEquality().hash(createdAt),const DeepCollectionEquality().hash(updatedAt));

@override
String toString() {
  return 'Translation(id: $id, translationableType: $translationableType, translationableId: $translationableId, locale: $locale, key: $key, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TranslationCopyWith<$Res> implements $TranslationCopyWith<$Res> {
  factory _$TranslationCopyWith(_Translation value, $Res Function(_Translation) _then) = __$TranslationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "translationable_type") Type? translationableType,@JsonKey(name: "translationable_id") int? translationableId,@JsonKey(name: "locale") Locale? locale,@JsonKey(name: "key") TranslationKey? key,@JsonKey(name: "value") String? value,@JsonKey(name: "created_at") dynamic createdAt,@JsonKey(name: "updated_at") dynamic updatedAt
});




}
/// @nodoc
class __$TranslationCopyWithImpl<$Res>
    implements _$TranslationCopyWith<$Res> {
  __$TranslationCopyWithImpl(this._self, this._then);

  final _Translation _self;
  final $Res Function(_Translation) _then;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? translationableType = freezed,Object? translationableId = freezed,Object? locale = freezed,Object? key = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Translation(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,translationableType: freezed == translationableType ? _self.translationableType : translationableType // ignore: cast_nullable_to_non_nullable
as Type?,translationableId: freezed == translationableId ? _self.translationableId : translationableId // ignore: cast_nullable_to_non_nullable
as int?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as TranslationKey?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$Store {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "phone") String? get phone;@JsonKey(name: "email") String? get email;@JsonKey(name: "logo") String? get logo;@JsonKey(name: "latitude") String? get latitude;@JsonKey(name: "longitude") String? get longitude;@JsonKey(name: "address") String? get address;@JsonKey(name: "footer_text") dynamic get footerText;@JsonKey(name: "minimum_order") int? get minimumOrder;@JsonKey(name: "comission") dynamic get comission;@JsonKey(name: "schedule_order") bool? get scheduleOrder;@JsonKey(name: "status") int? get status;@JsonKey(name: "vendor_id") int? get vendorId;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "free_delivery") bool? get freeDelivery;@JsonKey(name: "cover_photo") String? get coverPhoto;@JsonKey(name: "delivery") bool? get delivery;@JsonKey(name: "take_away") bool? get takeAway;@JsonKey(name: "item_section") bool? get itemSection;@JsonKey(name: "tax") int? get tax;@JsonKey(name: "zone_id") int? get zoneId;@JsonKey(name: "reviews_section") bool? get reviewsSection;@JsonKey(name: "active") bool? get active;@JsonKey(name: "off_day") String? get offDay;@JsonKey(name: "self_delivery_system") int? get selfDeliverySystem;@JsonKey(name: "pos_system") bool? get posSystem;@JsonKey(name: "minimum_shipping_charge") int? get minimumShippingCharge;@JsonKey(name: "delivery_time") String? get deliveryTime;@JsonKey(name: "veg") int? get veg;@JsonKey(name: "non_veg") int? get nonVeg;@JsonKey(name: "order_count") int? get orderCount;@JsonKey(name: "total_order") int? get totalOrder;@JsonKey(name: "module_id") int? get moduleId;@JsonKey(name: "order_place_to_schedule_interval") dynamic get orderPlaceToScheduleInterval;@JsonKey(name: "featured") int? get featured;@JsonKey(name: "per_km_shipping_charge") int? get perKmShippingCharge;@JsonKey(name: "prescription_order") bool? get prescriptionOrder;@JsonKey(name: "slug") String? get slug;@JsonKey(name: "maximum_shipping_charge") dynamic get maximumShippingCharge;@JsonKey(name: "cutlery") bool? get cutlery;@JsonKey(name: "meta_title") dynamic get metaTitle;@JsonKey(name: "meta_description") dynamic get metaDescription;@JsonKey(name: "meta_image") dynamic get metaImage;@JsonKey(name: "announcement") int? get announcement;@JsonKey(name: "announcement_message") dynamic get announcementMessage;@JsonKey(name: "store_business_model") String? get storeBusinessModel;@JsonKey(name: "package_id") dynamic get packageId;@JsonKey(name: "pickup_zone_id") dynamic get pickupZoneId;@JsonKey(name: "comment") dynamic get comment;@JsonKey(name: "is_recommended") bool? get isRecommended;@JsonKey(name: "minimum_stock_for_warning") int? get minimumStockForWarning;@JsonKey(name: "halal_tag_status") bool? get halalTagStatus;@JsonKey(name: "extra_packaging_status") dynamic get extraPackagingStatus;@JsonKey(name: "extra_packaging_amount") int? get extraPackagingAmount;@JsonKey(name: "ratings") List<int>? get ratings;@JsonKey(name: "avg_rating") int? get avgRating;@JsonKey(name: "rating_count") int? get ratingCount;@JsonKey(name: "positive_rating") int? get positiveRating;@JsonKey(name: "total_items") dynamic get totalItems;@JsonKey(name: "total_campaigns") dynamic get totalCampaigns;@JsonKey(name: "current_opening_time") String? get currentOpeningTime;@JsonKey(name: "gst_status") bool? get gstStatus;@JsonKey(name: "gst_code") String? get gstCode;@JsonKey(name: "logo_full_url") String? get logoFullUrl;@JsonKey(name: "cover_photo_full_url") String? get coverPhotoFullUrl;@JsonKey(name: "meta_image_full_url") dynamic get metaImageFullUrl;@JsonKey(name: "translations") List<Translation>? get translations;@JsonKey(name: "storage") List<Storage>? get storage;@JsonKey(name: "module") Module? get module;@JsonKey(name: "schedules") List<Schedule>? get schedules;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.footerText, footerText)&&(identical(other.minimumOrder, minimumOrder) || other.minimumOrder == minimumOrder)&&const DeepCollectionEquality().equals(other.comission, comission)&&(identical(other.scheduleOrder, scheduleOrder) || other.scheduleOrder == scheduleOrder)&&(identical(other.status, status) || other.status == status)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.freeDelivery, freeDelivery) || other.freeDelivery == freeDelivery)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.takeAway, takeAway) || other.takeAway == takeAway)&&(identical(other.itemSection, itemSection) || other.itemSection == itemSection)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.reviewsSection, reviewsSection) || other.reviewsSection == reviewsSection)&&(identical(other.active, active) || other.active == active)&&(identical(other.offDay, offDay) || other.offDay == offDay)&&(identical(other.selfDeliverySystem, selfDeliverySystem) || other.selfDeliverySystem == selfDeliverySystem)&&(identical(other.posSystem, posSystem) || other.posSystem == posSystem)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.nonVeg, nonVeg) || other.nonVeg == nonVeg)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalOrder, totalOrder) || other.totalOrder == totalOrder)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&const DeepCollectionEquality().equals(other.orderPlaceToScheduleInterval, orderPlaceToScheduleInterval)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.perKmShippingCharge, perKmShippingCharge) || other.perKmShippingCharge == perKmShippingCharge)&&(identical(other.prescriptionOrder, prescriptionOrder) || other.prescriptionOrder == prescriptionOrder)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.maximumShippingCharge, maximumShippingCharge)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&const DeepCollectionEquality().equals(other.metaTitle, metaTitle)&&const DeepCollectionEquality().equals(other.metaDescription, metaDescription)&&const DeepCollectionEquality().equals(other.metaImage, metaImage)&&(identical(other.announcement, announcement) || other.announcement == announcement)&&const DeepCollectionEquality().equals(other.announcementMessage, announcementMessage)&&(identical(other.storeBusinessModel, storeBusinessModel) || other.storeBusinessModel == storeBusinessModel)&&const DeepCollectionEquality().equals(other.packageId, packageId)&&const DeepCollectionEquality().equals(other.pickupZoneId, pickupZoneId)&&const DeepCollectionEquality().equals(other.comment, comment)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.minimumStockForWarning, minimumStockForWarning) || other.minimumStockForWarning == minimumStockForWarning)&&(identical(other.halalTagStatus, halalTagStatus) || other.halalTagStatus == halalTagStatus)&&const DeepCollectionEquality().equals(other.extraPackagingStatus, extraPackagingStatus)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&const DeepCollectionEquality().equals(other.ratings, ratings)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.positiveRating, positiveRating) || other.positiveRating == positiveRating)&&const DeepCollectionEquality().equals(other.totalItems, totalItems)&&const DeepCollectionEquality().equals(other.totalCampaigns, totalCampaigns)&&(identical(other.currentOpeningTime, currentOpeningTime) || other.currentOpeningTime == currentOpeningTime)&&(identical(other.gstStatus, gstStatus) || other.gstStatus == gstStatus)&&(identical(other.gstCode, gstCode) || other.gstCode == gstCode)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&const DeepCollectionEquality().equals(other.metaImageFullUrl, metaImageFullUrl)&&const DeepCollectionEquality().equals(other.translations, translations)&&const DeepCollectionEquality().equals(other.storage, storage)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other.schedules, schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,phone,email,logo,latitude,longitude,address,const DeepCollectionEquality().hash(footerText),minimumOrder,const DeepCollectionEquality().hash(comission),scheduleOrder,status,vendorId,createdAt,updatedAt,freeDelivery,coverPhoto,delivery,takeAway,itemSection,tax,zoneId,reviewsSection,active,offDay,selfDeliverySystem,posSystem,minimumShippingCharge,deliveryTime,veg,nonVeg,orderCount,totalOrder,moduleId,const DeepCollectionEquality().hash(orderPlaceToScheduleInterval),featured,perKmShippingCharge,prescriptionOrder,slug,const DeepCollectionEquality().hash(maximumShippingCharge),cutlery,const DeepCollectionEquality().hash(metaTitle),const DeepCollectionEquality().hash(metaDescription),const DeepCollectionEquality().hash(metaImage),announcement,const DeepCollectionEquality().hash(announcementMessage),storeBusinessModel,const DeepCollectionEquality().hash(packageId),const DeepCollectionEquality().hash(pickupZoneId),const DeepCollectionEquality().hash(comment),isRecommended,minimumStockForWarning,halalTagStatus,const DeepCollectionEquality().hash(extraPackagingStatus),extraPackagingAmount,const DeepCollectionEquality().hash(ratings),avgRating,ratingCount,positiveRating,const DeepCollectionEquality().hash(totalItems),const DeepCollectionEquality().hash(totalCampaigns),currentOpeningTime,gstStatus,gstCode,logoFullUrl,coverPhotoFullUrl,const DeepCollectionEquality().hash(metaImageFullUrl),const DeepCollectionEquality().hash(translations),const DeepCollectionEquality().hash(storage),module,const DeepCollectionEquality().hash(schedules)]);

@override
String toString() {
  return 'Store(id: $id, name: $name, phone: $phone, email: $email, logo: $logo, latitude: $latitude, longitude: $longitude, address: $address, footerText: $footerText, minimumOrder: $minimumOrder, comission: $comission, scheduleOrder: $scheduleOrder, status: $status, vendorId: $vendorId, createdAt: $createdAt, updatedAt: $updatedAt, freeDelivery: $freeDelivery, coverPhoto: $coverPhoto, delivery: $delivery, takeAway: $takeAway, itemSection: $itemSection, tax: $tax, zoneId: $zoneId, reviewsSection: $reviewsSection, active: $active, offDay: $offDay, selfDeliverySystem: $selfDeliverySystem, posSystem: $posSystem, minimumShippingCharge: $minimumShippingCharge, deliveryTime: $deliveryTime, veg: $veg, nonVeg: $nonVeg, orderCount: $orderCount, totalOrder: $totalOrder, moduleId: $moduleId, orderPlaceToScheduleInterval: $orderPlaceToScheduleInterval, featured: $featured, perKmShippingCharge: $perKmShippingCharge, prescriptionOrder: $prescriptionOrder, slug: $slug, maximumShippingCharge: $maximumShippingCharge, cutlery: $cutlery, metaTitle: $metaTitle, metaDescription: $metaDescription, metaImage: $metaImage, announcement: $announcement, announcementMessage: $announcementMessage, storeBusinessModel: $storeBusinessModel, packageId: $packageId, pickupZoneId: $pickupZoneId, comment: $comment, isRecommended: $isRecommended, minimumStockForWarning: $minimumStockForWarning, halalTagStatus: $halalTagStatus, extraPackagingStatus: $extraPackagingStatus, extraPackagingAmount: $extraPackagingAmount, ratings: $ratings, avgRating: $avgRating, ratingCount: $ratingCount, positiveRating: $positiveRating, totalItems: $totalItems, totalCampaigns: $totalCampaigns, currentOpeningTime: $currentOpeningTime, gstStatus: $gstStatus, gstCode: $gstCode, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, metaImageFullUrl: $metaImageFullUrl, translations: $translations, storage: $storage, module: $module, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "phone") String? phone,@JsonKey(name: "email") String? email,@JsonKey(name: "logo") String? logo,@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude,@JsonKey(name: "address") String? address,@JsonKey(name: "footer_text") dynamic footerText,@JsonKey(name: "minimum_order") int? minimumOrder,@JsonKey(name: "comission") dynamic comission,@JsonKey(name: "schedule_order") bool? scheduleOrder,@JsonKey(name: "status") int? status,@JsonKey(name: "vendor_id") int? vendorId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "free_delivery") bool? freeDelivery,@JsonKey(name: "cover_photo") String? coverPhoto,@JsonKey(name: "delivery") bool? delivery,@JsonKey(name: "take_away") bool? takeAway,@JsonKey(name: "item_section") bool? itemSection,@JsonKey(name: "tax") int? tax,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "reviews_section") bool? reviewsSection,@JsonKey(name: "active") bool? active,@JsonKey(name: "off_day") String? offDay,@JsonKey(name: "self_delivery_system") int? selfDeliverySystem,@JsonKey(name: "pos_system") bool? posSystem,@JsonKey(name: "minimum_shipping_charge") int? minimumShippingCharge,@JsonKey(name: "delivery_time") String? deliveryTime,@JsonKey(name: "veg") int? veg,@JsonKey(name: "non_veg") int? nonVeg,@JsonKey(name: "order_count") int? orderCount,@JsonKey(name: "total_order") int? totalOrder,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "order_place_to_schedule_interval") dynamic orderPlaceToScheduleInterval,@JsonKey(name: "featured") int? featured,@JsonKey(name: "per_km_shipping_charge") int? perKmShippingCharge,@JsonKey(name: "prescription_order") bool? prescriptionOrder,@JsonKey(name: "slug") String? slug,@JsonKey(name: "maximum_shipping_charge") dynamic maximumShippingCharge,@JsonKey(name: "cutlery") bool? cutlery,@JsonKey(name: "meta_title") dynamic metaTitle,@JsonKey(name: "meta_description") dynamic metaDescription,@JsonKey(name: "meta_image") dynamic metaImage,@JsonKey(name: "announcement") int? announcement,@JsonKey(name: "announcement_message") dynamic announcementMessage,@JsonKey(name: "store_business_model") String? storeBusinessModel,@JsonKey(name: "package_id") dynamic packageId,@JsonKey(name: "pickup_zone_id") dynamic pickupZoneId,@JsonKey(name: "comment") dynamic comment,@JsonKey(name: "is_recommended") bool? isRecommended,@JsonKey(name: "minimum_stock_for_warning") int? minimumStockForWarning,@JsonKey(name: "halal_tag_status") bool? halalTagStatus,@JsonKey(name: "extra_packaging_status") dynamic extraPackagingStatus,@JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,@JsonKey(name: "ratings") List<int>? ratings,@JsonKey(name: "avg_rating") int? avgRating,@JsonKey(name: "rating_count") int? ratingCount,@JsonKey(name: "positive_rating") int? positiveRating,@JsonKey(name: "total_items") dynamic totalItems,@JsonKey(name: "total_campaigns") dynamic totalCampaigns,@JsonKey(name: "current_opening_time") String? currentOpeningTime,@JsonKey(name: "gst_status") bool? gstStatus,@JsonKey(name: "gst_code") String? gstCode,@JsonKey(name: "logo_full_url") String? logoFullUrl,@JsonKey(name: "cover_photo_full_url") String? coverPhotoFullUrl,@JsonKey(name: "meta_image_full_url") dynamic metaImageFullUrl,@JsonKey(name: "translations") List<Translation>? translations,@JsonKey(name: "storage") List<Storage>? storage,@JsonKey(name: "module") Module? module,@JsonKey(name: "schedules") List<Schedule>? schedules
});


$ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class _$StoreCopyWithImpl<$Res>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? email = freezed,Object? logo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? address = freezed,Object? footerText = freezed,Object? minimumOrder = freezed,Object? comission = freezed,Object? scheduleOrder = freezed,Object? status = freezed,Object? vendorId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? freeDelivery = freezed,Object? coverPhoto = freezed,Object? delivery = freezed,Object? takeAway = freezed,Object? itemSection = freezed,Object? tax = freezed,Object? zoneId = freezed,Object? reviewsSection = freezed,Object? active = freezed,Object? offDay = freezed,Object? selfDeliverySystem = freezed,Object? posSystem = freezed,Object? minimumShippingCharge = freezed,Object? deliveryTime = freezed,Object? veg = freezed,Object? nonVeg = freezed,Object? orderCount = freezed,Object? totalOrder = freezed,Object? moduleId = freezed,Object? orderPlaceToScheduleInterval = freezed,Object? featured = freezed,Object? perKmShippingCharge = freezed,Object? prescriptionOrder = freezed,Object? slug = freezed,Object? maximumShippingCharge = freezed,Object? cutlery = freezed,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaImage = freezed,Object? announcement = freezed,Object? announcementMessage = freezed,Object? storeBusinessModel = freezed,Object? packageId = freezed,Object? pickupZoneId = freezed,Object? comment = freezed,Object? isRecommended = freezed,Object? minimumStockForWarning = freezed,Object? halalTagStatus = freezed,Object? extraPackagingStatus = freezed,Object? extraPackagingAmount = freezed,Object? ratings = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? positiveRating = freezed,Object? totalItems = freezed,Object? totalCampaigns = freezed,Object? currentOpeningTime = freezed,Object? gstStatus = freezed,Object? gstCode = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,Object? metaImageFullUrl = freezed,Object? translations = freezed,Object? storage = freezed,Object? module = freezed,Object? schedules = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,footerText: freezed == footerText ? _self.footerText : footerText // ignore: cast_nullable_to_non_nullable
as dynamic,minimumOrder: freezed == minimumOrder ? _self.minimumOrder : minimumOrder // ignore: cast_nullable_to_non_nullable
as int?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as dynamic,scheduleOrder: freezed == scheduleOrder ? _self.scheduleOrder : scheduleOrder // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,freeDelivery: freezed == freeDelivery ? _self.freeDelivery : freeDelivery // ignore: cast_nullable_to_non_nullable
as bool?,coverPhoto: freezed == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,takeAway: freezed == takeAway ? _self.takeAway : takeAway // ignore: cast_nullable_to_non_nullable
as bool?,itemSection: freezed == itemSection ? _self.itemSection : itemSection // ignore: cast_nullable_to_non_nullable
as bool?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,reviewsSection: freezed == reviewsSection ? _self.reviewsSection : reviewsSection // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,offDay: freezed == offDay ? _self.offDay : offDay // ignore: cast_nullable_to_non_nullable
as String?,selfDeliverySystem: freezed == selfDeliverySystem ? _self.selfDeliverySystem : selfDeliverySystem // ignore: cast_nullable_to_non_nullable
as int?,posSystem: freezed == posSystem ? _self.posSystem : posSystem // ignore: cast_nullable_to_non_nullable
as bool?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,veg: freezed == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as int?,nonVeg: freezed == nonVeg ? _self.nonVeg : nonVeg // ignore: cast_nullable_to_non_nullable
as int?,orderCount: freezed == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int?,totalOrder: freezed == totalOrder ? _self.totalOrder : totalOrder // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,orderPlaceToScheduleInterval: freezed == orderPlaceToScheduleInterval ? _self.orderPlaceToScheduleInterval : orderPlaceToScheduleInterval // ignore: cast_nullable_to_non_nullable
as dynamic,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,perKmShippingCharge: freezed == perKmShippingCharge ? _self.perKmShippingCharge : perKmShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,prescriptionOrder: freezed == prescriptionOrder ? _self.prescriptionOrder : prescriptionOrder // ignore: cast_nullable_to_non_nullable
as bool?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,maximumShippingCharge: freezed == maximumShippingCharge ? _self.maximumShippingCharge : maximumShippingCharge // ignore: cast_nullable_to_non_nullable
as dynamic,cutlery: freezed == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool?,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as dynamic,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as dynamic,metaImage: freezed == metaImage ? _self.metaImage : metaImage // ignore: cast_nullable_to_non_nullable
as dynamic,announcement: freezed == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as int?,announcementMessage: freezed == announcementMessage ? _self.announcementMessage : announcementMessage // ignore: cast_nullable_to_non_nullable
as dynamic,storeBusinessModel: freezed == storeBusinessModel ? _self.storeBusinessModel : storeBusinessModel // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as dynamic,pickupZoneId: freezed == pickupZoneId ? _self.pickupZoneId : pickupZoneId // ignore: cast_nullable_to_non_nullable
as dynamic,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,isRecommended: freezed == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool?,minimumStockForWarning: freezed == minimumStockForWarning ? _self.minimumStockForWarning : minimumStockForWarning // ignore: cast_nullable_to_non_nullable
as int?,halalTagStatus: freezed == halalTagStatus ? _self.halalTagStatus : halalTagStatus // ignore: cast_nullable_to_non_nullable
as bool?,extraPackagingStatus: freezed == extraPackagingStatus ? _self.extraPackagingStatus : extraPackagingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,extraPackagingAmount: freezed == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as int?,ratings: freezed == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<int>?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,positiveRating: freezed == positiveRating ? _self.positiveRating : positiveRating // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as dynamic,totalCampaigns: freezed == totalCampaigns ? _self.totalCampaigns : totalCampaigns // ignore: cast_nullable_to_non_nullable
as dynamic,currentOpeningTime: freezed == currentOpeningTime ? _self.currentOpeningTime : currentOpeningTime // ignore: cast_nullable_to_non_nullable
as String?,gstStatus: freezed == gstStatus ? _self.gstStatus : gstStatus // ignore: cast_nullable_to_non_nullable
as bool?,gstCode: freezed == gstCode ? _self.gstCode : gstCode // ignore: cast_nullable_to_non_nullable
as String?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,metaImageFullUrl: freezed == metaImageFullUrl ? _self.metaImageFullUrl : metaImageFullUrl // ignore: cast_nullable_to_non_nullable
as dynamic,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<Storage>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,schedules: freezed == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>?,
  ));
}
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Store implements Store {
  const _Store({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "phone") this.phone, @JsonKey(name: "email") this.email, @JsonKey(name: "logo") this.logo, @JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude, @JsonKey(name: "address") this.address, @JsonKey(name: "footer_text") this.footerText, @JsonKey(name: "minimum_order") this.minimumOrder, @JsonKey(name: "comission") this.comission, @JsonKey(name: "schedule_order") this.scheduleOrder, @JsonKey(name: "status") this.status, @JsonKey(name: "vendor_id") this.vendorId, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "free_delivery") this.freeDelivery, @JsonKey(name: "cover_photo") this.coverPhoto, @JsonKey(name: "delivery") this.delivery, @JsonKey(name: "take_away") this.takeAway, @JsonKey(name: "item_section") this.itemSection, @JsonKey(name: "tax") this.tax, @JsonKey(name: "zone_id") this.zoneId, @JsonKey(name: "reviews_section") this.reviewsSection, @JsonKey(name: "active") this.active, @JsonKey(name: "off_day") this.offDay, @JsonKey(name: "self_delivery_system") this.selfDeliverySystem, @JsonKey(name: "pos_system") this.posSystem, @JsonKey(name: "minimum_shipping_charge") this.minimumShippingCharge, @JsonKey(name: "delivery_time") this.deliveryTime, @JsonKey(name: "veg") this.veg, @JsonKey(name: "non_veg") this.nonVeg, @JsonKey(name: "order_count") this.orderCount, @JsonKey(name: "total_order") this.totalOrder, @JsonKey(name: "module_id") this.moduleId, @JsonKey(name: "order_place_to_schedule_interval") this.orderPlaceToScheduleInterval, @JsonKey(name: "featured") this.featured, @JsonKey(name: "per_km_shipping_charge") this.perKmShippingCharge, @JsonKey(name: "prescription_order") this.prescriptionOrder, @JsonKey(name: "slug") this.slug, @JsonKey(name: "maximum_shipping_charge") this.maximumShippingCharge, @JsonKey(name: "cutlery") this.cutlery, @JsonKey(name: "meta_title") this.metaTitle, @JsonKey(name: "meta_description") this.metaDescription, @JsonKey(name: "meta_image") this.metaImage, @JsonKey(name: "announcement") this.announcement, @JsonKey(name: "announcement_message") this.announcementMessage, @JsonKey(name: "store_business_model") this.storeBusinessModel, @JsonKey(name: "package_id") this.packageId, @JsonKey(name: "pickup_zone_id") this.pickupZoneId, @JsonKey(name: "comment") this.comment, @JsonKey(name: "is_recommended") this.isRecommended, @JsonKey(name: "minimum_stock_for_warning") this.minimumStockForWarning, @JsonKey(name: "halal_tag_status") this.halalTagStatus, @JsonKey(name: "extra_packaging_status") this.extraPackagingStatus, @JsonKey(name: "extra_packaging_amount") this.extraPackagingAmount, @JsonKey(name: "ratings") final  List<int>? ratings, @JsonKey(name: "avg_rating") this.avgRating, @JsonKey(name: "rating_count") this.ratingCount, @JsonKey(name: "positive_rating") this.positiveRating, @JsonKey(name: "total_items") this.totalItems, @JsonKey(name: "total_campaigns") this.totalCampaigns, @JsonKey(name: "current_opening_time") this.currentOpeningTime, @JsonKey(name: "gst_status") this.gstStatus, @JsonKey(name: "gst_code") this.gstCode, @JsonKey(name: "logo_full_url") this.logoFullUrl, @JsonKey(name: "cover_photo_full_url") this.coverPhotoFullUrl, @JsonKey(name: "meta_image_full_url") this.metaImageFullUrl, @JsonKey(name: "translations") final  List<Translation>? translations, @JsonKey(name: "storage") final  List<Storage>? storage, @JsonKey(name: "module") this.module, @JsonKey(name: "schedules") final  List<Schedule>? schedules}): _ratings = ratings,_translations = translations,_storage = storage,_schedules = schedules;
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "phone") final  String? phone;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "logo") final  String? logo;
@override@JsonKey(name: "latitude") final  String? latitude;
@override@JsonKey(name: "longitude") final  String? longitude;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "footer_text") final  dynamic footerText;
@override@JsonKey(name: "minimum_order") final  int? minimumOrder;
@override@JsonKey(name: "comission") final  dynamic comission;
@override@JsonKey(name: "schedule_order") final  bool? scheduleOrder;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "vendor_id") final  int? vendorId;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "free_delivery") final  bool? freeDelivery;
@override@JsonKey(name: "cover_photo") final  String? coverPhoto;
@override@JsonKey(name: "delivery") final  bool? delivery;
@override@JsonKey(name: "take_away") final  bool? takeAway;
@override@JsonKey(name: "item_section") final  bool? itemSection;
@override@JsonKey(name: "tax") final  int? tax;
@override@JsonKey(name: "zone_id") final  int? zoneId;
@override@JsonKey(name: "reviews_section") final  bool? reviewsSection;
@override@JsonKey(name: "active") final  bool? active;
@override@JsonKey(name: "off_day") final  String? offDay;
@override@JsonKey(name: "self_delivery_system") final  int? selfDeliverySystem;
@override@JsonKey(name: "pos_system") final  bool? posSystem;
@override@JsonKey(name: "minimum_shipping_charge") final  int? minimumShippingCharge;
@override@JsonKey(name: "delivery_time") final  String? deliveryTime;
@override@JsonKey(name: "veg") final  int? veg;
@override@JsonKey(name: "non_veg") final  int? nonVeg;
@override@JsonKey(name: "order_count") final  int? orderCount;
@override@JsonKey(name: "total_order") final  int? totalOrder;
@override@JsonKey(name: "module_id") final  int? moduleId;
@override@JsonKey(name: "order_place_to_schedule_interval") final  dynamic orderPlaceToScheduleInterval;
@override@JsonKey(name: "featured") final  int? featured;
@override@JsonKey(name: "per_km_shipping_charge") final  int? perKmShippingCharge;
@override@JsonKey(name: "prescription_order") final  bool? prescriptionOrder;
@override@JsonKey(name: "slug") final  String? slug;
@override@JsonKey(name: "maximum_shipping_charge") final  dynamic maximumShippingCharge;
@override@JsonKey(name: "cutlery") final  bool? cutlery;
@override@JsonKey(name: "meta_title") final  dynamic metaTitle;
@override@JsonKey(name: "meta_description") final  dynamic metaDescription;
@override@JsonKey(name: "meta_image") final  dynamic metaImage;
@override@JsonKey(name: "announcement") final  int? announcement;
@override@JsonKey(name: "announcement_message") final  dynamic announcementMessage;
@override@JsonKey(name: "store_business_model") final  String? storeBusinessModel;
@override@JsonKey(name: "package_id") final  dynamic packageId;
@override@JsonKey(name: "pickup_zone_id") final  dynamic pickupZoneId;
@override@JsonKey(name: "comment") final  dynamic comment;
@override@JsonKey(name: "is_recommended") final  bool? isRecommended;
@override@JsonKey(name: "minimum_stock_for_warning") final  int? minimumStockForWarning;
@override@JsonKey(name: "halal_tag_status") final  bool? halalTagStatus;
@override@JsonKey(name: "extra_packaging_status") final  dynamic extraPackagingStatus;
@override@JsonKey(name: "extra_packaging_amount") final  int? extraPackagingAmount;
 final  List<int>? _ratings;
@override@JsonKey(name: "ratings") List<int>? get ratings {
  final value = _ratings;
  if (value == null) return null;
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "avg_rating") final  int? avgRating;
@override@JsonKey(name: "rating_count") final  int? ratingCount;
@override@JsonKey(name: "positive_rating") final  int? positiveRating;
@override@JsonKey(name: "total_items") final  dynamic totalItems;
@override@JsonKey(name: "total_campaigns") final  dynamic totalCampaigns;
@override@JsonKey(name: "current_opening_time") final  String? currentOpeningTime;
@override@JsonKey(name: "gst_status") final  bool? gstStatus;
@override@JsonKey(name: "gst_code") final  String? gstCode;
@override@JsonKey(name: "logo_full_url") final  String? logoFullUrl;
@override@JsonKey(name: "cover_photo_full_url") final  String? coverPhotoFullUrl;
@override@JsonKey(name: "meta_image_full_url") final  dynamic metaImageFullUrl;
 final  List<Translation>? _translations;
@override@JsonKey(name: "translations") List<Translation>? get translations {
  final value = _translations;
  if (value == null) return null;
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Storage>? _storage;
@override@JsonKey(name: "storage") List<Storage>? get storage {
  final value = _storage;
  if (value == null) return null;
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "module") final  Module? module;
 final  List<Schedule>? _schedules;
@override@JsonKey(name: "schedules") List<Schedule>? get schedules {
  final value = _schedules;
  if (value == null) return null;
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCopyWith<_Store> get copyWith => __$StoreCopyWithImpl<_Store>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.footerText, footerText)&&(identical(other.minimumOrder, minimumOrder) || other.minimumOrder == minimumOrder)&&const DeepCollectionEquality().equals(other.comission, comission)&&(identical(other.scheduleOrder, scheduleOrder) || other.scheduleOrder == scheduleOrder)&&(identical(other.status, status) || other.status == status)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.freeDelivery, freeDelivery) || other.freeDelivery == freeDelivery)&&(identical(other.coverPhoto, coverPhoto) || other.coverPhoto == coverPhoto)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.takeAway, takeAway) || other.takeAway == takeAway)&&(identical(other.itemSection, itemSection) || other.itemSection == itemSection)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.reviewsSection, reviewsSection) || other.reviewsSection == reviewsSection)&&(identical(other.active, active) || other.active == active)&&(identical(other.offDay, offDay) || other.offDay == offDay)&&(identical(other.selfDeliverySystem, selfDeliverySystem) || other.selfDeliverySystem == selfDeliverySystem)&&(identical(other.posSystem, posSystem) || other.posSystem == posSystem)&&(identical(other.minimumShippingCharge, minimumShippingCharge) || other.minimumShippingCharge == minimumShippingCharge)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.veg, veg) || other.veg == veg)&&(identical(other.nonVeg, nonVeg) || other.nonVeg == nonVeg)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalOrder, totalOrder) || other.totalOrder == totalOrder)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&const DeepCollectionEquality().equals(other.orderPlaceToScheduleInterval, orderPlaceToScheduleInterval)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.perKmShippingCharge, perKmShippingCharge) || other.perKmShippingCharge == perKmShippingCharge)&&(identical(other.prescriptionOrder, prescriptionOrder) || other.prescriptionOrder == prescriptionOrder)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.maximumShippingCharge, maximumShippingCharge)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&const DeepCollectionEquality().equals(other.metaTitle, metaTitle)&&const DeepCollectionEquality().equals(other.metaDescription, metaDescription)&&const DeepCollectionEquality().equals(other.metaImage, metaImage)&&(identical(other.announcement, announcement) || other.announcement == announcement)&&const DeepCollectionEquality().equals(other.announcementMessage, announcementMessage)&&(identical(other.storeBusinessModel, storeBusinessModel) || other.storeBusinessModel == storeBusinessModel)&&const DeepCollectionEquality().equals(other.packageId, packageId)&&const DeepCollectionEquality().equals(other.pickupZoneId, pickupZoneId)&&const DeepCollectionEquality().equals(other.comment, comment)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.minimumStockForWarning, minimumStockForWarning) || other.minimumStockForWarning == minimumStockForWarning)&&(identical(other.halalTagStatus, halalTagStatus) || other.halalTagStatus == halalTagStatus)&&const DeepCollectionEquality().equals(other.extraPackagingStatus, extraPackagingStatus)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&const DeepCollectionEquality().equals(other._ratings, _ratings)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.positiveRating, positiveRating) || other.positiveRating == positiveRating)&&const DeepCollectionEquality().equals(other.totalItems, totalItems)&&const DeepCollectionEquality().equals(other.totalCampaigns, totalCampaigns)&&(identical(other.currentOpeningTime, currentOpeningTime) || other.currentOpeningTime == currentOpeningTime)&&(identical(other.gstStatus, gstStatus) || other.gstStatus == gstStatus)&&(identical(other.gstCode, gstCode) || other.gstCode == gstCode)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&const DeepCollectionEquality().equals(other.metaImageFullUrl, metaImageFullUrl)&&const DeepCollectionEquality().equals(other._translations, _translations)&&const DeepCollectionEquality().equals(other._storage, _storage)&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other._schedules, _schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,phone,email,logo,latitude,longitude,address,const DeepCollectionEquality().hash(footerText),minimumOrder,const DeepCollectionEquality().hash(comission),scheduleOrder,status,vendorId,createdAt,updatedAt,freeDelivery,coverPhoto,delivery,takeAway,itemSection,tax,zoneId,reviewsSection,active,offDay,selfDeliverySystem,posSystem,minimumShippingCharge,deliveryTime,veg,nonVeg,orderCount,totalOrder,moduleId,const DeepCollectionEquality().hash(orderPlaceToScheduleInterval),featured,perKmShippingCharge,prescriptionOrder,slug,const DeepCollectionEquality().hash(maximumShippingCharge),cutlery,const DeepCollectionEquality().hash(metaTitle),const DeepCollectionEquality().hash(metaDescription),const DeepCollectionEquality().hash(metaImage),announcement,const DeepCollectionEquality().hash(announcementMessage),storeBusinessModel,const DeepCollectionEquality().hash(packageId),const DeepCollectionEquality().hash(pickupZoneId),const DeepCollectionEquality().hash(comment),isRecommended,minimumStockForWarning,halalTagStatus,const DeepCollectionEquality().hash(extraPackagingStatus),extraPackagingAmount,const DeepCollectionEquality().hash(_ratings),avgRating,ratingCount,positiveRating,const DeepCollectionEquality().hash(totalItems),const DeepCollectionEquality().hash(totalCampaigns),currentOpeningTime,gstStatus,gstCode,logoFullUrl,coverPhotoFullUrl,const DeepCollectionEquality().hash(metaImageFullUrl),const DeepCollectionEquality().hash(_translations),const DeepCollectionEquality().hash(_storage),module,const DeepCollectionEquality().hash(_schedules)]);

@override
String toString() {
  return 'Store(id: $id, name: $name, phone: $phone, email: $email, logo: $logo, latitude: $latitude, longitude: $longitude, address: $address, footerText: $footerText, minimumOrder: $minimumOrder, comission: $comission, scheduleOrder: $scheduleOrder, status: $status, vendorId: $vendorId, createdAt: $createdAt, updatedAt: $updatedAt, freeDelivery: $freeDelivery, coverPhoto: $coverPhoto, delivery: $delivery, takeAway: $takeAway, itemSection: $itemSection, tax: $tax, zoneId: $zoneId, reviewsSection: $reviewsSection, active: $active, offDay: $offDay, selfDeliverySystem: $selfDeliverySystem, posSystem: $posSystem, minimumShippingCharge: $minimumShippingCharge, deliveryTime: $deliveryTime, veg: $veg, nonVeg: $nonVeg, orderCount: $orderCount, totalOrder: $totalOrder, moduleId: $moduleId, orderPlaceToScheduleInterval: $orderPlaceToScheduleInterval, featured: $featured, perKmShippingCharge: $perKmShippingCharge, prescriptionOrder: $prescriptionOrder, slug: $slug, maximumShippingCharge: $maximumShippingCharge, cutlery: $cutlery, metaTitle: $metaTitle, metaDescription: $metaDescription, metaImage: $metaImage, announcement: $announcement, announcementMessage: $announcementMessage, storeBusinessModel: $storeBusinessModel, packageId: $packageId, pickupZoneId: $pickupZoneId, comment: $comment, isRecommended: $isRecommended, minimumStockForWarning: $minimumStockForWarning, halalTagStatus: $halalTagStatus, extraPackagingStatus: $extraPackagingStatus, extraPackagingAmount: $extraPackagingAmount, ratings: $ratings, avgRating: $avgRating, ratingCount: $ratingCount, positiveRating: $positiveRating, totalItems: $totalItems, totalCampaigns: $totalCampaigns, currentOpeningTime: $currentOpeningTime, gstStatus: $gstStatus, gstCode: $gstCode, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, metaImageFullUrl: $metaImageFullUrl, translations: $translations, storage: $storage, module: $module, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) = __$StoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "phone") String? phone,@JsonKey(name: "email") String? email,@JsonKey(name: "logo") String? logo,@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude,@JsonKey(name: "address") String? address,@JsonKey(name: "footer_text") dynamic footerText,@JsonKey(name: "minimum_order") int? minimumOrder,@JsonKey(name: "comission") dynamic comission,@JsonKey(name: "schedule_order") bool? scheduleOrder,@JsonKey(name: "status") int? status,@JsonKey(name: "vendor_id") int? vendorId,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "free_delivery") bool? freeDelivery,@JsonKey(name: "cover_photo") String? coverPhoto,@JsonKey(name: "delivery") bool? delivery,@JsonKey(name: "take_away") bool? takeAway,@JsonKey(name: "item_section") bool? itemSection,@JsonKey(name: "tax") int? tax,@JsonKey(name: "zone_id") int? zoneId,@JsonKey(name: "reviews_section") bool? reviewsSection,@JsonKey(name: "active") bool? active,@JsonKey(name: "off_day") String? offDay,@JsonKey(name: "self_delivery_system") int? selfDeliverySystem,@JsonKey(name: "pos_system") bool? posSystem,@JsonKey(name: "minimum_shipping_charge") int? minimumShippingCharge,@JsonKey(name: "delivery_time") String? deliveryTime,@JsonKey(name: "veg") int? veg,@JsonKey(name: "non_veg") int? nonVeg,@JsonKey(name: "order_count") int? orderCount,@JsonKey(name: "total_order") int? totalOrder,@JsonKey(name: "module_id") int? moduleId,@JsonKey(name: "order_place_to_schedule_interval") dynamic orderPlaceToScheduleInterval,@JsonKey(name: "featured") int? featured,@JsonKey(name: "per_km_shipping_charge") int? perKmShippingCharge,@JsonKey(name: "prescription_order") bool? prescriptionOrder,@JsonKey(name: "slug") String? slug,@JsonKey(name: "maximum_shipping_charge") dynamic maximumShippingCharge,@JsonKey(name: "cutlery") bool? cutlery,@JsonKey(name: "meta_title") dynamic metaTitle,@JsonKey(name: "meta_description") dynamic metaDescription,@JsonKey(name: "meta_image") dynamic metaImage,@JsonKey(name: "announcement") int? announcement,@JsonKey(name: "announcement_message") dynamic announcementMessage,@JsonKey(name: "store_business_model") String? storeBusinessModel,@JsonKey(name: "package_id") dynamic packageId,@JsonKey(name: "pickup_zone_id") dynamic pickupZoneId,@JsonKey(name: "comment") dynamic comment,@JsonKey(name: "is_recommended") bool? isRecommended,@JsonKey(name: "minimum_stock_for_warning") int? minimumStockForWarning,@JsonKey(name: "halal_tag_status") bool? halalTagStatus,@JsonKey(name: "extra_packaging_status") dynamic extraPackagingStatus,@JsonKey(name: "extra_packaging_amount") int? extraPackagingAmount,@JsonKey(name: "ratings") List<int>? ratings,@JsonKey(name: "avg_rating") int? avgRating,@JsonKey(name: "rating_count") int? ratingCount,@JsonKey(name: "positive_rating") int? positiveRating,@JsonKey(name: "total_items") dynamic totalItems,@JsonKey(name: "total_campaigns") dynamic totalCampaigns,@JsonKey(name: "current_opening_time") String? currentOpeningTime,@JsonKey(name: "gst_status") bool? gstStatus,@JsonKey(name: "gst_code") String? gstCode,@JsonKey(name: "logo_full_url") String? logoFullUrl,@JsonKey(name: "cover_photo_full_url") String? coverPhotoFullUrl,@JsonKey(name: "meta_image_full_url") dynamic metaImageFullUrl,@JsonKey(name: "translations") List<Translation>? translations,@JsonKey(name: "storage") List<Storage>? storage,@JsonKey(name: "module") Module? module,@JsonKey(name: "schedules") List<Schedule>? schedules
});


@override $ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class __$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? email = freezed,Object? logo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? address = freezed,Object? footerText = freezed,Object? minimumOrder = freezed,Object? comission = freezed,Object? scheduleOrder = freezed,Object? status = freezed,Object? vendorId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? freeDelivery = freezed,Object? coverPhoto = freezed,Object? delivery = freezed,Object? takeAway = freezed,Object? itemSection = freezed,Object? tax = freezed,Object? zoneId = freezed,Object? reviewsSection = freezed,Object? active = freezed,Object? offDay = freezed,Object? selfDeliverySystem = freezed,Object? posSystem = freezed,Object? minimumShippingCharge = freezed,Object? deliveryTime = freezed,Object? veg = freezed,Object? nonVeg = freezed,Object? orderCount = freezed,Object? totalOrder = freezed,Object? moduleId = freezed,Object? orderPlaceToScheduleInterval = freezed,Object? featured = freezed,Object? perKmShippingCharge = freezed,Object? prescriptionOrder = freezed,Object? slug = freezed,Object? maximumShippingCharge = freezed,Object? cutlery = freezed,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaImage = freezed,Object? announcement = freezed,Object? announcementMessage = freezed,Object? storeBusinessModel = freezed,Object? packageId = freezed,Object? pickupZoneId = freezed,Object? comment = freezed,Object? isRecommended = freezed,Object? minimumStockForWarning = freezed,Object? halalTagStatus = freezed,Object? extraPackagingStatus = freezed,Object? extraPackagingAmount = freezed,Object? ratings = freezed,Object? avgRating = freezed,Object? ratingCount = freezed,Object? positiveRating = freezed,Object? totalItems = freezed,Object? totalCampaigns = freezed,Object? currentOpeningTime = freezed,Object? gstStatus = freezed,Object? gstCode = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,Object? metaImageFullUrl = freezed,Object? translations = freezed,Object? storage = freezed,Object? module = freezed,Object? schedules = freezed,}) {
  return _then(_Store(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,footerText: freezed == footerText ? _self.footerText : footerText // ignore: cast_nullable_to_non_nullable
as dynamic,minimumOrder: freezed == minimumOrder ? _self.minimumOrder : minimumOrder // ignore: cast_nullable_to_non_nullable
as int?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as dynamic,scheduleOrder: freezed == scheduleOrder ? _self.scheduleOrder : scheduleOrder // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,freeDelivery: freezed == freeDelivery ? _self.freeDelivery : freeDelivery // ignore: cast_nullable_to_non_nullable
as bool?,coverPhoto: freezed == coverPhoto ? _self.coverPhoto : coverPhoto // ignore: cast_nullable_to_non_nullable
as String?,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as bool?,takeAway: freezed == takeAway ? _self.takeAway : takeAway // ignore: cast_nullable_to_non_nullable
as bool?,itemSection: freezed == itemSection ? _self.itemSection : itemSection // ignore: cast_nullable_to_non_nullable
as bool?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,reviewsSection: freezed == reviewsSection ? _self.reviewsSection : reviewsSection // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,offDay: freezed == offDay ? _self.offDay : offDay // ignore: cast_nullable_to_non_nullable
as String?,selfDeliverySystem: freezed == selfDeliverySystem ? _self.selfDeliverySystem : selfDeliverySystem // ignore: cast_nullable_to_non_nullable
as int?,posSystem: freezed == posSystem ? _self.posSystem : posSystem // ignore: cast_nullable_to_non_nullable
as bool?,minimumShippingCharge: freezed == minimumShippingCharge ? _self.minimumShippingCharge : minimumShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,veg: freezed == veg ? _self.veg : veg // ignore: cast_nullable_to_non_nullable
as int?,nonVeg: freezed == nonVeg ? _self.nonVeg : nonVeg // ignore: cast_nullable_to_non_nullable
as int?,orderCount: freezed == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int?,totalOrder: freezed == totalOrder ? _self.totalOrder : totalOrder // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,orderPlaceToScheduleInterval: freezed == orderPlaceToScheduleInterval ? _self.orderPlaceToScheduleInterval : orderPlaceToScheduleInterval // ignore: cast_nullable_to_non_nullable
as dynamic,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,perKmShippingCharge: freezed == perKmShippingCharge ? _self.perKmShippingCharge : perKmShippingCharge // ignore: cast_nullable_to_non_nullable
as int?,prescriptionOrder: freezed == prescriptionOrder ? _self.prescriptionOrder : prescriptionOrder // ignore: cast_nullable_to_non_nullable
as bool?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,maximumShippingCharge: freezed == maximumShippingCharge ? _self.maximumShippingCharge : maximumShippingCharge // ignore: cast_nullable_to_non_nullable
as dynamic,cutlery: freezed == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool?,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as dynamic,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as dynamic,metaImage: freezed == metaImage ? _self.metaImage : metaImage // ignore: cast_nullable_to_non_nullable
as dynamic,announcement: freezed == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as int?,announcementMessage: freezed == announcementMessage ? _self.announcementMessage : announcementMessage // ignore: cast_nullable_to_non_nullable
as dynamic,storeBusinessModel: freezed == storeBusinessModel ? _self.storeBusinessModel : storeBusinessModel // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as dynamic,pickupZoneId: freezed == pickupZoneId ? _self.pickupZoneId : pickupZoneId // ignore: cast_nullable_to_non_nullable
as dynamic,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,isRecommended: freezed == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool?,minimumStockForWarning: freezed == minimumStockForWarning ? _self.minimumStockForWarning : minimumStockForWarning // ignore: cast_nullable_to_non_nullable
as int?,halalTagStatus: freezed == halalTagStatus ? _self.halalTagStatus : halalTagStatus // ignore: cast_nullable_to_non_nullable
as bool?,extraPackagingStatus: freezed == extraPackagingStatus ? _self.extraPackagingStatus : extraPackagingStatus // ignore: cast_nullable_to_non_nullable
as dynamic,extraPackagingAmount: freezed == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as int?,ratings: freezed == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<int>?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as int?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int?,positiveRating: freezed == positiveRating ? _self.positiveRating : positiveRating // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as dynamic,totalCampaigns: freezed == totalCampaigns ? _self.totalCampaigns : totalCampaigns // ignore: cast_nullable_to_non_nullable
as dynamic,currentOpeningTime: freezed == currentOpeningTime ? _self.currentOpeningTime : currentOpeningTime // ignore: cast_nullable_to_non_nullable
as String?,gstStatus: freezed == gstStatus ? _self.gstStatus : gstStatus // ignore: cast_nullable_to_non_nullable
as bool?,gstCode: freezed == gstCode ? _self.gstCode : gstCode // ignore: cast_nullable_to_non_nullable
as String?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,metaImageFullUrl: freezed == metaImageFullUrl ? _self.metaImageFullUrl : metaImageFullUrl // ignore: cast_nullable_to_non_nullable
as dynamic,translations: freezed == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<Translation>?,storage: freezed == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<Storage>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,schedules: freezed == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>?,
  ));
}

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
mixin _$Schedule {

@JsonKey(name: "id") int? get id;@JsonKey(name: "store_id") int? get storeId;@JsonKey(name: "day") int? get day;@JsonKey(name: "opening_time") String? get openingTime;@JsonKey(name: "closing_time") String? get closingTime;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(this as Schedule, _$identity);

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.day, day) || other.day == day)&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,day,openingTime,closingTime,createdAt,updatedAt);

@override
String toString() {
  return 'Schedule(id: $id, storeId: $storeId, day: $day, openingTime: $openingTime, closingTime: $closingTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ScheduleCopyWith<$Res>  {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) _then) = _$ScheduleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "day") int? day,@JsonKey(name: "opening_time") String? openingTime,@JsonKey(name: "closing_time") String? closingTime,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class _$ScheduleCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._self, this._then);

  final Schedule _self;
  final $Res Function(Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? storeId = freezed,Object? day = freezed,Object? openingTime = freezed,Object? closingTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,openingTime: freezed == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as String?,closingTime: freezed == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Schedule implements Schedule {
  const _Schedule({@JsonKey(name: "id") this.id, @JsonKey(name: "store_id") this.storeId, @JsonKey(name: "day") this.day, @JsonKey(name: "opening_time") this.openingTime, @JsonKey(name: "closing_time") this.closingTime, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt});
  factory _Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "store_id") final  int? storeId;
@override@JsonKey(name: "day") final  int? day;
@override@JsonKey(name: "opening_time") final  String? openingTime;
@override@JsonKey(name: "closing_time") final  String? closingTime;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleCopyWith<_Schedule> get copyWith => __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.day, day) || other.day == day)&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,day,openingTime,closingTime,createdAt,updatedAt);

@override
String toString() {
  return 'Schedule(id: $id, storeId: $storeId, day: $day, openingTime: $openingTime, closingTime: $closingTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) _then) = __$ScheduleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "store_id") int? storeId,@JsonKey(name: "day") int? day,@JsonKey(name: "opening_time") String? openingTime,@JsonKey(name: "closing_time") String? closingTime,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt
});




}
/// @nodoc
class __$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(this._self, this._then);

  final _Schedule _self;
  final $Res Function(_Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? storeId = freezed,Object? day = freezed,Object? openingTime = freezed,Object? closingTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Schedule(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,openingTime: freezed == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as String?,closingTime: freezed == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
