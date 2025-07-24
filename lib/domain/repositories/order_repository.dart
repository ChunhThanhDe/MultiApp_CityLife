import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class OrderApiPath {
  static const String runningOrders = '/api/v1/customer/order/running-orders';
}

class OrderRepository extends BaseRepository {
  Future<ApiResult> getRunningOrders({required int limit, required int offset}) async {
    final params = {'limit': limit, 'offset': offset};
    return handleApiRequest(() => dioClient.get(OrderApiPath.runningOrders, queryParameters: params));
  }
}
