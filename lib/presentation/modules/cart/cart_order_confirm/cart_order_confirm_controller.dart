import 'dart:async';

import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class OrderStepData {
  final String iconAsset;
  final String title;
  final String subtitle;
  OrderStepData({required this.iconAsset, required this.title, required this.subtitle});
}

class OrderItem {
  final String imageAsset;
  final String title;
  final String subtitle;
  final double price;
  OrderItem({required this.imageAsset, required this.title, required this.subtitle, required this.price});
}

class CartOrderConfirmController extends BaseController {
  final step = 0.obs;
  Timer? _timer;

  // Các trạng thái order step
  final List<OrderStepData> stepsData = [
    OrderStepData(
      iconAsset: "assets/icons/ic_basket_shopping_check.svg",
      title: "Confirming your order",
      subtitle: "Arrives between 1:20–1:35 PM",
    ),
    OrderStepData(
      iconAsset: "assets/icons/ic_basket_preparing.svg",
      title: "Preparing your order",
      subtitle: "Arrives between 1:20–1:35 PM",
    ),
    OrderStepData(
      iconAsset: "assets/icons/ic_pickup_order.svg",
      title: "Picking up your order",
      subtitle: "Arrives between 1:20–1:35 PM",
    ),
    OrderStepData(
      iconAsset: "assets/icons/ic_enjoy_order.svg",
      title: "Enjoy your order",
      subtitle: "Arrives between 1:28 PM",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (step.value < stepsData.length - 1) {
        step.value += 1;
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
