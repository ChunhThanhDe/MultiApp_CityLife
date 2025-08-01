// ignore_for_file: invalid_annotation_target, constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_orders_history_response.freezed.dart';
part '../../../generated/domain/models/response/get_orders_history_response.g.dart';

@freezed
abstract class GetOrdersHistoryResponse with _$GetOrdersHistoryResponse {
  const factory GetOrdersHistoryResponse({
    @JsonKey(name: 'total_size') int? totalSize,
    @JsonKey(name: 'limit') String? limit,
    @JsonKey(name: 'offset') String? offset,
    @JsonKey(name: 'orders') List<Order>? orders,
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
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'order_amount') double? orderAmount,
    @OrderStatusConverter() @JsonKey(name: 'order_status') OrderStatus? orderStatus,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'delivery_address') DeliveryAddress? deliveryAddress,
    @JsonKey(name: 'details_count') int? detailsCount,
    @JsonKey(name: 'store') Store? store,
    @JsonKey(name: 'delivery_instruction') String? deliveryInstruction,
    @JsonKey(name: 'order_note') String? orderNote,
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
        return 'Waiting for confirmation';
      case OrderStatus.accepted:
        return 'Accepted by store';
      case OrderStatus.confirmed:
        return 'Store confirmed';
      case OrderStatus.preparing:
        return 'Preparing your order';
      case OrderStatus.processing:
        return 'Processing your order';
      case OrderStatus.handover:
        return 'Handover to shipper';
      case OrderStatus.picked_up:
        return 'Picked up by shipper';
      case OrderStatus.delivered:
        return 'Delivered';
      case OrderStatus.canceled:
        return 'Canceled';
      case OrderStatus.failed:
        return 'Failed';
    }
  }

  String get en => toString().split('.').last;
}

@freezed
abstract class DeliveryAddress with _$DeliveryAddress {
  const factory DeliveryAddress({
    @JsonKey(name: 'contact_person_name') String? contactPersonName,
    @JsonKey(name: 'contact_person_number') String? contactPersonNumber,
    @JsonKey(name: 'address') String? address,
  }) = _DeliveryAddress;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) => _$DeliveryAddressFromJson(json);
}

// Removed unused Module model

// Removed unused Storage, Translation, Schedule models and related enums

@freezed
abstract class Store with _$Store {
  const factory Store({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'logo_full_url') String? logoFullUrl,
    @JsonKey(name: 'cover_photo_full_url') String? coverPhotoFullUrl,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

// Removed unused EnumValues class
