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
  orderAmount: (json['order_amount'] as num?)?.toDouble(),
  orderStatus: const OrderStatusConverter().fromJson(
    json['order_status'] as String?,
  ),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  deliveryAddress: json['delivery_address'] == null
      ? null
      : DeliveryAddress.fromJson(
          json['delivery_address'] as Map<String, dynamic>,
        ),
  detailsCount: (json['details_count'] as num?)?.toInt(),
  store: json['store'] == null
      ? null
      : Store.fromJson(json['store'] as Map<String, dynamic>),
  deliveryInstruction: json['delivery_instruction'] as String?,
  orderNote: json['order_note'] as String?,
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': instance.id,
  'order_amount': instance.orderAmount,
  'order_status': _$JsonConverterToJson<String?, OrderStatus>(
    instance.orderStatus,
    const OrderStatusConverter().toJson,
  ),
  'created_at': instance.createdAt?.toIso8601String(),
  'delivery_address': instance.deliveryAddress,
  'details_count': instance.detailsCount,
  'store': instance.store,
  'delivery_instruction': instance.deliveryInstruction,
  'order_note': instance.orderNote,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) =>
    _DeliveryAddress(
      contactPersonName: json['contact_person_name'] as String?,
      contactPersonNumber: json['contact_person_number'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$DeliveryAddressToJson(_DeliveryAddress instance) =>
    <String, dynamic>{
      'contact_person_name': instance.contactPersonName,
      'contact_person_number': instance.contactPersonNumber,
      'address': instance.address,
    };

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  logoFullUrl: json['logo_full_url'] as String?,
  coverPhotoFullUrl: json['cover_photo_full_url'] as String?,
  deliveryTime: json['delivery_time'] as String?,
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'logo_full_url': instance.logoFullUrl,
  'cover_photo_full_url': instance.coverPhotoFullUrl,
  'delivery_time': instance.deliveryTime,
};
