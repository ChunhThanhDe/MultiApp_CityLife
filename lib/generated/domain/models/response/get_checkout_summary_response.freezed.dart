// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_checkout_summary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCheckoutSummaryResponse {

@JsonKey(name: 'default_address') CheckoutAddress? get defaultAddress;@JsonKey(name: 'addresses') List<CheckoutAddress>? get addresses;@JsonKey(name: 'delivery_options') List<DeliveryOption>? get deliveryOptions;@JsonKey(name: 'payment_methods') List<PaymentMethod>? get paymentMethods;@JsonKey(name: 'cards') List<dynamic>? get cards;@JsonKey(name: 'available_coupons') List<AvailableCoupon>? get availableCoupons;@JsonKey(name: 'cart') List<CheckoutCartStore>? get cart;@JsonKey(name: 'cart_summary') CheckoutCartSummary? get cartSummary;@JsonKey(name: 'subtotal') double? get subtotal;@JsonKey(name: 'delivery_fee') double? get deliveryFee;@JsonKey(name: 'tax') double? get tax;@JsonKey(name: 'discount') double? get discount;@JsonKey(name: 'total') double? get total;
/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCheckoutSummaryResponseCopyWith<GetCheckoutSummaryResponse> get copyWith => _$GetCheckoutSummaryResponseCopyWithImpl<GetCheckoutSummaryResponse>(this as GetCheckoutSummaryResponse, _$identity);

  /// Serializes this GetCheckoutSummaryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCheckoutSummaryResponse&&(identical(other.defaultAddress, defaultAddress) || other.defaultAddress == defaultAddress)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&const DeepCollectionEquality().equals(other.deliveryOptions, deliveryOptions)&&const DeepCollectionEquality().equals(other.paymentMethods, paymentMethods)&&const DeepCollectionEquality().equals(other.cards, cards)&&const DeepCollectionEquality().equals(other.availableCoupons, availableCoupons)&&const DeepCollectionEquality().equals(other.cart, cart)&&(identical(other.cartSummary, cartSummary) || other.cartSummary == cartSummary)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultAddress,const DeepCollectionEquality().hash(addresses),const DeepCollectionEquality().hash(deliveryOptions),const DeepCollectionEquality().hash(paymentMethods),const DeepCollectionEquality().hash(cards),const DeepCollectionEquality().hash(availableCoupons),const DeepCollectionEquality().hash(cart),cartSummary,subtotal,deliveryFee,tax,discount,total);

@override
String toString() {
  return 'GetCheckoutSummaryResponse(defaultAddress: $defaultAddress, addresses: $addresses, deliveryOptions: $deliveryOptions, paymentMethods: $paymentMethods, cards: $cards, availableCoupons: $availableCoupons, cart: $cart, cartSummary: $cartSummary, subtotal: $subtotal, deliveryFee: $deliveryFee, tax: $tax, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class $GetCheckoutSummaryResponseCopyWith<$Res>  {
  factory $GetCheckoutSummaryResponseCopyWith(GetCheckoutSummaryResponse value, $Res Function(GetCheckoutSummaryResponse) _then) = _$GetCheckoutSummaryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'default_address') CheckoutAddress? defaultAddress,@JsonKey(name: 'addresses') List<CheckoutAddress>? addresses,@JsonKey(name: 'delivery_options') List<DeliveryOption>? deliveryOptions,@JsonKey(name: 'payment_methods') List<PaymentMethod>? paymentMethods,@JsonKey(name: 'cards') List<dynamic>? cards,@JsonKey(name: 'available_coupons') List<AvailableCoupon>? availableCoupons,@JsonKey(name: 'cart') List<CheckoutCartStore>? cart,@JsonKey(name: 'cart_summary') CheckoutCartSummary? cartSummary,@JsonKey(name: 'subtotal') double? subtotal,@JsonKey(name: 'delivery_fee') double? deliveryFee,@JsonKey(name: 'tax') double? tax,@JsonKey(name: 'discount') double? discount,@JsonKey(name: 'total') double? total
});


$CheckoutAddressCopyWith<$Res>? get defaultAddress;$CheckoutCartSummaryCopyWith<$Res>? get cartSummary;

}
/// @nodoc
class _$GetCheckoutSummaryResponseCopyWithImpl<$Res>
    implements $GetCheckoutSummaryResponseCopyWith<$Res> {
  _$GetCheckoutSummaryResponseCopyWithImpl(this._self, this._then);

  final GetCheckoutSummaryResponse _self;
  final $Res Function(GetCheckoutSummaryResponse) _then;

/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultAddress = freezed,Object? addresses = freezed,Object? deliveryOptions = freezed,Object? paymentMethods = freezed,Object? cards = freezed,Object? availableCoupons = freezed,Object? cart = freezed,Object? cartSummary = freezed,Object? subtotal = freezed,Object? deliveryFee = freezed,Object? tax = freezed,Object? discount = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
defaultAddress: freezed == defaultAddress ? _self.defaultAddress : defaultAddress // ignore: cast_nullable_to_non_nullable
as CheckoutAddress?,addresses: freezed == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<CheckoutAddress>?,deliveryOptions: freezed == deliveryOptions ? _self.deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryOption>?,paymentMethods: freezed == paymentMethods ? _self.paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethod>?,cards: freezed == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,availableCoupons: freezed == availableCoupons ? _self.availableCoupons : availableCoupons // ignore: cast_nullable_to_non_nullable
as List<AvailableCoupon>?,cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartStore>?,cartSummary: freezed == cartSummary ? _self.cartSummary : cartSummary // ignore: cast_nullable_to_non_nullable
as CheckoutCartSummary?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutAddressCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
    return null;
  }

  return $CheckoutAddressCopyWith<$Res>(_self.defaultAddress!, (value) {
    return _then(_self.copyWith(defaultAddress: value));
  });
}/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutCartSummaryCopyWith<$Res>? get cartSummary {
    if (_self.cartSummary == null) {
    return null;
  }

  return $CheckoutCartSummaryCopyWith<$Res>(_self.cartSummary!, (value) {
    return _then(_self.copyWith(cartSummary: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GetCheckoutSummaryResponse implements GetCheckoutSummaryResponse {
  const _GetCheckoutSummaryResponse({@JsonKey(name: 'default_address') this.defaultAddress, @JsonKey(name: 'addresses') final  List<CheckoutAddress>? addresses, @JsonKey(name: 'delivery_options') final  List<DeliveryOption>? deliveryOptions, @JsonKey(name: 'payment_methods') final  List<PaymentMethod>? paymentMethods, @JsonKey(name: 'cards') final  List<dynamic>? cards, @JsonKey(name: 'available_coupons') final  List<AvailableCoupon>? availableCoupons, @JsonKey(name: 'cart') final  List<CheckoutCartStore>? cart, @JsonKey(name: 'cart_summary') this.cartSummary, @JsonKey(name: 'subtotal') this.subtotal, @JsonKey(name: 'delivery_fee') this.deliveryFee, @JsonKey(name: 'tax') this.tax, @JsonKey(name: 'discount') this.discount, @JsonKey(name: 'total') this.total}): _addresses = addresses,_deliveryOptions = deliveryOptions,_paymentMethods = paymentMethods,_cards = cards,_availableCoupons = availableCoupons,_cart = cart;
  factory _GetCheckoutSummaryResponse.fromJson(Map<String, dynamic> json) => _$GetCheckoutSummaryResponseFromJson(json);

@override@JsonKey(name: 'default_address') final  CheckoutAddress? defaultAddress;
 final  List<CheckoutAddress>? _addresses;
@override@JsonKey(name: 'addresses') List<CheckoutAddress>? get addresses {
  final value = _addresses;
  if (value == null) return null;
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<DeliveryOption>? _deliveryOptions;
@override@JsonKey(name: 'delivery_options') List<DeliveryOption>? get deliveryOptions {
  final value = _deliveryOptions;
  if (value == null) return null;
  if (_deliveryOptions is EqualUnmodifiableListView) return _deliveryOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PaymentMethod>? _paymentMethods;
@override@JsonKey(name: 'payment_methods') List<PaymentMethod>? get paymentMethods {
  final value = _paymentMethods;
  if (value == null) return null;
  if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _cards;
@override@JsonKey(name: 'cards') List<dynamic>? get cards {
  final value = _cards;
  if (value == null) return null;
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AvailableCoupon>? _availableCoupons;
@override@JsonKey(name: 'available_coupons') List<AvailableCoupon>? get availableCoupons {
  final value = _availableCoupons;
  if (value == null) return null;
  if (_availableCoupons is EqualUnmodifiableListView) return _availableCoupons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CheckoutCartStore>? _cart;
@override@JsonKey(name: 'cart') List<CheckoutCartStore>? get cart {
  final value = _cart;
  if (value == null) return null;
  if (_cart is EqualUnmodifiableListView) return _cart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'cart_summary') final  CheckoutCartSummary? cartSummary;
@override@JsonKey(name: 'subtotal') final  double? subtotal;
@override@JsonKey(name: 'delivery_fee') final  double? deliveryFee;
@override@JsonKey(name: 'tax') final  double? tax;
@override@JsonKey(name: 'discount') final  double? discount;
@override@JsonKey(name: 'total') final  double? total;

/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCheckoutSummaryResponseCopyWith<_GetCheckoutSummaryResponse> get copyWith => __$GetCheckoutSummaryResponseCopyWithImpl<_GetCheckoutSummaryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCheckoutSummaryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCheckoutSummaryResponse&&(identical(other.defaultAddress, defaultAddress) || other.defaultAddress == defaultAddress)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&const DeepCollectionEquality().equals(other._deliveryOptions, _deliveryOptions)&&const DeepCollectionEquality().equals(other._paymentMethods, _paymentMethods)&&const DeepCollectionEquality().equals(other._cards, _cards)&&const DeepCollectionEquality().equals(other._availableCoupons, _availableCoupons)&&const DeepCollectionEquality().equals(other._cart, _cart)&&(identical(other.cartSummary, cartSummary) || other.cartSummary == cartSummary)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultAddress,const DeepCollectionEquality().hash(_addresses),const DeepCollectionEquality().hash(_deliveryOptions),const DeepCollectionEquality().hash(_paymentMethods),const DeepCollectionEquality().hash(_cards),const DeepCollectionEquality().hash(_availableCoupons),const DeepCollectionEquality().hash(_cart),cartSummary,subtotal,deliveryFee,tax,discount,total);

@override
String toString() {
  return 'GetCheckoutSummaryResponse(defaultAddress: $defaultAddress, addresses: $addresses, deliveryOptions: $deliveryOptions, paymentMethods: $paymentMethods, cards: $cards, availableCoupons: $availableCoupons, cart: $cart, cartSummary: $cartSummary, subtotal: $subtotal, deliveryFee: $deliveryFee, tax: $tax, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$GetCheckoutSummaryResponseCopyWith<$Res> implements $GetCheckoutSummaryResponseCopyWith<$Res> {
  factory _$GetCheckoutSummaryResponseCopyWith(_GetCheckoutSummaryResponse value, $Res Function(_GetCheckoutSummaryResponse) _then) = __$GetCheckoutSummaryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'default_address') CheckoutAddress? defaultAddress,@JsonKey(name: 'addresses') List<CheckoutAddress>? addresses,@JsonKey(name: 'delivery_options') List<DeliveryOption>? deliveryOptions,@JsonKey(name: 'payment_methods') List<PaymentMethod>? paymentMethods,@JsonKey(name: 'cards') List<dynamic>? cards,@JsonKey(name: 'available_coupons') List<AvailableCoupon>? availableCoupons,@JsonKey(name: 'cart') List<CheckoutCartStore>? cart,@JsonKey(name: 'cart_summary') CheckoutCartSummary? cartSummary,@JsonKey(name: 'subtotal') double? subtotal,@JsonKey(name: 'delivery_fee') double? deliveryFee,@JsonKey(name: 'tax') double? tax,@JsonKey(name: 'discount') double? discount,@JsonKey(name: 'total') double? total
});


@override $CheckoutAddressCopyWith<$Res>? get defaultAddress;@override $CheckoutCartSummaryCopyWith<$Res>? get cartSummary;

}
/// @nodoc
class __$GetCheckoutSummaryResponseCopyWithImpl<$Res>
    implements _$GetCheckoutSummaryResponseCopyWith<$Res> {
  __$GetCheckoutSummaryResponseCopyWithImpl(this._self, this._then);

  final _GetCheckoutSummaryResponse _self;
  final $Res Function(_GetCheckoutSummaryResponse) _then;

/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultAddress = freezed,Object? addresses = freezed,Object? deliveryOptions = freezed,Object? paymentMethods = freezed,Object? cards = freezed,Object? availableCoupons = freezed,Object? cart = freezed,Object? cartSummary = freezed,Object? subtotal = freezed,Object? deliveryFee = freezed,Object? tax = freezed,Object? discount = freezed,Object? total = freezed,}) {
  return _then(_GetCheckoutSummaryResponse(
defaultAddress: freezed == defaultAddress ? _self.defaultAddress : defaultAddress // ignore: cast_nullable_to_non_nullable
as CheckoutAddress?,addresses: freezed == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<CheckoutAddress>?,deliveryOptions: freezed == deliveryOptions ? _self._deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryOption>?,paymentMethods: freezed == paymentMethods ? _self._paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethod>?,cards: freezed == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,availableCoupons: freezed == availableCoupons ? _self._availableCoupons : availableCoupons // ignore: cast_nullable_to_non_nullable
as List<AvailableCoupon>?,cart: freezed == cart ? _self._cart : cart // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartStore>?,cartSummary: freezed == cartSummary ? _self.cartSummary : cartSummary // ignore: cast_nullable_to_non_nullable
as CheckoutCartSummary?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutAddressCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
    return null;
  }

  return $CheckoutAddressCopyWith<$Res>(_self.defaultAddress!, (value) {
    return _then(_self.copyWith(defaultAddress: value));
  });
}/// Create a copy of GetCheckoutSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutCartSummaryCopyWith<$Res>? get cartSummary {
    if (_self.cartSummary == null) {
    return null;
  }

  return $CheckoutCartSummaryCopyWith<$Res>(_self.cartSummary!, (value) {
    return _then(_self.copyWith(cartSummary: value));
  });
}
}


/// @nodoc
mixin _$CheckoutAddress {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'address_type') String? get addressType;@JsonKey(name: 'contact_person_number') String? get contactPersonNumber;@JsonKey(name: 'address') String? get address;@JsonKey(name: 'latitude') String? get latitude;@JsonKey(name: 'longitude') String? get longitude;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'contact_person_name') String? get contactPersonName;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'zone_id') int? get zoneId;@JsonKey(name: 'floor') String? get floor;@JsonKey(name: 'road') String? get road;@JsonKey(name: 'house') String? get house;
/// Create a copy of CheckoutAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutAddressCopyWith<CheckoutAddress> get copyWith => _$CheckoutAddressCopyWithImpl<CheckoutAddress>(this as CheckoutAddress, _$identity);

  /// Serializes this CheckoutAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.addressType, addressType) || other.addressType == addressType)&&(identical(other.contactPersonNumber, contactPersonNumber) || other.contactPersonNumber == contactPersonNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.road, road) || other.road == road)&&(identical(other.house, house) || other.house == house));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,addressType,contactPersonNumber,address,latitude,longitude,userId,contactPersonName,createdAt,updatedAt,zoneId,floor,road,house);

@override
String toString() {
  return 'CheckoutAddress(id: $id, addressType: $addressType, contactPersonNumber: $contactPersonNumber, address: $address, latitude: $latitude, longitude: $longitude, userId: $userId, contactPersonName: $contactPersonName, createdAt: $createdAt, updatedAt: $updatedAt, zoneId: $zoneId, floor: $floor, road: $road, house: $house)';
}


}

/// @nodoc
abstract mixin class $CheckoutAddressCopyWith<$Res>  {
  factory $CheckoutAddressCopyWith(CheckoutAddress value, $Res Function(CheckoutAddress) _then) = _$CheckoutAddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'contact_person_number') String? contactPersonNumber,@JsonKey(name: 'address') String? address,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'contact_person_name') String? contactPersonName,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'zone_id') int? zoneId,@JsonKey(name: 'floor') String? floor,@JsonKey(name: 'road') String? road,@JsonKey(name: 'house') String? house
});




}
/// @nodoc
class _$CheckoutAddressCopyWithImpl<$Res>
    implements $CheckoutAddressCopyWith<$Res> {
  _$CheckoutAddressCopyWithImpl(this._self, this._then);

  final CheckoutAddress _self;
  final $Res Function(CheckoutAddress) _then;

/// Create a copy of CheckoutAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? addressType = freezed,Object? contactPersonNumber = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? userId = freezed,Object? contactPersonName = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? zoneId = freezed,Object? floor = freezed,Object? road = freezed,Object? house = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,contactPersonNumber: freezed == contactPersonNumber ? _self.contactPersonNumber : contactPersonNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CheckoutAddress implements CheckoutAddress {
  const _CheckoutAddress({@JsonKey(name: 'id') this.id, @JsonKey(name: 'address_type') this.addressType, @JsonKey(name: 'contact_person_number') this.contactPersonNumber, @JsonKey(name: 'address') this.address, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'contact_person_name') this.contactPersonName, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'zone_id') this.zoneId, @JsonKey(name: 'floor') this.floor, @JsonKey(name: 'road') this.road, @JsonKey(name: 'house') this.house});
  factory _CheckoutAddress.fromJson(Map<String, dynamic> json) => _$CheckoutAddressFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'address_type') final  String? addressType;
@override@JsonKey(name: 'contact_person_number') final  String? contactPersonNumber;
@override@JsonKey(name: 'address') final  String? address;
@override@JsonKey(name: 'latitude') final  String? latitude;
@override@JsonKey(name: 'longitude') final  String? longitude;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'contact_person_name') final  String? contactPersonName;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'zone_id') final  int? zoneId;
@override@JsonKey(name: 'floor') final  String? floor;
@override@JsonKey(name: 'road') final  String? road;
@override@JsonKey(name: 'house') final  String? house;

/// Create a copy of CheckoutAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutAddressCopyWith<_CheckoutAddress> get copyWith => __$CheckoutAddressCopyWithImpl<_CheckoutAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.addressType, addressType) || other.addressType == addressType)&&(identical(other.contactPersonNumber, contactPersonNumber) || other.contactPersonNumber == contactPersonNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.road, road) || other.road == road)&&(identical(other.house, house) || other.house == house));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,addressType,contactPersonNumber,address,latitude,longitude,userId,contactPersonName,createdAt,updatedAt,zoneId,floor,road,house);

@override
String toString() {
  return 'CheckoutAddress(id: $id, addressType: $addressType, contactPersonNumber: $contactPersonNumber, address: $address, latitude: $latitude, longitude: $longitude, userId: $userId, contactPersonName: $contactPersonName, createdAt: $createdAt, updatedAt: $updatedAt, zoneId: $zoneId, floor: $floor, road: $road, house: $house)';
}


}

/// @nodoc
abstract mixin class _$CheckoutAddressCopyWith<$Res> implements $CheckoutAddressCopyWith<$Res> {
  factory _$CheckoutAddressCopyWith(_CheckoutAddress value, $Res Function(_CheckoutAddress) _then) = __$CheckoutAddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'contact_person_number') String? contactPersonNumber,@JsonKey(name: 'address') String? address,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'contact_person_name') String? contactPersonName,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'zone_id') int? zoneId,@JsonKey(name: 'floor') String? floor,@JsonKey(name: 'road') String? road,@JsonKey(name: 'house') String? house
});




}
/// @nodoc
class __$CheckoutAddressCopyWithImpl<$Res>
    implements _$CheckoutAddressCopyWith<$Res> {
  __$CheckoutAddressCopyWithImpl(this._self, this._then);

  final _CheckoutAddress _self;
  final $Res Function(_CheckoutAddress) _then;

/// Create a copy of CheckoutAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? addressType = freezed,Object? contactPersonNumber = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? userId = freezed,Object? contactPersonName = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? zoneId = freezed,Object? floor = freezed,Object? road = freezed,Object? house = freezed,}) {
  return _then(_CheckoutAddress(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,contactPersonNumber: freezed == contactPersonNumber ? _self.contactPersonNumber : contactPersonNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as int?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeliveryOption {

@JsonKey(name: 'key') String? get key;@JsonKey(name: 'label') String? get label;@JsonKey(name: 'fee') double? get fee;@JsonKey(name: 'desc') String? get desc;
/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryOptionCopyWith<DeliveryOption> get copyWith => _$DeliveryOptionCopyWithImpl<DeliveryOption>(this as DeliveryOption, _$identity);

  /// Serializes this DeliveryOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryOption&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,fee,desc);

@override
String toString() {
  return 'DeliveryOption(key: $key, label: $label, fee: $fee, desc: $desc)';
}


}

/// @nodoc
abstract mixin class $DeliveryOptionCopyWith<$Res>  {
  factory $DeliveryOptionCopyWith(DeliveryOption value, $Res Function(DeliveryOption) _then) = _$DeliveryOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'key') String? key,@JsonKey(name: 'label') String? label,@JsonKey(name: 'fee') double? fee,@JsonKey(name: 'desc') String? desc
});




}
/// @nodoc
class _$DeliveryOptionCopyWithImpl<$Res>
    implements $DeliveryOptionCopyWith<$Res> {
  _$DeliveryOptionCopyWithImpl(this._self, this._then);

  final DeliveryOption _self;
  final $Res Function(DeliveryOption) _then;

/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? label = freezed,Object? fee = freezed,Object? desc = freezed,}) {
  return _then(_self.copyWith(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DeliveryOption implements DeliveryOption {
  const _DeliveryOption({@JsonKey(name: 'key') this.key, @JsonKey(name: 'label') this.label, @JsonKey(name: 'fee') this.fee, @JsonKey(name: 'desc') this.desc});
  factory _DeliveryOption.fromJson(Map<String, dynamic> json) => _$DeliveryOptionFromJson(json);

@override@JsonKey(name: 'key') final  String? key;
@override@JsonKey(name: 'label') final  String? label;
@override@JsonKey(name: 'fee') final  double? fee;
@override@JsonKey(name: 'desc') final  String? desc;

/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryOptionCopyWith<_DeliveryOption> get copyWith => __$DeliveryOptionCopyWithImpl<_DeliveryOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryOption&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,fee,desc);

@override
String toString() {
  return 'DeliveryOption(key: $key, label: $label, fee: $fee, desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$DeliveryOptionCopyWith<$Res> implements $DeliveryOptionCopyWith<$Res> {
  factory _$DeliveryOptionCopyWith(_DeliveryOption value, $Res Function(_DeliveryOption) _then) = __$DeliveryOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'key') String? key,@JsonKey(name: 'label') String? label,@JsonKey(name: 'fee') double? fee,@JsonKey(name: 'desc') String? desc
});




}
/// @nodoc
class __$DeliveryOptionCopyWithImpl<$Res>
    implements _$DeliveryOptionCopyWith<$Res> {
  __$DeliveryOptionCopyWithImpl(this._self, this._then);

  final _DeliveryOption _self;
  final $Res Function(_DeliveryOption) _then;

/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? label = freezed,Object? fee = freezed,Object? desc = freezed,}) {
  return _then(_DeliveryOption(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentMethod {

@JsonKey(name: 'key') String? get key;@JsonKey(name: 'label') String? get label;
/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<PaymentMethod> get copyWith => _$PaymentMethodCopyWithImpl<PaymentMethod>(this as PaymentMethod, _$identity);

  /// Serializes this PaymentMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethod&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label);

@override
String toString() {
  return 'PaymentMethod(key: $key, label: $label)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodCopyWith<$Res>  {
  factory $PaymentMethodCopyWith(PaymentMethod value, $Res Function(PaymentMethod) _then) = _$PaymentMethodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'key') String? key,@JsonKey(name: 'label') String? label
});




}
/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._self, this._then);

  final PaymentMethod _self;
  final $Res Function(PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? label = freezed,}) {
  return _then(_self.copyWith(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PaymentMethod implements PaymentMethod {
  const _PaymentMethod({@JsonKey(name: 'key') this.key, @JsonKey(name: 'label') this.label});
  factory _PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

@override@JsonKey(name: 'key') final  String? key;
@override@JsonKey(name: 'label') final  String? label;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodCopyWith<_PaymentMethod> get copyWith => __$PaymentMethodCopyWithImpl<_PaymentMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethod&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label);

@override
String toString() {
  return 'PaymentMethod(key: $key, label: $label)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodCopyWith<$Res> implements $PaymentMethodCopyWith<$Res> {
  factory _$PaymentMethodCopyWith(_PaymentMethod value, $Res Function(_PaymentMethod) _then) = __$PaymentMethodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'key') String? key,@JsonKey(name: 'label') String? label
});




}
/// @nodoc
class __$PaymentMethodCopyWithImpl<$Res>
    implements _$PaymentMethodCopyWith<$Res> {
  __$PaymentMethodCopyWithImpl(this._self, this._then);

  final _PaymentMethod _self;
  final $Res Function(_PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? label = freezed,}) {
  return _then(_PaymentMethod(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AvailableCoupon {

@JsonKey(name: 'code') String? get code;@JsonKey(name: 'desc') String? get desc;
/// Create a copy of AvailableCoupon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableCouponCopyWith<AvailableCoupon> get copyWith => _$AvailableCouponCopyWithImpl<AvailableCoupon>(this as AvailableCoupon, _$identity);

  /// Serializes this AvailableCoupon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableCoupon&&(identical(other.code, code) || other.code == code)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,desc);

@override
String toString() {
  return 'AvailableCoupon(code: $code, desc: $desc)';
}


}

/// @nodoc
abstract mixin class $AvailableCouponCopyWith<$Res>  {
  factory $AvailableCouponCopyWith(AvailableCoupon value, $Res Function(AvailableCoupon) _then) = _$AvailableCouponCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'code') String? code,@JsonKey(name: 'desc') String? desc
});




}
/// @nodoc
class _$AvailableCouponCopyWithImpl<$Res>
    implements $AvailableCouponCopyWith<$Res> {
  _$AvailableCouponCopyWithImpl(this._self, this._then);

  final AvailableCoupon _self;
  final $Res Function(AvailableCoupon) _then;

/// Create a copy of AvailableCoupon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? desc = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AvailableCoupon implements AvailableCoupon {
  const _AvailableCoupon({@JsonKey(name: 'code') this.code, @JsonKey(name: 'desc') this.desc});
  factory _AvailableCoupon.fromJson(Map<String, dynamic> json) => _$AvailableCouponFromJson(json);

@override@JsonKey(name: 'code') final  String? code;
@override@JsonKey(name: 'desc') final  String? desc;

/// Create a copy of AvailableCoupon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableCouponCopyWith<_AvailableCoupon> get copyWith => __$AvailableCouponCopyWithImpl<_AvailableCoupon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableCouponToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableCoupon&&(identical(other.code, code) || other.code == code)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,desc);

@override
String toString() {
  return 'AvailableCoupon(code: $code, desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$AvailableCouponCopyWith<$Res> implements $AvailableCouponCopyWith<$Res> {
  factory _$AvailableCouponCopyWith(_AvailableCoupon value, $Res Function(_AvailableCoupon) _then) = __$AvailableCouponCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'code') String? code,@JsonKey(name: 'desc') String? desc
});




}
/// @nodoc
class __$AvailableCouponCopyWithImpl<$Res>
    implements _$AvailableCouponCopyWith<$Res> {
  __$AvailableCouponCopyWithImpl(this._self, this._then);

  final _AvailableCoupon _self;
  final $Res Function(_AvailableCoupon) _then;

/// Create a copy of AvailableCoupon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? desc = freezed,}) {
  return _then(_AvailableCoupon(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CheckoutCartStore {

@JsonKey(name: 'store_id') int? get storeId;@JsonKey(name: 'store_name') String? get storeName;@JsonKey(name: 'store_logo') String? get storeLogo;@JsonKey(name: 'store_address') String? get storeAddress;@JsonKey(name: 'store_phone') String? get storePhone;@JsonKey(name: 'store_minimum_order') int? get storeMinimumOrder;@JsonKey(name: 'store_delivery_time') String? get storeDeliveryTime;@JsonKey(name: 'items') List<CheckoutCartItem>? get items;@JsonKey(name: 'store_total_items') int? get storeTotalItems;@JsonKey(name: 'store_total_price') double? get storeTotalPrice;
/// Create a copy of CheckoutCartStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCartStoreCopyWith<CheckoutCartStore> get copyWith => _$CheckoutCartStoreCopyWithImpl<CheckoutCartStore>(this as CheckoutCartStore, _$identity);

  /// Serializes this CheckoutCartStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCartStore&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeLogo, storeLogo) || other.storeLogo == storeLogo)&&(identical(other.storeAddress, storeAddress) || other.storeAddress == storeAddress)&&(identical(other.storePhone, storePhone) || other.storePhone == storePhone)&&(identical(other.storeMinimumOrder, storeMinimumOrder) || other.storeMinimumOrder == storeMinimumOrder)&&(identical(other.storeDeliveryTime, storeDeliveryTime) || other.storeDeliveryTime == storeDeliveryTime)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.storeTotalItems, storeTotalItems) || other.storeTotalItems == storeTotalItems)&&(identical(other.storeTotalPrice, storeTotalPrice) || other.storeTotalPrice == storeTotalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,storeLogo,storeAddress,storePhone,storeMinimumOrder,storeDeliveryTime,const DeepCollectionEquality().hash(items),storeTotalItems,storeTotalPrice);

@override
String toString() {
  return 'CheckoutCartStore(storeId: $storeId, storeName: $storeName, storeLogo: $storeLogo, storeAddress: $storeAddress, storePhone: $storePhone, storeMinimumOrder: $storeMinimumOrder, storeDeliveryTime: $storeDeliveryTime, items: $items, storeTotalItems: $storeTotalItems, storeTotalPrice: $storeTotalPrice)';
}


}

/// @nodoc
abstract mixin class $CheckoutCartStoreCopyWith<$Res>  {
  factory $CheckoutCartStoreCopyWith(CheckoutCartStore value, $Res Function(CheckoutCartStore) _then) = _$CheckoutCartStoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') int? storeId,@JsonKey(name: 'store_name') String? storeName,@JsonKey(name: 'store_logo') String? storeLogo,@JsonKey(name: 'store_address') String? storeAddress,@JsonKey(name: 'store_phone') String? storePhone,@JsonKey(name: 'store_minimum_order') int? storeMinimumOrder,@JsonKey(name: 'store_delivery_time') String? storeDeliveryTime,@JsonKey(name: 'items') List<CheckoutCartItem>? items,@JsonKey(name: 'store_total_items') int? storeTotalItems,@JsonKey(name: 'store_total_price') double? storeTotalPrice
});




}
/// @nodoc
class _$CheckoutCartStoreCopyWithImpl<$Res>
    implements $CheckoutCartStoreCopyWith<$Res> {
  _$CheckoutCartStoreCopyWithImpl(this._self, this._then);

  final CheckoutCartStore _self;
  final $Res Function(CheckoutCartStore) _then;

/// Create a copy of CheckoutCartStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = freezed,Object? storeName = freezed,Object? storeLogo = freezed,Object? storeAddress = freezed,Object? storePhone = freezed,Object? storeMinimumOrder = freezed,Object? storeDeliveryTime = freezed,Object? items = freezed,Object? storeTotalItems = freezed,Object? storeTotalPrice = freezed,}) {
  return _then(_self.copyWith(
storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,storeLogo: freezed == storeLogo ? _self.storeLogo : storeLogo // ignore: cast_nullable_to_non_nullable
as String?,storeAddress: freezed == storeAddress ? _self.storeAddress : storeAddress // ignore: cast_nullable_to_non_nullable
as String?,storePhone: freezed == storePhone ? _self.storePhone : storePhone // ignore: cast_nullable_to_non_nullable
as String?,storeMinimumOrder: freezed == storeMinimumOrder ? _self.storeMinimumOrder : storeMinimumOrder // ignore: cast_nullable_to_non_nullable
as int?,storeDeliveryTime: freezed == storeDeliveryTime ? _self.storeDeliveryTime : storeDeliveryTime // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartItem>?,storeTotalItems: freezed == storeTotalItems ? _self.storeTotalItems : storeTotalItems // ignore: cast_nullable_to_non_nullable
as int?,storeTotalPrice: freezed == storeTotalPrice ? _self.storeTotalPrice : storeTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CheckoutCartStore implements CheckoutCartStore {
  const _CheckoutCartStore({@JsonKey(name: 'store_id') this.storeId, @JsonKey(name: 'store_name') this.storeName, @JsonKey(name: 'store_logo') this.storeLogo, @JsonKey(name: 'store_address') this.storeAddress, @JsonKey(name: 'store_phone') this.storePhone, @JsonKey(name: 'store_minimum_order') this.storeMinimumOrder, @JsonKey(name: 'store_delivery_time') this.storeDeliveryTime, @JsonKey(name: 'items') final  List<CheckoutCartItem>? items, @JsonKey(name: 'store_total_items') this.storeTotalItems, @JsonKey(name: 'store_total_price') this.storeTotalPrice}): _items = items;
  factory _CheckoutCartStore.fromJson(Map<String, dynamic> json) => _$CheckoutCartStoreFromJson(json);

@override@JsonKey(name: 'store_id') final  int? storeId;
@override@JsonKey(name: 'store_name') final  String? storeName;
@override@JsonKey(name: 'store_logo') final  String? storeLogo;
@override@JsonKey(name: 'store_address') final  String? storeAddress;
@override@JsonKey(name: 'store_phone') final  String? storePhone;
@override@JsonKey(name: 'store_minimum_order') final  int? storeMinimumOrder;
@override@JsonKey(name: 'store_delivery_time') final  String? storeDeliveryTime;
 final  List<CheckoutCartItem>? _items;
@override@JsonKey(name: 'items') List<CheckoutCartItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'store_total_items') final  int? storeTotalItems;
@override@JsonKey(name: 'store_total_price') final  double? storeTotalPrice;

/// Create a copy of CheckoutCartStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCartStoreCopyWith<_CheckoutCartStore> get copyWith => __$CheckoutCartStoreCopyWithImpl<_CheckoutCartStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutCartStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCartStore&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeLogo, storeLogo) || other.storeLogo == storeLogo)&&(identical(other.storeAddress, storeAddress) || other.storeAddress == storeAddress)&&(identical(other.storePhone, storePhone) || other.storePhone == storePhone)&&(identical(other.storeMinimumOrder, storeMinimumOrder) || other.storeMinimumOrder == storeMinimumOrder)&&(identical(other.storeDeliveryTime, storeDeliveryTime) || other.storeDeliveryTime == storeDeliveryTime)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.storeTotalItems, storeTotalItems) || other.storeTotalItems == storeTotalItems)&&(identical(other.storeTotalPrice, storeTotalPrice) || other.storeTotalPrice == storeTotalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,storeLogo,storeAddress,storePhone,storeMinimumOrder,storeDeliveryTime,const DeepCollectionEquality().hash(_items),storeTotalItems,storeTotalPrice);

@override
String toString() {
  return 'CheckoutCartStore(storeId: $storeId, storeName: $storeName, storeLogo: $storeLogo, storeAddress: $storeAddress, storePhone: $storePhone, storeMinimumOrder: $storeMinimumOrder, storeDeliveryTime: $storeDeliveryTime, items: $items, storeTotalItems: $storeTotalItems, storeTotalPrice: $storeTotalPrice)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCartStoreCopyWith<$Res> implements $CheckoutCartStoreCopyWith<$Res> {
  factory _$CheckoutCartStoreCopyWith(_CheckoutCartStore value, $Res Function(_CheckoutCartStore) _then) = __$CheckoutCartStoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') int? storeId,@JsonKey(name: 'store_name') String? storeName,@JsonKey(name: 'store_logo') String? storeLogo,@JsonKey(name: 'store_address') String? storeAddress,@JsonKey(name: 'store_phone') String? storePhone,@JsonKey(name: 'store_minimum_order') int? storeMinimumOrder,@JsonKey(name: 'store_delivery_time') String? storeDeliveryTime,@JsonKey(name: 'items') List<CheckoutCartItem>? items,@JsonKey(name: 'store_total_items') int? storeTotalItems,@JsonKey(name: 'store_total_price') double? storeTotalPrice
});




}
/// @nodoc
class __$CheckoutCartStoreCopyWithImpl<$Res>
    implements _$CheckoutCartStoreCopyWith<$Res> {
  __$CheckoutCartStoreCopyWithImpl(this._self, this._then);

  final _CheckoutCartStore _self;
  final $Res Function(_CheckoutCartStore) _then;

/// Create a copy of CheckoutCartStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = freezed,Object? storeName = freezed,Object? storeLogo = freezed,Object? storeAddress = freezed,Object? storePhone = freezed,Object? storeMinimumOrder = freezed,Object? storeDeliveryTime = freezed,Object? items = freezed,Object? storeTotalItems = freezed,Object? storeTotalPrice = freezed,}) {
  return _then(_CheckoutCartStore(
storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,storeLogo: freezed == storeLogo ? _self.storeLogo : storeLogo // ignore: cast_nullable_to_non_nullable
as String?,storeAddress: freezed == storeAddress ? _self.storeAddress : storeAddress // ignore: cast_nullable_to_non_nullable
as String?,storePhone: freezed == storePhone ? _self.storePhone : storePhone // ignore: cast_nullable_to_non_nullable
as String?,storeMinimumOrder: freezed == storeMinimumOrder ? _self.storeMinimumOrder : storeMinimumOrder // ignore: cast_nullable_to_non_nullable
as int?,storeDeliveryTime: freezed == storeDeliveryTime ? _self.storeDeliveryTime : storeDeliveryTime // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartItem>?,storeTotalItems: freezed == storeTotalItems ? _self.storeTotalItems : storeTotalItems // ignore: cast_nullable_to_non_nullable
as int?,storeTotalPrice: freezed == storeTotalPrice ? _self.storeTotalPrice : storeTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CheckoutCartItem {

@JsonKey(name: 'cart_id') int? get cartId;@JsonKey(name: 'item_id') int? get itemId;@JsonKey(name: 'item_type') String? get itemType;@JsonKey(name: 'item_name') String? get itemName;@JsonKey(name: 'item_image') String? get itemImage;@JsonKey(name: 'item_price') double? get itemPrice;@JsonKey(name: 'item_original_price') double? get itemOriginalPrice;@JsonKey(name: 'item_discount') int? get itemDiscount;@JsonKey(name: 'item_discount_type') String? get itemDiscountType;@JsonKey(name: 'item_quantity') int? get itemQuantity;@JsonKey(name: 'item_total_price') double? get itemTotalPrice;@JsonKey(name: 'item_variation') List<CheckoutCartItemVariation>? get itemVariation;@JsonKey(name: 'item_add_ons') List<dynamic>? get itemAddOns;@JsonKey(name: 'item_add_on_quantities') List<dynamic>? get itemAddOnQuantities;@JsonKey(name: 'item_description') String? get itemDescription;@JsonKey(name: 'item_category') CheckoutCartItemCategory? get itemCategory;@JsonKey(name: 'item_available') int? get itemAvailable;@JsonKey(name: 'item_maximum_cart_quantity') dynamic get itemMaximumCartQuantity;@JsonKey(name: 'is_favorite') bool? get isFavorite;
/// Create a copy of CheckoutCartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCartItemCopyWith<CheckoutCartItem> get copyWith => _$CheckoutCartItemCopyWithImpl<CheckoutCartItem>(this as CheckoutCartItem, _$identity);

  /// Serializes this CheckoutCartItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCartItem&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemImage, itemImage) || other.itemImage == itemImage)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemOriginalPrice, itemOriginalPrice) || other.itemOriginalPrice == itemOriginalPrice)&&(identical(other.itemDiscount, itemDiscount) || other.itemDiscount == itemDiscount)&&(identical(other.itemDiscountType, itemDiscountType) || other.itemDiscountType == itemDiscountType)&&(identical(other.itemQuantity, itemQuantity) || other.itemQuantity == itemQuantity)&&(identical(other.itemTotalPrice, itemTotalPrice) || other.itemTotalPrice == itemTotalPrice)&&const DeepCollectionEquality().equals(other.itemVariation, itemVariation)&&const DeepCollectionEquality().equals(other.itemAddOns, itemAddOns)&&const DeepCollectionEquality().equals(other.itemAddOnQuantities, itemAddOnQuantities)&&(identical(other.itemDescription, itemDescription) || other.itemDescription == itemDescription)&&(identical(other.itemCategory, itemCategory) || other.itemCategory == itemCategory)&&(identical(other.itemAvailable, itemAvailable) || other.itemAvailable == itemAvailable)&&const DeepCollectionEquality().equals(other.itemMaximumCartQuantity, itemMaximumCartQuantity)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,cartId,itemId,itemType,itemName,itemImage,itemPrice,itemOriginalPrice,itemDiscount,itemDiscountType,itemQuantity,itemTotalPrice,const DeepCollectionEquality().hash(itemVariation),const DeepCollectionEquality().hash(itemAddOns),const DeepCollectionEquality().hash(itemAddOnQuantities),itemDescription,itemCategory,itemAvailable,const DeepCollectionEquality().hash(itemMaximumCartQuantity),isFavorite]);

@override
String toString() {
  return 'CheckoutCartItem(cartId: $cartId, itemId: $itemId, itemType: $itemType, itemName: $itemName, itemImage: $itemImage, itemPrice: $itemPrice, itemOriginalPrice: $itemOriginalPrice, itemDiscount: $itemDiscount, itemDiscountType: $itemDiscountType, itemQuantity: $itemQuantity, itemTotalPrice: $itemTotalPrice, itemVariation: $itemVariation, itemAddOns: $itemAddOns, itemAddOnQuantities: $itemAddOnQuantities, itemDescription: $itemDescription, itemCategory: $itemCategory, itemAvailable: $itemAvailable, itemMaximumCartQuantity: $itemMaximumCartQuantity, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $CheckoutCartItemCopyWith<$Res>  {
  factory $CheckoutCartItemCopyWith(CheckoutCartItem value, $Res Function(CheckoutCartItem) _then) = _$CheckoutCartItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cart_id') int? cartId,@JsonKey(name: 'item_id') int? itemId,@JsonKey(name: 'item_type') String? itemType,@JsonKey(name: 'item_name') String? itemName,@JsonKey(name: 'item_image') String? itemImage,@JsonKey(name: 'item_price') double? itemPrice,@JsonKey(name: 'item_original_price') double? itemOriginalPrice,@JsonKey(name: 'item_discount') int? itemDiscount,@JsonKey(name: 'item_discount_type') String? itemDiscountType,@JsonKey(name: 'item_quantity') int? itemQuantity,@JsonKey(name: 'item_total_price') double? itemTotalPrice,@JsonKey(name: 'item_variation') List<CheckoutCartItemVariation>? itemVariation,@JsonKey(name: 'item_add_ons') List<dynamic>? itemAddOns,@JsonKey(name: 'item_add_on_quantities') List<dynamic>? itemAddOnQuantities,@JsonKey(name: 'item_description') String? itemDescription,@JsonKey(name: 'item_category') CheckoutCartItemCategory? itemCategory,@JsonKey(name: 'item_available') int? itemAvailable,@JsonKey(name: 'item_maximum_cart_quantity') dynamic itemMaximumCartQuantity,@JsonKey(name: 'is_favorite') bool? isFavorite
});


$CheckoutCartItemCategoryCopyWith<$Res>? get itemCategory;

}
/// @nodoc
class _$CheckoutCartItemCopyWithImpl<$Res>
    implements $CheckoutCartItemCopyWith<$Res> {
  _$CheckoutCartItemCopyWithImpl(this._self, this._then);

  final CheckoutCartItem _self;
  final $Res Function(CheckoutCartItem) _then;

/// Create a copy of CheckoutCartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartId = freezed,Object? itemId = freezed,Object? itemType = freezed,Object? itemName = freezed,Object? itemImage = freezed,Object? itemPrice = freezed,Object? itemOriginalPrice = freezed,Object? itemDiscount = freezed,Object? itemDiscountType = freezed,Object? itemQuantity = freezed,Object? itemTotalPrice = freezed,Object? itemVariation = freezed,Object? itemAddOns = freezed,Object? itemAddOnQuantities = freezed,Object? itemDescription = freezed,Object? itemCategory = freezed,Object? itemAvailable = freezed,Object? itemMaximumCartQuantity = freezed,Object? isFavorite = freezed,}) {
  return _then(_self.copyWith(
cartId: freezed == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,itemType: freezed == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,itemImage: freezed == itemImage ? _self.itemImage : itemImage // ignore: cast_nullable_to_non_nullable
as String?,itemPrice: freezed == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double?,itemOriginalPrice: freezed == itemOriginalPrice ? _self.itemOriginalPrice : itemOriginalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemDiscount: freezed == itemDiscount ? _self.itemDiscount : itemDiscount // ignore: cast_nullable_to_non_nullable
as int?,itemDiscountType: freezed == itemDiscountType ? _self.itemDiscountType : itemDiscountType // ignore: cast_nullable_to_non_nullable
as String?,itemQuantity: freezed == itemQuantity ? _self.itemQuantity : itemQuantity // ignore: cast_nullable_to_non_nullable
as int?,itemTotalPrice: freezed == itemTotalPrice ? _self.itemTotalPrice : itemTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemVariation: freezed == itemVariation ? _self.itemVariation : itemVariation // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartItemVariation>?,itemAddOns: freezed == itemAddOns ? _self.itemAddOns : itemAddOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemAddOnQuantities: freezed == itemAddOnQuantities ? _self.itemAddOnQuantities : itemAddOnQuantities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemDescription: freezed == itemDescription ? _self.itemDescription : itemDescription // ignore: cast_nullable_to_non_nullable
as String?,itemCategory: freezed == itemCategory ? _self.itemCategory : itemCategory // ignore: cast_nullable_to_non_nullable
as CheckoutCartItemCategory?,itemAvailable: freezed == itemAvailable ? _self.itemAvailable : itemAvailable // ignore: cast_nullable_to_non_nullable
as int?,itemMaximumCartQuantity: freezed == itemMaximumCartQuantity ? _self.itemMaximumCartQuantity : itemMaximumCartQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of CheckoutCartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutCartItemCategoryCopyWith<$Res>? get itemCategory {
    if (_self.itemCategory == null) {
    return null;
  }

  return $CheckoutCartItemCategoryCopyWith<$Res>(_self.itemCategory!, (value) {
    return _then(_self.copyWith(itemCategory: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CheckoutCartItem implements CheckoutCartItem {
  const _CheckoutCartItem({@JsonKey(name: 'cart_id') this.cartId, @JsonKey(name: 'item_id') this.itemId, @JsonKey(name: 'item_type') this.itemType, @JsonKey(name: 'item_name') this.itemName, @JsonKey(name: 'item_image') this.itemImage, @JsonKey(name: 'item_price') this.itemPrice, @JsonKey(name: 'item_original_price') this.itemOriginalPrice, @JsonKey(name: 'item_discount') this.itemDiscount, @JsonKey(name: 'item_discount_type') this.itemDiscountType, @JsonKey(name: 'item_quantity') this.itemQuantity, @JsonKey(name: 'item_total_price') this.itemTotalPrice, @JsonKey(name: 'item_variation') final  List<CheckoutCartItemVariation>? itemVariation, @JsonKey(name: 'item_add_ons') final  List<dynamic>? itemAddOns, @JsonKey(name: 'item_add_on_quantities') final  List<dynamic>? itemAddOnQuantities, @JsonKey(name: 'item_description') this.itemDescription, @JsonKey(name: 'item_category') this.itemCategory, @JsonKey(name: 'item_available') this.itemAvailable, @JsonKey(name: 'item_maximum_cart_quantity') this.itemMaximumCartQuantity, @JsonKey(name: 'is_favorite') this.isFavorite}): _itemVariation = itemVariation,_itemAddOns = itemAddOns,_itemAddOnQuantities = itemAddOnQuantities;
  factory _CheckoutCartItem.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemFromJson(json);

@override@JsonKey(name: 'cart_id') final  int? cartId;
@override@JsonKey(name: 'item_id') final  int? itemId;
@override@JsonKey(name: 'item_type') final  String? itemType;
@override@JsonKey(name: 'item_name') final  String? itemName;
@override@JsonKey(name: 'item_image') final  String? itemImage;
@override@JsonKey(name: 'item_price') final  double? itemPrice;
@override@JsonKey(name: 'item_original_price') final  double? itemOriginalPrice;
@override@JsonKey(name: 'item_discount') final  int? itemDiscount;
@override@JsonKey(name: 'item_discount_type') final  String? itemDiscountType;
@override@JsonKey(name: 'item_quantity') final  int? itemQuantity;
@override@JsonKey(name: 'item_total_price') final  double? itemTotalPrice;
 final  List<CheckoutCartItemVariation>? _itemVariation;
@override@JsonKey(name: 'item_variation') List<CheckoutCartItemVariation>? get itemVariation {
  final value = _itemVariation;
  if (value == null) return null;
  if (_itemVariation is EqualUnmodifiableListView) return _itemVariation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _itemAddOns;
@override@JsonKey(name: 'item_add_ons') List<dynamic>? get itemAddOns {
  final value = _itemAddOns;
  if (value == null) return null;
  if (_itemAddOns is EqualUnmodifiableListView) return _itemAddOns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _itemAddOnQuantities;
@override@JsonKey(name: 'item_add_on_quantities') List<dynamic>? get itemAddOnQuantities {
  final value = _itemAddOnQuantities;
  if (value == null) return null;
  if (_itemAddOnQuantities is EqualUnmodifiableListView) return _itemAddOnQuantities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'item_description') final  String? itemDescription;
@override@JsonKey(name: 'item_category') final  CheckoutCartItemCategory? itemCategory;
@override@JsonKey(name: 'item_available') final  int? itemAvailable;
@override@JsonKey(name: 'item_maximum_cart_quantity') final  dynamic itemMaximumCartQuantity;
@override@JsonKey(name: 'is_favorite') final  bool? isFavorite;

/// Create a copy of CheckoutCartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCartItemCopyWith<_CheckoutCartItem> get copyWith => __$CheckoutCartItemCopyWithImpl<_CheckoutCartItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutCartItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCartItem&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemImage, itemImage) || other.itemImage == itemImage)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemOriginalPrice, itemOriginalPrice) || other.itemOriginalPrice == itemOriginalPrice)&&(identical(other.itemDiscount, itemDiscount) || other.itemDiscount == itemDiscount)&&(identical(other.itemDiscountType, itemDiscountType) || other.itemDiscountType == itemDiscountType)&&(identical(other.itemQuantity, itemQuantity) || other.itemQuantity == itemQuantity)&&(identical(other.itemTotalPrice, itemTotalPrice) || other.itemTotalPrice == itemTotalPrice)&&const DeepCollectionEquality().equals(other._itemVariation, _itemVariation)&&const DeepCollectionEquality().equals(other._itemAddOns, _itemAddOns)&&const DeepCollectionEquality().equals(other._itemAddOnQuantities, _itemAddOnQuantities)&&(identical(other.itemDescription, itemDescription) || other.itemDescription == itemDescription)&&(identical(other.itemCategory, itemCategory) || other.itemCategory == itemCategory)&&(identical(other.itemAvailable, itemAvailable) || other.itemAvailable == itemAvailable)&&const DeepCollectionEquality().equals(other.itemMaximumCartQuantity, itemMaximumCartQuantity)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,cartId,itemId,itemType,itemName,itemImage,itemPrice,itemOriginalPrice,itemDiscount,itemDiscountType,itemQuantity,itemTotalPrice,const DeepCollectionEquality().hash(_itemVariation),const DeepCollectionEquality().hash(_itemAddOns),const DeepCollectionEquality().hash(_itemAddOnQuantities),itemDescription,itemCategory,itemAvailable,const DeepCollectionEquality().hash(itemMaximumCartQuantity),isFavorite]);

@override
String toString() {
  return 'CheckoutCartItem(cartId: $cartId, itemId: $itemId, itemType: $itemType, itemName: $itemName, itemImage: $itemImage, itemPrice: $itemPrice, itemOriginalPrice: $itemOriginalPrice, itemDiscount: $itemDiscount, itemDiscountType: $itemDiscountType, itemQuantity: $itemQuantity, itemTotalPrice: $itemTotalPrice, itemVariation: $itemVariation, itemAddOns: $itemAddOns, itemAddOnQuantities: $itemAddOnQuantities, itemDescription: $itemDescription, itemCategory: $itemCategory, itemAvailable: $itemAvailable, itemMaximumCartQuantity: $itemMaximumCartQuantity, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCartItemCopyWith<$Res> implements $CheckoutCartItemCopyWith<$Res> {
  factory _$CheckoutCartItemCopyWith(_CheckoutCartItem value, $Res Function(_CheckoutCartItem) _then) = __$CheckoutCartItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cart_id') int? cartId,@JsonKey(name: 'item_id') int? itemId,@JsonKey(name: 'item_type') String? itemType,@JsonKey(name: 'item_name') String? itemName,@JsonKey(name: 'item_image') String? itemImage,@JsonKey(name: 'item_price') double? itemPrice,@JsonKey(name: 'item_original_price') double? itemOriginalPrice,@JsonKey(name: 'item_discount') int? itemDiscount,@JsonKey(name: 'item_discount_type') String? itemDiscountType,@JsonKey(name: 'item_quantity') int? itemQuantity,@JsonKey(name: 'item_total_price') double? itemTotalPrice,@JsonKey(name: 'item_variation') List<CheckoutCartItemVariation>? itemVariation,@JsonKey(name: 'item_add_ons') List<dynamic>? itemAddOns,@JsonKey(name: 'item_add_on_quantities') List<dynamic>? itemAddOnQuantities,@JsonKey(name: 'item_description') String? itemDescription,@JsonKey(name: 'item_category') CheckoutCartItemCategory? itemCategory,@JsonKey(name: 'item_available') int? itemAvailable,@JsonKey(name: 'item_maximum_cart_quantity') dynamic itemMaximumCartQuantity,@JsonKey(name: 'is_favorite') bool? isFavorite
});


@override $CheckoutCartItemCategoryCopyWith<$Res>? get itemCategory;

}
/// @nodoc
class __$CheckoutCartItemCopyWithImpl<$Res>
    implements _$CheckoutCartItemCopyWith<$Res> {
  __$CheckoutCartItemCopyWithImpl(this._self, this._then);

  final _CheckoutCartItem _self;
  final $Res Function(_CheckoutCartItem) _then;

/// Create a copy of CheckoutCartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartId = freezed,Object? itemId = freezed,Object? itemType = freezed,Object? itemName = freezed,Object? itemImage = freezed,Object? itemPrice = freezed,Object? itemOriginalPrice = freezed,Object? itemDiscount = freezed,Object? itemDiscountType = freezed,Object? itemQuantity = freezed,Object? itemTotalPrice = freezed,Object? itemVariation = freezed,Object? itemAddOns = freezed,Object? itemAddOnQuantities = freezed,Object? itemDescription = freezed,Object? itemCategory = freezed,Object? itemAvailable = freezed,Object? itemMaximumCartQuantity = freezed,Object? isFavorite = freezed,}) {
  return _then(_CheckoutCartItem(
cartId: freezed == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,itemType: freezed == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,itemImage: freezed == itemImage ? _self.itemImage : itemImage // ignore: cast_nullable_to_non_nullable
as String?,itemPrice: freezed == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double?,itemOriginalPrice: freezed == itemOriginalPrice ? _self.itemOriginalPrice : itemOriginalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemDiscount: freezed == itemDiscount ? _self.itemDiscount : itemDiscount // ignore: cast_nullable_to_non_nullable
as int?,itemDiscountType: freezed == itemDiscountType ? _self.itemDiscountType : itemDiscountType // ignore: cast_nullable_to_non_nullable
as String?,itemQuantity: freezed == itemQuantity ? _self.itemQuantity : itemQuantity // ignore: cast_nullable_to_non_nullable
as int?,itemTotalPrice: freezed == itemTotalPrice ? _self.itemTotalPrice : itemTotalPrice // ignore: cast_nullable_to_non_nullable
as double?,itemVariation: freezed == itemVariation ? _self._itemVariation : itemVariation // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartItemVariation>?,itemAddOns: freezed == itemAddOns ? _self._itemAddOns : itemAddOns // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemAddOnQuantities: freezed == itemAddOnQuantities ? _self._itemAddOnQuantities : itemAddOnQuantities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,itemDescription: freezed == itemDescription ? _self.itemDescription : itemDescription // ignore: cast_nullable_to_non_nullable
as String?,itemCategory: freezed == itemCategory ? _self.itemCategory : itemCategory // ignore: cast_nullable_to_non_nullable
as CheckoutCartItemCategory?,itemAvailable: freezed == itemAvailable ? _self.itemAvailable : itemAvailable // ignore: cast_nullable_to_non_nullable
as int?,itemMaximumCartQuantity: freezed == itemMaximumCartQuantity ? _self.itemMaximumCartQuantity : itemMaximumCartQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of CheckoutCartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutCartItemCategoryCopyWith<$Res>? get itemCategory {
    if (_self.itemCategory == null) {
    return null;
  }

  return $CheckoutCartItemCategoryCopyWith<$Res>(_self.itemCategory!, (value) {
    return _then(_self.copyWith(itemCategory: value));
  });
}
}


/// @nodoc
mixin _$CheckoutCartItemCategory {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'parent_id') int? get parentId;@JsonKey(name: 'position') int? get position;@JsonKey(name: 'status') int? get status;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'priority') int? get priority;@JsonKey(name: 'module_id') int? get moduleId;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'featured') int? get featured;@JsonKey(name: 'image_full_url') String? get imageFullUrl;@JsonKey(name: 'storage') List<dynamic>? get storage;@JsonKey(name: 'translations') List<dynamic>? get translations;
/// Create a copy of CheckoutCartItemCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCartItemCategoryCopyWith<CheckoutCartItemCategory> get copyWith => _$CheckoutCartItemCategoryCopyWithImpl<CheckoutCartItemCategory>(this as CheckoutCartItemCategory, _$identity);

  /// Serializes this CheckoutCartItemCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCartItemCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&const DeepCollectionEquality().equals(other.storage, storage)&&const DeepCollectionEquality().equals(other.translations, translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,parentId,position,status,createdAt,updatedAt,priority,moduleId,slug,featured,imageFullUrl,const DeepCollectionEquality().hash(storage),const DeepCollectionEquality().hash(translations));

@override
String toString() {
  return 'CheckoutCartItemCategory(id: $id, name: $name, image: $image, parentId: $parentId, position: $position, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, priority: $priority, moduleId: $moduleId, slug: $slug, featured: $featured, imageFullUrl: $imageFullUrl, storage: $storage, translations: $translations)';
}


}

/// @nodoc
abstract mixin class $CheckoutCartItemCategoryCopyWith<$Res>  {
  factory $CheckoutCartItemCategoryCopyWith(CheckoutCartItemCategory value, $Res Function(CheckoutCartItemCategory) _then) = _$CheckoutCartItemCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image,@JsonKey(name: 'parent_id') int? parentId,@JsonKey(name: 'position') int? position,@JsonKey(name: 'status') int? status,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'priority') int? priority,@JsonKey(name: 'module_id') int? moduleId,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'featured') int? featured,@JsonKey(name: 'image_full_url') String? imageFullUrl,@JsonKey(name: 'storage') List<dynamic>? storage,@JsonKey(name: 'translations') List<dynamic>? translations
});




}
/// @nodoc
class _$CheckoutCartItemCategoryCopyWithImpl<$Res>
    implements $CheckoutCartItemCategoryCopyWith<$Res> {
  _$CheckoutCartItemCategoryCopyWithImpl(this._self, this._then);

  final CheckoutCartItemCategory _self;
  final $Res Function(CheckoutCartItemCategory) _then;

/// Create a copy of CheckoutCartItemCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? parentId = freezed,Object? position = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? priority = freezed,Object? moduleId = freezed,Object? slug = freezed,Object? featured = freezed,Object? imageFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CheckoutCartItemCategory implements CheckoutCartItemCategory {
  const _CheckoutCartItemCategory({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'image') this.image, @JsonKey(name: 'parent_id') this.parentId, @JsonKey(name: 'position') this.position, @JsonKey(name: 'status') this.status, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'priority') this.priority, @JsonKey(name: 'module_id') this.moduleId, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'featured') this.featured, @JsonKey(name: 'image_full_url') this.imageFullUrl, @JsonKey(name: 'storage') final  List<dynamic>? storage, @JsonKey(name: 'translations') final  List<dynamic>? translations}): _storage = storage,_translations = translations;
  factory _CheckoutCartItemCategory.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemCategoryFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'parent_id') final  int? parentId;
@override@JsonKey(name: 'position') final  int? position;
@override@JsonKey(name: 'status') final  int? status;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'priority') final  int? priority;
@override@JsonKey(name: 'module_id') final  int? moduleId;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'featured') final  int? featured;
@override@JsonKey(name: 'image_full_url') final  String? imageFullUrl;
 final  List<dynamic>? _storage;
@override@JsonKey(name: 'storage') List<dynamic>? get storage {
  final value = _storage;
  if (value == null) return null;
  if (_storage is EqualUnmodifiableListView) return _storage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _translations;
@override@JsonKey(name: 'translations') List<dynamic>? get translations {
  final value = _translations;
  if (value == null) return null;
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CheckoutCartItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCartItemCategoryCopyWith<_CheckoutCartItemCategory> get copyWith => __$CheckoutCartItemCategoryCopyWithImpl<_CheckoutCartItemCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutCartItemCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCartItemCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.imageFullUrl, imageFullUrl) || other.imageFullUrl == imageFullUrl)&&const DeepCollectionEquality().equals(other._storage, _storage)&&const DeepCollectionEquality().equals(other._translations, _translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,parentId,position,status,createdAt,updatedAt,priority,moduleId,slug,featured,imageFullUrl,const DeepCollectionEquality().hash(_storage),const DeepCollectionEquality().hash(_translations));

@override
String toString() {
  return 'CheckoutCartItemCategory(id: $id, name: $name, image: $image, parentId: $parentId, position: $position, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, priority: $priority, moduleId: $moduleId, slug: $slug, featured: $featured, imageFullUrl: $imageFullUrl, storage: $storage, translations: $translations)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCartItemCategoryCopyWith<$Res> implements $CheckoutCartItemCategoryCopyWith<$Res> {
  factory _$CheckoutCartItemCategoryCopyWith(_CheckoutCartItemCategory value, $Res Function(_CheckoutCartItemCategory) _then) = __$CheckoutCartItemCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image,@JsonKey(name: 'parent_id') int? parentId,@JsonKey(name: 'position') int? position,@JsonKey(name: 'status') int? status,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'priority') int? priority,@JsonKey(name: 'module_id') int? moduleId,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'featured') int? featured,@JsonKey(name: 'image_full_url') String? imageFullUrl,@JsonKey(name: 'storage') List<dynamic>? storage,@JsonKey(name: 'translations') List<dynamic>? translations
});




}
/// @nodoc
class __$CheckoutCartItemCategoryCopyWithImpl<$Res>
    implements _$CheckoutCartItemCategoryCopyWith<$Res> {
  __$CheckoutCartItemCategoryCopyWithImpl(this._self, this._then);

  final _CheckoutCartItemCategory _self;
  final $Res Function(_CheckoutCartItemCategory) _then;

/// Create a copy of CheckoutCartItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? parentId = freezed,Object? position = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? priority = freezed,Object? moduleId = freezed,Object? slug = freezed,Object? featured = freezed,Object? imageFullUrl = freezed,Object? storage = freezed,Object? translations = freezed,}) {
  return _then(_CheckoutCartItemCategory(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as int?,imageFullUrl: freezed == imageFullUrl ? _self.imageFullUrl : imageFullUrl // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self._storage : storage // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,translations: freezed == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}


/// @nodoc
mixin _$CheckoutCartItemVariation {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'values') List<CheckoutCartItemValue>? get values;@JsonKey(name: 'type') String? get type;
/// Create a copy of CheckoutCartItemVariation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCartItemVariationCopyWith<CheckoutCartItemVariation> get copyWith => _$CheckoutCartItemVariationCopyWithImpl<CheckoutCartItemVariation>(this as CheckoutCartItemVariation, _$identity);

  /// Serializes this CheckoutCartItemVariation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCartItemVariation&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(values),type);

@override
String toString() {
  return 'CheckoutCartItemVariation(name: $name, values: $values, type: $type)';
}


}

/// @nodoc
abstract mixin class $CheckoutCartItemVariationCopyWith<$Res>  {
  factory $CheckoutCartItemVariationCopyWith(CheckoutCartItemVariation value, $Res Function(CheckoutCartItemVariation) _then) = _$CheckoutCartItemVariationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'values') List<CheckoutCartItemValue>? values,@JsonKey(name: 'type') String? type
});




}
/// @nodoc
class _$CheckoutCartItemVariationCopyWithImpl<$Res>
    implements $CheckoutCartItemVariationCopyWith<$Res> {
  _$CheckoutCartItemVariationCopyWithImpl(this._self, this._then);

  final CheckoutCartItemVariation _self;
  final $Res Function(CheckoutCartItemVariation) _then;

/// Create a copy of CheckoutCartItemVariation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? values = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartItemValue>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CheckoutCartItemVariation implements CheckoutCartItemVariation {
  const _CheckoutCartItemVariation({@JsonKey(name: 'name') this.name, @JsonKey(name: 'values') final  List<CheckoutCartItemValue>? values, @JsonKey(name: 'type') this.type}): _values = values;
  factory _CheckoutCartItemVariation.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemVariationFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
 final  List<CheckoutCartItemValue>? _values;
@override@JsonKey(name: 'values') List<CheckoutCartItemValue>? get values {
  final value = _values;
  if (value == null) return null;
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'type') final  String? type;

/// Create a copy of CheckoutCartItemVariation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCartItemVariationCopyWith<_CheckoutCartItemVariation> get copyWith => __$CheckoutCartItemVariationCopyWithImpl<_CheckoutCartItemVariation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutCartItemVariationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCartItemVariation&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_values),type);

@override
String toString() {
  return 'CheckoutCartItemVariation(name: $name, values: $values, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCartItemVariationCopyWith<$Res> implements $CheckoutCartItemVariationCopyWith<$Res> {
  factory _$CheckoutCartItemVariationCopyWith(_CheckoutCartItemVariation value, $Res Function(_CheckoutCartItemVariation) _then) = __$CheckoutCartItemVariationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'values') List<CheckoutCartItemValue>? values,@JsonKey(name: 'type') String? type
});




}
/// @nodoc
class __$CheckoutCartItemVariationCopyWithImpl<$Res>
    implements _$CheckoutCartItemVariationCopyWith<$Res> {
  __$CheckoutCartItemVariationCopyWithImpl(this._self, this._then);

  final _CheckoutCartItemVariation _self;
  final $Res Function(_CheckoutCartItemVariation) _then;

/// Create a copy of CheckoutCartItemVariation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? values = freezed,Object? type = freezed,}) {
  return _then(_CheckoutCartItemVariation(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<CheckoutCartItemValue>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CheckoutCartItemValue {

@JsonKey(name: 'label') String? get label;
/// Create a copy of CheckoutCartItemValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCartItemValueCopyWith<CheckoutCartItemValue> get copyWith => _$CheckoutCartItemValueCopyWithImpl<CheckoutCartItemValue>(this as CheckoutCartItemValue, _$identity);

  /// Serializes this CheckoutCartItemValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCartItemValue&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'CheckoutCartItemValue(label: $label)';
}


}

/// @nodoc
abstract mixin class $CheckoutCartItemValueCopyWith<$Res>  {
  factory $CheckoutCartItemValueCopyWith(CheckoutCartItemValue value, $Res Function(CheckoutCartItemValue) _then) = _$CheckoutCartItemValueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'label') String? label
});




}
/// @nodoc
class _$CheckoutCartItemValueCopyWithImpl<$Res>
    implements $CheckoutCartItemValueCopyWith<$Res> {
  _$CheckoutCartItemValueCopyWithImpl(this._self, this._then);

  final CheckoutCartItemValue _self;
  final $Res Function(CheckoutCartItemValue) _then;

/// Create a copy of CheckoutCartItemValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CheckoutCartItemValue implements CheckoutCartItemValue {
  const _CheckoutCartItemValue({@JsonKey(name: 'label') this.label});
  factory _CheckoutCartItemValue.fromJson(Map<String, dynamic> json) => _$CheckoutCartItemValueFromJson(json);

@override@JsonKey(name: 'label') final  String? label;

/// Create a copy of CheckoutCartItemValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCartItemValueCopyWith<_CheckoutCartItemValue> get copyWith => __$CheckoutCartItemValueCopyWithImpl<_CheckoutCartItemValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutCartItemValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCartItemValue&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'CheckoutCartItemValue(label: $label)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCartItemValueCopyWith<$Res> implements $CheckoutCartItemValueCopyWith<$Res> {
  factory _$CheckoutCartItemValueCopyWith(_CheckoutCartItemValue value, $Res Function(_CheckoutCartItemValue) _then) = __$CheckoutCartItemValueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'label') String? label
});




}
/// @nodoc
class __$CheckoutCartItemValueCopyWithImpl<$Res>
    implements _$CheckoutCartItemValueCopyWith<$Res> {
  __$CheckoutCartItemValueCopyWithImpl(this._self, this._then);

  final _CheckoutCartItemValue _self;
  final $Res Function(_CheckoutCartItemValue) _then;

/// Create a copy of CheckoutCartItemValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,}) {
  return _then(_CheckoutCartItemValue(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CheckoutCartSummary {

@JsonKey(name: 'total_stores') int? get totalStores;@JsonKey(name: 'total_items') int? get totalItems;@JsonKey(name: 'total_price') double? get totalPrice;
/// Create a copy of CheckoutCartSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCartSummaryCopyWith<CheckoutCartSummary> get copyWith => _$CheckoutCartSummaryCopyWithImpl<CheckoutCartSummary>(this as CheckoutCartSummary, _$identity);

  /// Serializes this CheckoutCartSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCartSummary&&(identical(other.totalStores, totalStores) || other.totalStores == totalStores)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStores,totalItems,totalPrice);

@override
String toString() {
  return 'CheckoutCartSummary(totalStores: $totalStores, totalItems: $totalItems, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $CheckoutCartSummaryCopyWith<$Res>  {
  factory $CheckoutCartSummaryCopyWith(CheckoutCartSummary value, $Res Function(CheckoutCartSummary) _then) = _$CheckoutCartSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_stores') int? totalStores,@JsonKey(name: 'total_items') int? totalItems,@JsonKey(name: 'total_price') double? totalPrice
});




}
/// @nodoc
class _$CheckoutCartSummaryCopyWithImpl<$Res>
    implements $CheckoutCartSummaryCopyWith<$Res> {
  _$CheckoutCartSummaryCopyWithImpl(this._self, this._then);

  final CheckoutCartSummary _self;
  final $Res Function(CheckoutCartSummary) _then;

/// Create a copy of CheckoutCartSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalStores = freezed,Object? totalItems = freezed,Object? totalPrice = freezed,}) {
  return _then(_self.copyWith(
totalStores: freezed == totalStores ? _self.totalStores : totalStores // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CheckoutCartSummary implements CheckoutCartSummary {
  const _CheckoutCartSummary({@JsonKey(name: 'total_stores') this.totalStores, @JsonKey(name: 'total_items') this.totalItems, @JsonKey(name: 'total_price') this.totalPrice});
  factory _CheckoutCartSummary.fromJson(Map<String, dynamic> json) => _$CheckoutCartSummaryFromJson(json);

@override@JsonKey(name: 'total_stores') final  int? totalStores;
@override@JsonKey(name: 'total_items') final  int? totalItems;
@override@JsonKey(name: 'total_price') final  double? totalPrice;

/// Create a copy of CheckoutCartSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCartSummaryCopyWith<_CheckoutCartSummary> get copyWith => __$CheckoutCartSummaryCopyWithImpl<_CheckoutCartSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutCartSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCartSummary&&(identical(other.totalStores, totalStores) || other.totalStores == totalStores)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStores,totalItems,totalPrice);

@override
String toString() {
  return 'CheckoutCartSummary(totalStores: $totalStores, totalItems: $totalItems, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCartSummaryCopyWith<$Res> implements $CheckoutCartSummaryCopyWith<$Res> {
  factory _$CheckoutCartSummaryCopyWith(_CheckoutCartSummary value, $Res Function(_CheckoutCartSummary) _then) = __$CheckoutCartSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_stores') int? totalStores,@JsonKey(name: 'total_items') int? totalItems,@JsonKey(name: 'total_price') double? totalPrice
});




}
/// @nodoc
class __$CheckoutCartSummaryCopyWithImpl<$Res>
    implements _$CheckoutCartSummaryCopyWith<$Res> {
  __$CheckoutCartSummaryCopyWithImpl(this._self, this._then);

  final _CheckoutCartSummary _self;
  final $Res Function(_CheckoutCartSummary) _then;

/// Create a copy of CheckoutCartSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalStores = freezed,Object? totalItems = freezed,Object? totalPrice = freezed,}) {
  return _then(_CheckoutCartSummary(
totalStores: freezed == totalStores ? _self.totalStores : totalStores // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
