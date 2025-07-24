import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_orders_history_response.dart';
import 'package:sixam_mart_user/domain/repositories/order_repository.dart';

class CartOrderController extends BaseController {
  final OrderRepository _orderRepository = OrderRepository();

  final RxList<Order> runningOrders = <Order>[].obs;
  @override
  final RxBool isLoading = false.obs;
  final RxString error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchRunningOrders();
  }

  Future<void> fetchRunningOrders({int limit = 10, int offset = 1}) async {
    isLoading.value = true;
    error.value = '';
    final result = await _orderRepository.getRunningOrders(limit: limit, offset: offset);
    if (result is Success) {
      final response = GetOrdersHistoryResponse.fromJson(result.response.data);
      runningOrders.value = response.orders ?? [];
    } else if (result is Failure) {
      error.value = result.error.toString();
    }
    isLoading.value = false;
  }
}
