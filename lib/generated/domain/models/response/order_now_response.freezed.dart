// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/order_now_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderNowResponse {

 String get message; List<OrderNowOrder> get orders;@JsonKey(name: 'total_amount') double get totalAmount;@JsonKey(name: 'order_count') int get orderCount; OrderBreakdown get breakdown;
/// Create a copy of OrderNowResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderNowResponseCopyWith<OrderNowResponse> get copyWith => _$OrderNowResponseCopyWithImpl<OrderNowResponse>(this as OrderNowResponse, _$identity);

  /// Serializes this OrderNowResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderNowResponse&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.breakdown, breakdown) || other.breakdown == breakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(orders),totalAmount,orderCount,breakdown);

@override
String toString() {
  return 'OrderNowResponse(message: $message, orders: $orders, totalAmount: $totalAmount, orderCount: $orderCount, breakdown: $breakdown)';
}


}

/// @nodoc
abstract mixin class $OrderNowResponseCopyWith<$Res>  {
  factory $OrderNowResponseCopyWith(OrderNowResponse value, $Res Function(OrderNowResponse) _then) = _$OrderNowResponseCopyWithImpl;
@useResult
$Res call({
 String message, List<OrderNowOrder> orders,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'order_count') int orderCount, OrderBreakdown breakdown
});


$OrderBreakdownCopyWith<$Res> get breakdown;

}
/// @nodoc
class _$OrderNowResponseCopyWithImpl<$Res>
    implements $OrderNowResponseCopyWith<$Res> {
  _$OrderNowResponseCopyWithImpl(this._self, this._then);

  final OrderNowResponse _self;
  final $Res Function(OrderNowResponse) _then;

/// Create a copy of OrderNowResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? orders = null,Object? totalAmount = null,Object? orderCount = null,Object? breakdown = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderNowOrder>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,breakdown: null == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as OrderBreakdown,
  ));
}
/// Create a copy of OrderNowResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderBreakdownCopyWith<$Res> get breakdown {
  
  return $OrderBreakdownCopyWith<$Res>(_self.breakdown, (value) {
    return _then(_self.copyWith(breakdown: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _OrderNowResponse implements OrderNowResponse {
  const _OrderNowResponse({required this.message, required final  List<OrderNowOrder> orders, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'order_count') required this.orderCount, required this.breakdown}): _orders = orders;
  factory _OrderNowResponse.fromJson(Map<String, dynamic> json) => _$OrderNowResponseFromJson(json);

@override final  String message;
 final  List<OrderNowOrder> _orders;
@override List<OrderNowOrder> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override@JsonKey(name: 'total_amount') final  double totalAmount;
@override@JsonKey(name: 'order_count') final  int orderCount;
@override final  OrderBreakdown breakdown;

/// Create a copy of OrderNowResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderNowResponseCopyWith<_OrderNowResponse> get copyWith => __$OrderNowResponseCopyWithImpl<_OrderNowResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderNowResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderNowResponse&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.breakdown, breakdown) || other.breakdown == breakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_orders),totalAmount,orderCount,breakdown);

@override
String toString() {
  return 'OrderNowResponse(message: $message, orders: $orders, totalAmount: $totalAmount, orderCount: $orderCount, breakdown: $breakdown)';
}


}

/// @nodoc
abstract mixin class _$OrderNowResponseCopyWith<$Res> implements $OrderNowResponseCopyWith<$Res> {
  factory _$OrderNowResponseCopyWith(_OrderNowResponse value, $Res Function(_OrderNowResponse) _then) = __$OrderNowResponseCopyWithImpl;
@override @useResult
$Res call({
 String message, List<OrderNowOrder> orders,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'order_count') int orderCount, OrderBreakdown breakdown
});


@override $OrderBreakdownCopyWith<$Res> get breakdown;

}
/// @nodoc
class __$OrderNowResponseCopyWithImpl<$Res>
    implements _$OrderNowResponseCopyWith<$Res> {
  __$OrderNowResponseCopyWithImpl(this._self, this._then);

  final _OrderNowResponse _self;
  final $Res Function(_OrderNowResponse) _then;

/// Create a copy of OrderNowResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? orders = null,Object? totalAmount = null,Object? orderCount = null,Object? breakdown = null,}) {
  return _then(_OrderNowResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderNowOrder>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,breakdown: null == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as OrderBreakdown,
  ));
}

/// Create a copy of OrderNowResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderBreakdownCopyWith<$Res> get breakdown {
  
  return $OrderBreakdownCopyWith<$Res>(_self.breakdown, (value) {
    return _then(_self.copyWith(breakdown: value));
  });
}
}


/// @nodoc
mixin _$OrderNowOrder {

 int get id;@JsonKey(name: 'user_id') int get userId;@JsonKey(name: 'order_amount') double get orderAmount;@JsonKey(name: 'payment_status') String get paymentStatus;@JsonKey(name: 'order_status') String get orderStatus;@JsonKey(name: 'coupon_code') String? get couponCode;@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'order_note') String? get orderNote;@JsonKey(name: 'delivery_instruction') String? get deliveryInstruction;@JsonKey(name: 'order_type') String get orderType;@JsonKey(name: 'store_id') int get storeId;@JsonKey(name: 'delivery_charge') double get deliveryCharge;@JsonKey(name: 'original_delivery_charge') double get originalDeliveryCharge;@JsonKey(name: 'delivery_address_id') int get deliveryAddressId;@JsonKey(name: 'delivery_address') String get deliveryAddress;@JsonKey(name: 'schedule_at') String get scheduleAt; int get scheduled; bool get cutlery;@JsonKey(name: 'is_guest') bool get isGuest; int get otp;@JsonKey(name: 'zone_id') int get zoneId;@JsonKey(name: 'module_id') int get moduleId; double get distance;@JsonKey(name: 'dm_tips') double get dmTips; String get pending;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'store_discount_amount') double get storeDiscountAmount;@JsonKey(name: 'total_tax_amount') double get totalTaxAmount;@JsonKey(name: 'tax_percentage') int get taxPercentage;@JsonKey(name: 'coupon_discount_amount') double get couponDiscountAmount;@JsonKey(name: 'additional_charge') double get additionalCharge;@JsonKey(name: 'flash_admin_discount_amount') double get flashAdminDiscountAmount;@JsonKey(name: 'flash_store_discount_amount') double get flashStoreDiscountAmount;@JsonKey(name: 'extra_packaging_amount') double get extraPackagingAmount;@JsonKey(name: 'ref_bonus_amount') double get refBonusAmount;@JsonKey(name: 'module_type') String get moduleType;
/// Create a copy of OrderNowOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderNowOrderCopyWith<OrderNowOrder> get copyWith => _$OrderNowOrderCopyWithImpl<OrderNowOrder>(this as OrderNowOrder, _$identity);

  /// Serializes this OrderNowOrder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderNowOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.couponCode, couponCode) || other.couponCode == couponCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.orderNote, orderNote) || other.orderNote == orderNote)&&(identical(other.deliveryInstruction, deliveryInstruction) || other.deliveryInstruction == deliveryInstruction)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.originalDeliveryCharge, originalDeliveryCharge) || other.originalDeliveryCharge == originalDeliveryCharge)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.dmTips, dmTips) || other.dmTips == dmTips)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.storeDiscountAmount, storeDiscountAmount) || other.storeDiscountAmount == storeDiscountAmount)&&(identical(other.totalTaxAmount, totalTaxAmount) || other.totalTaxAmount == totalTaxAmount)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.couponDiscountAmount, couponDiscountAmount) || other.couponDiscountAmount == couponDiscountAmount)&&(identical(other.additionalCharge, additionalCharge) || other.additionalCharge == additionalCharge)&&(identical(other.flashAdminDiscountAmount, flashAdminDiscountAmount) || other.flashAdminDiscountAmount == flashAdminDiscountAmount)&&(identical(other.flashStoreDiscountAmount, flashStoreDiscountAmount) || other.flashStoreDiscountAmount == flashStoreDiscountAmount)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&(identical(other.refBonusAmount, refBonusAmount) || other.refBonusAmount == refBonusAmount)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,orderAmount,paymentStatus,orderStatus,couponCode,paymentMethod,orderNote,deliveryInstruction,orderType,storeId,deliveryCharge,originalDeliveryCharge,deliveryAddressId,deliveryAddress,scheduleAt,scheduled,cutlery,isGuest,otp,zoneId,moduleId,distance,dmTips,pending,createdAt,updatedAt,storeDiscountAmount,totalTaxAmount,taxPercentage,couponDiscountAmount,additionalCharge,flashAdminDiscountAmount,flashStoreDiscountAmount,extraPackagingAmount,refBonusAmount,moduleType]);

@override
String toString() {
  return 'OrderNowOrder(id: $id, userId: $userId, orderAmount: $orderAmount, paymentStatus: $paymentStatus, orderStatus: $orderStatus, couponCode: $couponCode, paymentMethod: $paymentMethod, orderNote: $orderNote, deliveryInstruction: $deliveryInstruction, orderType: $orderType, storeId: $storeId, deliveryCharge: $deliveryCharge, originalDeliveryCharge: $originalDeliveryCharge, deliveryAddressId: $deliveryAddressId, deliveryAddress: $deliveryAddress, scheduleAt: $scheduleAt, scheduled: $scheduled, cutlery: $cutlery, isGuest: $isGuest, otp: $otp, zoneId: $zoneId, moduleId: $moduleId, distance: $distance, dmTips: $dmTips, pending: $pending, createdAt: $createdAt, updatedAt: $updatedAt, storeDiscountAmount: $storeDiscountAmount, totalTaxAmount: $totalTaxAmount, taxPercentage: $taxPercentage, couponDiscountAmount: $couponDiscountAmount, additionalCharge: $additionalCharge, flashAdminDiscountAmount: $flashAdminDiscountAmount, flashStoreDiscountAmount: $flashStoreDiscountAmount, extraPackagingAmount: $extraPackagingAmount, refBonusAmount: $refBonusAmount, moduleType: $moduleType)';
}


}

/// @nodoc
abstract mixin class $OrderNowOrderCopyWith<$Res>  {
  factory $OrderNowOrderCopyWith(OrderNowOrder value, $Res Function(OrderNowOrder) _then) = _$OrderNowOrderCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'order_amount') double orderAmount,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'coupon_code') String? couponCode,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'order_note') String? orderNote,@JsonKey(name: 'delivery_instruction') String? deliveryInstruction,@JsonKey(name: 'order_type') String orderType,@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'delivery_charge') double deliveryCharge,@JsonKey(name: 'original_delivery_charge') double originalDeliveryCharge,@JsonKey(name: 'delivery_address_id') int deliveryAddressId,@JsonKey(name: 'delivery_address') String deliveryAddress,@JsonKey(name: 'schedule_at') String scheduleAt, int scheduled, bool cutlery,@JsonKey(name: 'is_guest') bool isGuest, int otp,@JsonKey(name: 'zone_id') int zoneId,@JsonKey(name: 'module_id') int moduleId, double distance,@JsonKey(name: 'dm_tips') double dmTips, String pending,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'store_discount_amount') double storeDiscountAmount,@JsonKey(name: 'total_tax_amount') double totalTaxAmount,@JsonKey(name: 'tax_percentage') int taxPercentage,@JsonKey(name: 'coupon_discount_amount') double couponDiscountAmount,@JsonKey(name: 'additional_charge') double additionalCharge,@JsonKey(name: 'flash_admin_discount_amount') double flashAdminDiscountAmount,@JsonKey(name: 'flash_store_discount_amount') double flashStoreDiscountAmount,@JsonKey(name: 'extra_packaging_amount') double extraPackagingAmount,@JsonKey(name: 'ref_bonus_amount') double refBonusAmount,@JsonKey(name: 'module_type') String moduleType
});




}
/// @nodoc
class _$OrderNowOrderCopyWithImpl<$Res>
    implements $OrderNowOrderCopyWith<$Res> {
  _$OrderNowOrderCopyWithImpl(this._self, this._then);

  final OrderNowOrder _self;
  final $Res Function(OrderNowOrder) _then;

/// Create a copy of OrderNowOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? orderAmount = null,Object? paymentStatus = null,Object? orderStatus = null,Object? couponCode = freezed,Object? paymentMethod = null,Object? orderNote = freezed,Object? deliveryInstruction = freezed,Object? orderType = null,Object? storeId = null,Object? deliveryCharge = null,Object? originalDeliveryCharge = null,Object? deliveryAddressId = null,Object? deliveryAddress = null,Object? scheduleAt = null,Object? scheduled = null,Object? cutlery = null,Object? isGuest = null,Object? otp = null,Object? zoneId = null,Object? moduleId = null,Object? distance = null,Object? dmTips = null,Object? pending = null,Object? createdAt = null,Object? updatedAt = null,Object? storeDiscountAmount = null,Object? totalTaxAmount = null,Object? taxPercentage = null,Object? couponDiscountAmount = null,Object? additionalCharge = null,Object? flashAdminDiscountAmount = null,Object? flashStoreDiscountAmount = null,Object? extraPackagingAmount = null,Object? refBonusAmount = null,Object? moduleType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,orderAmount: null == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as double,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,orderNote: freezed == orderNote ? _self.orderNote : orderNote // ignore: cast_nullable_to_non_nullable
as String?,deliveryInstruction: freezed == deliveryInstruction ? _self.deliveryInstruction : deliveryInstruction // ignore: cast_nullable_to_non_nullable
as String?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,deliveryCharge: null == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as double,originalDeliveryCharge: null == originalDeliveryCharge ? _self.originalDeliveryCharge : originalDeliveryCharge // ignore: cast_nullable_to_non_nullable
as double,deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as String,scheduleAt: null == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as String,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int,cutlery: null == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as int,zoneId: null == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,dmTips: null == dmTips ? _self.dmTips : dmTips // ignore: cast_nullable_to_non_nullable
as double,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,storeDiscountAmount: null == storeDiscountAmount ? _self.storeDiscountAmount : storeDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,totalTaxAmount: null == totalTaxAmount ? _self.totalTaxAmount : totalTaxAmount // ignore: cast_nullable_to_non_nullable
as double,taxPercentage: null == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int,couponDiscountAmount: null == couponDiscountAmount ? _self.couponDiscountAmount : couponDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,additionalCharge: null == additionalCharge ? _self.additionalCharge : additionalCharge // ignore: cast_nullable_to_non_nullable
as double,flashAdminDiscountAmount: null == flashAdminDiscountAmount ? _self.flashAdminDiscountAmount : flashAdminDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,flashStoreDiscountAmount: null == flashStoreDiscountAmount ? _self.flashStoreDiscountAmount : flashStoreDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,extraPackagingAmount: null == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as double,refBonusAmount: null == refBonusAmount ? _self.refBonusAmount : refBonusAmount // ignore: cast_nullable_to_non_nullable
as double,moduleType: null == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OrderNowOrder implements OrderNowOrder {
  const _OrderNowOrder({required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'order_amount') required this.orderAmount, @JsonKey(name: 'payment_status') required this.paymentStatus, @JsonKey(name: 'order_status') required this.orderStatus, @JsonKey(name: 'coupon_code') this.couponCode, @JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'order_note') this.orderNote, @JsonKey(name: 'delivery_instruction') this.deliveryInstruction, @JsonKey(name: 'order_type') required this.orderType, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'delivery_charge') required this.deliveryCharge, @JsonKey(name: 'original_delivery_charge') required this.originalDeliveryCharge, @JsonKey(name: 'delivery_address_id') required this.deliveryAddressId, @JsonKey(name: 'delivery_address') required this.deliveryAddress, @JsonKey(name: 'schedule_at') required this.scheduleAt, required this.scheduled, required this.cutlery, @JsonKey(name: 'is_guest') required this.isGuest, required this.otp, @JsonKey(name: 'zone_id') required this.zoneId, @JsonKey(name: 'module_id') required this.moduleId, required this.distance, @JsonKey(name: 'dm_tips') required this.dmTips, required this.pending, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'store_discount_amount') required this.storeDiscountAmount, @JsonKey(name: 'total_tax_amount') required this.totalTaxAmount, @JsonKey(name: 'tax_percentage') required this.taxPercentage, @JsonKey(name: 'coupon_discount_amount') required this.couponDiscountAmount, @JsonKey(name: 'additional_charge') required this.additionalCharge, @JsonKey(name: 'flash_admin_discount_amount') required this.flashAdminDiscountAmount, @JsonKey(name: 'flash_store_discount_amount') required this.flashStoreDiscountAmount, @JsonKey(name: 'extra_packaging_amount') required this.extraPackagingAmount, @JsonKey(name: 'ref_bonus_amount') required this.refBonusAmount, @JsonKey(name: 'module_type') required this.moduleType});
  factory _OrderNowOrder.fromJson(Map<String, dynamic> json) => _$OrderNowOrderFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override@JsonKey(name: 'order_amount') final  double orderAmount;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override@JsonKey(name: 'order_status') final  String orderStatus;
@override@JsonKey(name: 'coupon_code') final  String? couponCode;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'order_note') final  String? orderNote;
@override@JsonKey(name: 'delivery_instruction') final  String? deliveryInstruction;
@override@JsonKey(name: 'order_type') final  String orderType;
@override@JsonKey(name: 'store_id') final  int storeId;
@override@JsonKey(name: 'delivery_charge') final  double deliveryCharge;
@override@JsonKey(name: 'original_delivery_charge') final  double originalDeliveryCharge;
@override@JsonKey(name: 'delivery_address_id') final  int deliveryAddressId;
@override@JsonKey(name: 'delivery_address') final  String deliveryAddress;
@override@JsonKey(name: 'schedule_at') final  String scheduleAt;
@override final  int scheduled;
@override final  bool cutlery;
@override@JsonKey(name: 'is_guest') final  bool isGuest;
@override final  int otp;
@override@JsonKey(name: 'zone_id') final  int zoneId;
@override@JsonKey(name: 'module_id') final  int moduleId;
@override final  double distance;
@override@JsonKey(name: 'dm_tips') final  double dmTips;
@override final  String pending;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'store_discount_amount') final  double storeDiscountAmount;
@override@JsonKey(name: 'total_tax_amount') final  double totalTaxAmount;
@override@JsonKey(name: 'tax_percentage') final  int taxPercentage;
@override@JsonKey(name: 'coupon_discount_amount') final  double couponDiscountAmount;
@override@JsonKey(name: 'additional_charge') final  double additionalCharge;
@override@JsonKey(name: 'flash_admin_discount_amount') final  double flashAdminDiscountAmount;
@override@JsonKey(name: 'flash_store_discount_amount') final  double flashStoreDiscountAmount;
@override@JsonKey(name: 'extra_packaging_amount') final  double extraPackagingAmount;
@override@JsonKey(name: 'ref_bonus_amount') final  double refBonusAmount;
@override@JsonKey(name: 'module_type') final  String moduleType;

/// Create a copy of OrderNowOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderNowOrderCopyWith<_OrderNowOrder> get copyWith => __$OrderNowOrderCopyWithImpl<_OrderNowOrder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderNowOrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderNowOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.couponCode, couponCode) || other.couponCode == couponCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.orderNote, orderNote) || other.orderNote == orderNote)&&(identical(other.deliveryInstruction, deliveryInstruction) || other.deliveryInstruction == deliveryInstruction)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.originalDeliveryCharge, originalDeliveryCharge) || other.originalDeliveryCharge == originalDeliveryCharge)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.cutlery, cutlery) || other.cutlery == cutlery)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.dmTips, dmTips) || other.dmTips == dmTips)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.storeDiscountAmount, storeDiscountAmount) || other.storeDiscountAmount == storeDiscountAmount)&&(identical(other.totalTaxAmount, totalTaxAmount) || other.totalTaxAmount == totalTaxAmount)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.couponDiscountAmount, couponDiscountAmount) || other.couponDiscountAmount == couponDiscountAmount)&&(identical(other.additionalCharge, additionalCharge) || other.additionalCharge == additionalCharge)&&(identical(other.flashAdminDiscountAmount, flashAdminDiscountAmount) || other.flashAdminDiscountAmount == flashAdminDiscountAmount)&&(identical(other.flashStoreDiscountAmount, flashStoreDiscountAmount) || other.flashStoreDiscountAmount == flashStoreDiscountAmount)&&(identical(other.extraPackagingAmount, extraPackagingAmount) || other.extraPackagingAmount == extraPackagingAmount)&&(identical(other.refBonusAmount, refBonusAmount) || other.refBonusAmount == refBonusAmount)&&(identical(other.moduleType, moduleType) || other.moduleType == moduleType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,orderAmount,paymentStatus,orderStatus,couponCode,paymentMethod,orderNote,deliveryInstruction,orderType,storeId,deliveryCharge,originalDeliveryCharge,deliveryAddressId,deliveryAddress,scheduleAt,scheduled,cutlery,isGuest,otp,zoneId,moduleId,distance,dmTips,pending,createdAt,updatedAt,storeDiscountAmount,totalTaxAmount,taxPercentage,couponDiscountAmount,additionalCharge,flashAdminDiscountAmount,flashStoreDiscountAmount,extraPackagingAmount,refBonusAmount,moduleType]);

@override
String toString() {
  return 'OrderNowOrder(id: $id, userId: $userId, orderAmount: $orderAmount, paymentStatus: $paymentStatus, orderStatus: $orderStatus, couponCode: $couponCode, paymentMethod: $paymentMethod, orderNote: $orderNote, deliveryInstruction: $deliveryInstruction, orderType: $orderType, storeId: $storeId, deliveryCharge: $deliveryCharge, originalDeliveryCharge: $originalDeliveryCharge, deliveryAddressId: $deliveryAddressId, deliveryAddress: $deliveryAddress, scheduleAt: $scheduleAt, scheduled: $scheduled, cutlery: $cutlery, isGuest: $isGuest, otp: $otp, zoneId: $zoneId, moduleId: $moduleId, distance: $distance, dmTips: $dmTips, pending: $pending, createdAt: $createdAt, updatedAt: $updatedAt, storeDiscountAmount: $storeDiscountAmount, totalTaxAmount: $totalTaxAmount, taxPercentage: $taxPercentage, couponDiscountAmount: $couponDiscountAmount, additionalCharge: $additionalCharge, flashAdminDiscountAmount: $flashAdminDiscountAmount, flashStoreDiscountAmount: $flashStoreDiscountAmount, extraPackagingAmount: $extraPackagingAmount, refBonusAmount: $refBonusAmount, moduleType: $moduleType)';
}


}

/// @nodoc
abstract mixin class _$OrderNowOrderCopyWith<$Res> implements $OrderNowOrderCopyWith<$Res> {
  factory _$OrderNowOrderCopyWith(_OrderNowOrder value, $Res Function(_OrderNowOrder) _then) = __$OrderNowOrderCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'order_amount') double orderAmount,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'coupon_code') String? couponCode,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'order_note') String? orderNote,@JsonKey(name: 'delivery_instruction') String? deliveryInstruction,@JsonKey(name: 'order_type') String orderType,@JsonKey(name: 'store_id') int storeId,@JsonKey(name: 'delivery_charge') double deliveryCharge,@JsonKey(name: 'original_delivery_charge') double originalDeliveryCharge,@JsonKey(name: 'delivery_address_id') int deliveryAddressId,@JsonKey(name: 'delivery_address') String deliveryAddress,@JsonKey(name: 'schedule_at') String scheduleAt, int scheduled, bool cutlery,@JsonKey(name: 'is_guest') bool isGuest, int otp,@JsonKey(name: 'zone_id') int zoneId,@JsonKey(name: 'module_id') int moduleId, double distance,@JsonKey(name: 'dm_tips') double dmTips, String pending,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'store_discount_amount') double storeDiscountAmount,@JsonKey(name: 'total_tax_amount') double totalTaxAmount,@JsonKey(name: 'tax_percentage') int taxPercentage,@JsonKey(name: 'coupon_discount_amount') double couponDiscountAmount,@JsonKey(name: 'additional_charge') double additionalCharge,@JsonKey(name: 'flash_admin_discount_amount') double flashAdminDiscountAmount,@JsonKey(name: 'flash_store_discount_amount') double flashStoreDiscountAmount,@JsonKey(name: 'extra_packaging_amount') double extraPackagingAmount,@JsonKey(name: 'ref_bonus_amount') double refBonusAmount,@JsonKey(name: 'module_type') String moduleType
});




}
/// @nodoc
class __$OrderNowOrderCopyWithImpl<$Res>
    implements _$OrderNowOrderCopyWith<$Res> {
  __$OrderNowOrderCopyWithImpl(this._self, this._then);

  final _OrderNowOrder _self;
  final $Res Function(_OrderNowOrder) _then;

/// Create a copy of OrderNowOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? orderAmount = null,Object? paymentStatus = null,Object? orderStatus = null,Object? couponCode = freezed,Object? paymentMethod = null,Object? orderNote = freezed,Object? deliveryInstruction = freezed,Object? orderType = null,Object? storeId = null,Object? deliveryCharge = null,Object? originalDeliveryCharge = null,Object? deliveryAddressId = null,Object? deliveryAddress = null,Object? scheduleAt = null,Object? scheduled = null,Object? cutlery = null,Object? isGuest = null,Object? otp = null,Object? zoneId = null,Object? moduleId = null,Object? distance = null,Object? dmTips = null,Object? pending = null,Object? createdAt = null,Object? updatedAt = null,Object? storeDiscountAmount = null,Object? totalTaxAmount = null,Object? taxPercentage = null,Object? couponDiscountAmount = null,Object? additionalCharge = null,Object? flashAdminDiscountAmount = null,Object? flashStoreDiscountAmount = null,Object? extraPackagingAmount = null,Object? refBonusAmount = null,Object? moduleType = null,}) {
  return _then(_OrderNowOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,orderAmount: null == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as double,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,orderNote: freezed == orderNote ? _self.orderNote : orderNote // ignore: cast_nullable_to_non_nullable
as String?,deliveryInstruction: freezed == deliveryInstruction ? _self.deliveryInstruction : deliveryInstruction // ignore: cast_nullable_to_non_nullable
as String?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,deliveryCharge: null == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as double,originalDeliveryCharge: null == originalDeliveryCharge ? _self.originalDeliveryCharge : originalDeliveryCharge // ignore: cast_nullable_to_non_nullable
as double,deliveryAddressId: null == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as String,scheduleAt: null == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as String,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int,cutlery: null == cutlery ? _self.cutlery : cutlery // ignore: cast_nullable_to_non_nullable
as bool,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as int,zoneId: null == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,dmTips: null == dmTips ? _self.dmTips : dmTips // ignore: cast_nullable_to_non_nullable
as double,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,storeDiscountAmount: null == storeDiscountAmount ? _self.storeDiscountAmount : storeDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,totalTaxAmount: null == totalTaxAmount ? _self.totalTaxAmount : totalTaxAmount // ignore: cast_nullable_to_non_nullable
as double,taxPercentage: null == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int,couponDiscountAmount: null == couponDiscountAmount ? _self.couponDiscountAmount : couponDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,additionalCharge: null == additionalCharge ? _self.additionalCharge : additionalCharge // ignore: cast_nullable_to_non_nullable
as double,flashAdminDiscountAmount: null == flashAdminDiscountAmount ? _self.flashAdminDiscountAmount : flashAdminDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,flashStoreDiscountAmount: null == flashStoreDiscountAmount ? _self.flashStoreDiscountAmount : flashStoreDiscountAmount // ignore: cast_nullable_to_non_nullable
as double,extraPackagingAmount: null == extraPackagingAmount ? _self.extraPackagingAmount : extraPackagingAmount // ignore: cast_nullable_to_non_nullable
as double,refBonusAmount: null == refBonusAmount ? _self.refBonusAmount : refBonusAmount // ignore: cast_nullable_to_non_nullable
as double,moduleType: null == moduleType ? _self.moduleType : moduleType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderBreakdown {

 double get subtotal;@JsonKey(name: 'delivery_fee') double get deliveryFee; double get tax; double get discount;@JsonKey(name: 'dm_tips') double get dmTips; double get total;
/// Create a copy of OrderBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderBreakdownCopyWith<OrderBreakdown> get copyWith => _$OrderBreakdownCopyWithImpl<OrderBreakdown>(this as OrderBreakdown, _$identity);

  /// Serializes this OrderBreakdown to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderBreakdown&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.dmTips, dmTips) || other.dmTips == dmTips)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subtotal,deliveryFee,tax,discount,dmTips,total);

@override
String toString() {
  return 'OrderBreakdown(subtotal: $subtotal, deliveryFee: $deliveryFee, tax: $tax, discount: $discount, dmTips: $dmTips, total: $total)';
}


}

/// @nodoc
abstract mixin class $OrderBreakdownCopyWith<$Res>  {
  factory $OrderBreakdownCopyWith(OrderBreakdown value, $Res Function(OrderBreakdown) _then) = _$OrderBreakdownCopyWithImpl;
@useResult
$Res call({
 double subtotal,@JsonKey(name: 'delivery_fee') double deliveryFee, double tax, double discount,@JsonKey(name: 'dm_tips') double dmTips, double total
});




}
/// @nodoc
class _$OrderBreakdownCopyWithImpl<$Res>
    implements $OrderBreakdownCopyWith<$Res> {
  _$OrderBreakdownCopyWithImpl(this._self, this._then);

  final OrderBreakdown _self;
  final $Res Function(OrderBreakdown) _then;

/// Create a copy of OrderBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subtotal = null,Object? deliveryFee = null,Object? tax = null,Object? discount = null,Object? dmTips = null,Object? total = null,}) {
  return _then(_self.copyWith(
subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,tax: null == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,dmTips: null == dmTips ? _self.dmTips : dmTips // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OrderBreakdown implements OrderBreakdown {
  const _OrderBreakdown({required this.subtotal, @JsonKey(name: 'delivery_fee') required this.deliveryFee, required this.tax, required this.discount, @JsonKey(name: 'dm_tips') required this.dmTips, required this.total});
  factory _OrderBreakdown.fromJson(Map<String, dynamic> json) => _$OrderBreakdownFromJson(json);

@override final  double subtotal;
@override@JsonKey(name: 'delivery_fee') final  double deliveryFee;
@override final  double tax;
@override final  double discount;
@override@JsonKey(name: 'dm_tips') final  double dmTips;
@override final  double total;

/// Create a copy of OrderBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderBreakdownCopyWith<_OrderBreakdown> get copyWith => __$OrderBreakdownCopyWithImpl<_OrderBreakdown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderBreakdownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderBreakdown&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.dmTips, dmTips) || other.dmTips == dmTips)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subtotal,deliveryFee,tax,discount,dmTips,total);

@override
String toString() {
  return 'OrderBreakdown(subtotal: $subtotal, deliveryFee: $deliveryFee, tax: $tax, discount: $discount, dmTips: $dmTips, total: $total)';
}


}

/// @nodoc
abstract mixin class _$OrderBreakdownCopyWith<$Res> implements $OrderBreakdownCopyWith<$Res> {
  factory _$OrderBreakdownCopyWith(_OrderBreakdown value, $Res Function(_OrderBreakdown) _then) = __$OrderBreakdownCopyWithImpl;
@override @useResult
$Res call({
 double subtotal,@JsonKey(name: 'delivery_fee') double deliveryFee, double tax, double discount,@JsonKey(name: 'dm_tips') double dmTips, double total
});




}
/// @nodoc
class __$OrderBreakdownCopyWithImpl<$Res>
    implements _$OrderBreakdownCopyWith<$Res> {
  __$OrderBreakdownCopyWithImpl(this._self, this._then);

  final _OrderBreakdown _self;
  final $Res Function(_OrderBreakdown) _then;

/// Create a copy of OrderBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subtotal = null,Object? deliveryFee = null,Object? tax = null,Object? discount = null,Object? dmTips = null,Object? total = null,}) {
  return _then(_OrderBreakdown(
subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,tax: null == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,dmTips: null == dmTips ? _self.dmTips : dmTips // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
