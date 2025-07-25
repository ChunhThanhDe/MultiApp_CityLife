import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class OrderApiPath {
  static const String runningOrders = '/api/v1/customer/order/running-orders';
  static const String trackOrder = '/api/v1/customer/order/track';
}

class OrderRepository extends BaseRepository {
  Future<ApiResult> getRunningOrders({required int limit, required int offset}) async {
    final params = {'limit': limit, 'offset': offset};
    return handleApiRequest(() => dioClient.get(OrderApiPath.runningOrders, queryParameters: params));
  }

  Future<ApiResult> trackOrder({required int orderId, required String contactNumber}) async {
    final params = {'order_id': orderId, 'contact_number': contactNumber};
    return handleApiRequest(() => dioClient.get(OrderApiPath.trackOrder, queryParameters: params));
  }
}
