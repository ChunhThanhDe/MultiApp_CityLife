import 'dart:async';

import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_orders_history_response.dart';
import 'package:sixam_mart_user/domain/repositories/order_repository.dart';

class OrderStepData {
  OrderStepData({required this.iconAsset, required this.title, required this.subtitle});
  final String iconAsset;
  final String title;
  final String subtitle;
}

class OrderItem {
  OrderItem({required this.imageAsset, required this.title, required this.subtitle, required this.price});
  final String imageAsset;
  final String title;
  final String subtitle;
  final double price;
}

class CartOrderConfirmController extends BaseController {
  final OrderRepository _orderRepository = OrderRepository();

  final step = 0.obs;
  final orderData = Rxn<Order>();
  final error = ''.obs;

  Timer? _timer;

  // Order tracking parameters - these should be passed when navigating to this screen
  int? orderId;
  String? contactNumber;

  // Các trạng thái order step
  final List<OrderStepData> stepsData = [
    OrderStepData(iconAsset: 'assets/icons/ic_basket_shopping_check.svg', title: 'Confirming your order', subtitle: 'Arrives between 1:20–1:35 PM'),
    OrderStepData(iconAsset: 'assets/icons/ic_basket_preparing.svg', title: 'Preparing your order', subtitle: 'Arrives between 1:20–1:35 PM'),
    OrderStepData(iconAsset: 'assets/icons/ic_pickup_order.svg', title: 'Picking up your order', subtitle: 'Arrives between 1:20–1:35 PM'),
    OrderStepData(iconAsset: 'assets/icons/ic_enjoy_order.svg', title: 'Enjoy your order', subtitle: 'Arrives between 1:28 PM'),
  ];

  @override
  void onInit() {
    super.onInit();

    // Get parameters from route arguments
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      orderId = arguments['orderId'] as int?;
      contactNumber = arguments['contactNumber'] as String?;
    }

    // Fetch order data if parameters are available
    _fetchOrderData();
  }

  void _startDemoTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (step.value < stepsData.length - 1) {
        step.value += 1;
      } else {
        _timer?.cancel();
      }
    });
  }

  void _fetchOrderData() async {
    if (orderId != null && contactNumber != null) {
      isLoading.value = true;
      error.value = '';

      try {
        final result = await _orderRepository.trackOrder(orderId: orderId!, contactNumber: contactNumber!);

        if (result is Success) {
          final orderData = Order.fromJson(result.response.data);
          this.orderData.value = orderData;
          _updateOrderStep(orderData.orderStatus);
        } else if (result is Failure) {
          error.value = 'Failed to fetch order data';
        }
      } catch (e) {
        error.value = 'An error occurred: $e';
      } finally {
        isLoading.value = false;
      }
    } else {
      // Fallback to demo timer if no order data
      _startDemoTimer();
    }
  }

  void _updateOrderStep(OrderStatus? status) {
    switch (status) {
      case OrderStatus.pending:
      case OrderStatus.accepted:
        step.value = 0;
        break;
      case OrderStatus.confirmed:
      case OrderStatus.preparing:
        step.value = 1;
        break;
      case OrderStatus.processing:
      case OrderStatus.handover:
      case OrderStatus.picked_up:
        step.value = 2;
        break;
      case OrderStatus.delivered:
        step.value = 3;
        break;
      default:
        step.value = 0;
    }
  }

  String get deliveryTime {
    if (orderData.value != null) {
      // Use delivery time from store if available, otherwise use min/max delivery time from order
      final store = orderData.value!.store;
      if (store?.deliveryTime != null && store!.deliveryTime!.isNotEmpty) {
        return store.deliveryTime!;
      }
      // Fallback to default time range
      return '30-60 min';
    }
    return '30-60 min';
  }

  String get deliveryAddress {
    final address = orderData.value?.deliveryAddress;
    if (address?.address != null) {
      return address!.address!;
    }
    return '2216 N 10th St, Apt 0, El Centro, CA 92243';
  }

  String get deliveryInstruction {
    final instruction = orderData.value?.deliveryInstruction;
    if (instruction != null && instruction.toString().isNotEmpty) {
      return instruction.toString();
    }
    return 'Please Hand it to me';
  }

  String get contactPersonName {
    final name = orderData.value?.deliveryAddress?.contactPersonName;
    if (name != null && name.isNotEmpty) {
      return name;
    }
    return 'My Home';
  }

  String get orderNote {
    final note = orderData.value?.orderNote;
    if (note != null && note.isNotEmpty) {
      return note;
    }
    return 'Please Hand it to me';
  }

  List<OrderItem> get orderItems {
    final order = orderData.value;
    if (order?.store != null) {
      return [OrderItem(imageAsset: _getStoreImage(order!.store!.name), title: order.store!.name ?? 'Store', subtitle: '${order.detailsCount ?? 0} items', price: order.orderAmount ?? 0.0)];
    }

    // Fallback demo data
    return [
      OrderItem(imageAsset: 'assets/images/starbucks.png', title: 'Starbucks®', subtitle: '4 items', price: 14.32),
      OrderItem(imageAsset: 'assets/images/mcdonalds.png', title: 'Walmart', subtitle: '11 items', price: 21.55),
    ];
  }

  String _getStoreImage(String? storeName) {
    if (storeName == null) return 'assets/images/starbucks.png';

    final name = storeName.toLowerCase();
    if (name.contains('starbucks')) {
      return 'assets/images/starbucks.png';
    } else if (name.contains('mcdonald')) {
      return 'assets/images/mcdonalds.png';
    } else if (name.contains('walmart')) {
      return 'assets/images/img_walmart.jpg';
    } else if (name.contains('kfc')) {
      return 'assets/images/img_kfc.jpg';
    }
    return 'assets/images/starbucks.png';
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
