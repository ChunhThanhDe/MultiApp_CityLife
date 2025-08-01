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

@JsonKey(name: 'total_size') int? get totalSize;@JsonKey(name: 'limit') String? get limit;@JsonKey(name: 'offset') String? get offset;@JsonKey(name: 'orders') List<Order>? get orders;
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
@JsonKey(name: 'total_size') int? totalSize,@JsonKey(name: 'limit') String? limit,@JsonKey(name: 'offset') String? offset,@JsonKey(name: 'orders') List<Order>? orders
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
  const _GetOrdersHistoryResponse({@JsonKey(name: 'total_size') this.totalSize, @JsonKey(name: 'limit') this.limit, @JsonKey(name: 'offset') this.offset, @JsonKey(name: 'orders') final  List<Order>? orders}): _orders = orders;
  factory _GetOrdersHistoryResponse.fromJson(Map<String, dynamic> json) => _$GetOrdersHistoryResponseFromJson(json);

@override@JsonKey(name: 'total_size') final  int? totalSize;
@override@JsonKey(name: 'limit') final  String? limit;
@override@JsonKey(name: 'offset') final  String? offset;
 final  List<Order>? _orders;
@override@JsonKey(name: 'orders') List<Order>? get orders {
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
@JsonKey(name: 'total_size') int? totalSize,@JsonKey(name: 'limit') String? limit,@JsonKey(name: 'offset') String? offset,@JsonKey(name: 'orders') List<Order>? orders
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

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'order_amount') double? get orderAmount;@OrderStatusConverter()@JsonKey(name: 'order_status') OrderStatus? get orderStatus;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'delivery_address') DeliveryAddress? get deliveryAddress;@JsonKey(name: 'details_count') int? get detailsCount;@JsonKey(name: 'store') Store? get store;@JsonKey(name: 'delivery_instruction') String? get deliveryInstruction;@JsonKey(name: 'order_note') String? get orderNote;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.detailsCount, detailsCount) || other.detailsCount == detailsCount)&&(identical(other.store, store) || other.store == store)&&(identical(other.deliveryInstruction, deliveryInstruction) || other.deliveryInstruction == deliveryInstruction)&&(identical(other.orderNote, orderNote) || other.orderNote == orderNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderAmount,orderStatus,createdAt,deliveryAddress,detailsCount,store,deliveryInstruction,orderNote);

@override
String toString() {
  return 'Order(id: $id, orderAmount: $orderAmount, orderStatus: $orderStatus, createdAt: $createdAt, deliveryAddress: $deliveryAddress, detailsCount: $detailsCount, store: $store, deliveryInstruction: $deliveryInstruction, orderNote: $orderNote)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'order_amount') double? orderAmount,@OrderStatusConverter()@JsonKey(name: 'order_status') OrderStatus? orderStatus,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'delivery_address') DeliveryAddress? deliveryAddress,@JsonKey(name: 'details_count') int? detailsCount,@JsonKey(name: 'store') Store? store,@JsonKey(name: 'delivery_instruction') String? deliveryInstruction,@JsonKey(name: 'order_note') String? orderNote
});


$DeliveryAddressCopyWith<$Res>? get deliveryAddress;$StoreCopyWith<$Res>? get store;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? orderAmount = freezed,Object? orderStatus = freezed,Object? createdAt = freezed,Object? deliveryAddress = freezed,Object? detailsCount = freezed,Object? store = freezed,Object? deliveryInstruction = freezed,Object? orderNote = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,orderAmount: freezed == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as double?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,detailsCount: freezed == detailsCount ? _self.detailsCount : detailsCount // ignore: cast_nullable_to_non_nullable
as int?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,deliveryInstruction: freezed == deliveryInstruction ? _self.deliveryInstruction : deliveryInstruction // ignore: cast_nullable_to_non_nullable
as String?,orderNote: freezed == orderNote ? _self.orderNote : orderNote // ignore: cast_nullable_to_non_nullable
as String?,
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
}
}


/// @nodoc
@JsonSerializable()

class _Order implements Order {
  const _Order({@JsonKey(name: 'id') this.id, @JsonKey(name: 'order_amount') this.orderAmount, @OrderStatusConverter()@JsonKey(name: 'order_status') this.orderStatus, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'delivery_address') this.deliveryAddress, @JsonKey(name: 'details_count') this.detailsCount, @JsonKey(name: 'store') this.store, @JsonKey(name: 'delivery_instruction') this.deliveryInstruction, @JsonKey(name: 'order_note') this.orderNote});
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'order_amount') final  double? orderAmount;
@override@OrderStatusConverter()@JsonKey(name: 'order_status') final  OrderStatus? orderStatus;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'delivery_address') final  DeliveryAddress? deliveryAddress;
@override@JsonKey(name: 'details_count') final  int? detailsCount;
@override@JsonKey(name: 'store') final  Store? store;
@override@JsonKey(name: 'delivery_instruction') final  String? deliveryInstruction;
@override@JsonKey(name: 'order_note') final  String? orderNote;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.detailsCount, detailsCount) || other.detailsCount == detailsCount)&&(identical(other.store, store) || other.store == store)&&(identical(other.deliveryInstruction, deliveryInstruction) || other.deliveryInstruction == deliveryInstruction)&&(identical(other.orderNote, orderNote) || other.orderNote == orderNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderAmount,orderStatus,createdAt,deliveryAddress,detailsCount,store,deliveryInstruction,orderNote);

@override
String toString() {
  return 'Order(id: $id, orderAmount: $orderAmount, orderStatus: $orderStatus, createdAt: $createdAt, deliveryAddress: $deliveryAddress, detailsCount: $detailsCount, store: $store, deliveryInstruction: $deliveryInstruction, orderNote: $orderNote)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'order_amount') double? orderAmount,@OrderStatusConverter()@JsonKey(name: 'order_status') OrderStatus? orderStatus,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'delivery_address') DeliveryAddress? deliveryAddress,@JsonKey(name: 'details_count') int? detailsCount,@JsonKey(name: 'store') Store? store,@JsonKey(name: 'delivery_instruction') String? deliveryInstruction,@JsonKey(name: 'order_note') String? orderNote
});


@override $DeliveryAddressCopyWith<$Res>? get deliveryAddress;@override $StoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? orderAmount = freezed,Object? orderStatus = freezed,Object? createdAt = freezed,Object? deliveryAddress = freezed,Object? detailsCount = freezed,Object? store = freezed,Object? deliveryInstruction = freezed,Object? orderNote = freezed,}) {
  return _then(_Order(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,orderAmount: freezed == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as double?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,detailsCount: freezed == detailsCount ? _self.detailsCount : detailsCount // ignore: cast_nullable_to_non_nullable
as int?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,deliveryInstruction: freezed == deliveryInstruction ? _self.deliveryInstruction : deliveryInstruction // ignore: cast_nullable_to_non_nullable
as String?,orderNote: freezed == orderNote ? _self.orderNote : orderNote // ignore: cast_nullable_to_non_nullable
as String?,
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
}
}


/// @nodoc
mixin _$DeliveryAddress {

@JsonKey(name: 'contact_person_name') String? get contactPersonName;@JsonKey(name: 'contact_person_number') String? get contactPersonNumber;@JsonKey(name: 'address') String? get address;
/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<DeliveryAddress> get copyWith => _$DeliveryAddressCopyWithImpl<DeliveryAddress>(this as DeliveryAddress, _$identity);

  /// Serializes this DeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryAddress&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.contactPersonNumber, contactPersonNumber) || other.contactPersonNumber == contactPersonNumber)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactPersonName,contactPersonNumber,address);

@override
String toString() {
  return 'DeliveryAddress(contactPersonName: $contactPersonName, contactPersonNumber: $contactPersonNumber, address: $address)';
}


}

/// @nodoc
abstract mixin class $DeliveryAddressCopyWith<$Res>  {
  factory $DeliveryAddressCopyWith(DeliveryAddress value, $Res Function(DeliveryAddress) _then) = _$DeliveryAddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contact_person_name') String? contactPersonName,@JsonKey(name: 'contact_person_number') String? contactPersonNumber,@JsonKey(name: 'address') String? address
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
@pragma('vm:prefer-inline') @override $Res call({Object? contactPersonName = freezed,Object? contactPersonNumber = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,contactPersonNumber: freezed == contactPersonNumber ? _self.contactPersonNumber : contactPersonNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DeliveryAddress implements DeliveryAddress {
  const _DeliveryAddress({@JsonKey(name: 'contact_person_name') this.contactPersonName, @JsonKey(name: 'contact_person_number') this.contactPersonNumber, @JsonKey(name: 'address') this.address});
  factory _DeliveryAddress.fromJson(Map<String, dynamic> json) => _$DeliveryAddressFromJson(json);

@override@JsonKey(name: 'contact_person_name') final  String? contactPersonName;
@override@JsonKey(name: 'contact_person_number') final  String? contactPersonNumber;
@override@JsonKey(name: 'address') final  String? address;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryAddress&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.contactPersonNumber, contactPersonNumber) || other.contactPersonNumber == contactPersonNumber)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contactPersonName,contactPersonNumber,address);

@override
String toString() {
  return 'DeliveryAddress(contactPersonName: $contactPersonName, contactPersonNumber: $contactPersonNumber, address: $address)';
}


}

/// @nodoc
abstract mixin class _$DeliveryAddressCopyWith<$Res> implements $DeliveryAddressCopyWith<$Res> {
  factory _$DeliveryAddressCopyWith(_DeliveryAddress value, $Res Function(_DeliveryAddress) _then) = __$DeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'contact_person_name') String? contactPersonName,@JsonKey(name: 'contact_person_number') String? contactPersonNumber,@JsonKey(name: 'address') String? address
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
@override @pragma('vm:prefer-inline') $Res call({Object? contactPersonName = freezed,Object? contactPersonNumber = freezed,Object? address = freezed,}) {
  return _then(_DeliveryAddress(
contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,contactPersonNumber: freezed == contactPersonNumber ? _self.contactPersonNumber : contactPersonNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Store {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'logo_full_url') String? get logoFullUrl;@JsonKey(name: 'cover_photo_full_url') String? get coverPhotoFullUrl;@JsonKey(name: 'delivery_time') String? get deliveryTime;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoFullUrl,coverPhotoFullUrl,deliveryTime);

@override
String toString() {
  return 'Store(id: $id, name: $name, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, deliveryTime: $deliveryTime)';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'logo_full_url') String? logoFullUrl,@JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl,@JsonKey(name: 'delivery_time') String? deliveryTime
});




}
/// @nodoc
class _$StoreCopyWithImpl<$Res>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,Object? deliveryTime = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Store implements Store {
  const _Store({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'logo_full_url') this.logoFullUrl, @JsonKey(name: 'cover_photo_full_url') this.coverPhotoFullUrl, @JsonKey(name: 'delivery_time') this.deliveryTime});
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'logo_full_url') final  String? logoFullUrl;
@override@JsonKey(name: 'cover_photo_full_url') final  String? coverPhotoFullUrl;
@override@JsonKey(name: 'delivery_time') final  String? deliveryTime;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoFullUrl, logoFullUrl) || other.logoFullUrl == logoFullUrl)&&(identical(other.coverPhotoFullUrl, coverPhotoFullUrl) || other.coverPhotoFullUrl == coverPhotoFullUrl)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoFullUrl,coverPhotoFullUrl,deliveryTime);

@override
String toString() {
  return 'Store(id: $id, name: $name, logoFullUrl: $logoFullUrl, coverPhotoFullUrl: $coverPhotoFullUrl, deliveryTime: $deliveryTime)';
}


}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) = __$StoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'logo_full_url') String? logoFullUrl,@JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl,@JsonKey(name: 'delivery_time') String? deliveryTime
});




}
/// @nodoc
class __$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? logoFullUrl = freezed,Object? coverPhotoFullUrl = freezed,Object? deliveryTime = freezed,}) {
  return _then(_Store(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoFullUrl: freezed == logoFullUrl ? _self.logoFullUrl : logoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoFullUrl: freezed == coverPhotoFullUrl ? _self.coverPhotoFullUrl : coverPhotoFullUrl // ignore: cast_nullable_to_non_nullable
as String?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
