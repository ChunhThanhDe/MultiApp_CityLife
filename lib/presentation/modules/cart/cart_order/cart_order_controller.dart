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
  final RxBool isLoadingMore = false.obs;
  final RxString error = ''.obs;
  final int limit = 10;
  int offset = 1;
  bool hasMore = true;

  @override
  void onInit() {
    super.onInit();
    fetchRunningOrders(refresh: true);
  }

  Future<void> refreshOrders() async {
    offset = 1;
    hasMore = true;
    await fetchRunningOrders(refresh: true);
  }

  Future<void> loadMoreOrders() async {
    if (isLoadingMore.value || !hasMore) return;
    isLoadingMore.value = true;
    offset += 1;
    await fetchRunningOrders(refresh: false);
    isLoadingMore.value = false;
  }

  Future<void> fetchRunningOrders({bool refresh = false}) async {
    if (refresh) {
      isLoading.value = true;
      error.value = '';
    }
    final result = await _orderRepository.getRunningOrders(limit: limit, offset: offset);
    if (result is Success) {
      final response = GetOrdersHistoryResponse.fromJson(result.response.data);
      final newOrders = response.orders ?? [];
      if (refresh) {
        runningOrders.value = newOrders;
      } else {
        runningOrders.addAll(newOrders);
      }
      hasMore = newOrders.length == limit;
    } else if (result is Failure) {
      error.value = result.error.toString();
    }
    if (refresh) {
      isLoading.value = false;
    }
  }
}
