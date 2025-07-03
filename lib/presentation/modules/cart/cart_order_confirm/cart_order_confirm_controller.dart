import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

// Data Model
class OrderStepData {
  final String iconAsset;
  final String title;
  final String subtitle;
  final List<OrderDetail> orders;

  OrderStepData({required this.iconAsset, required this.title, required this.subtitle, required this.orders});
}

class OrderDetail {
  final String imageAsset;
  final String title;
  final String subtitle;
  final double price;

  OrderDetail({required this.imageAsset, required this.title, required this.subtitle, required this.price});
}

class CartOrderConfirmController extends BaseController {
  // Bước hiện tại
  final step = 0.obs;

  // Danh sách các bước UI (có thể mở rộng thêm bước nếu muốn)
  final List<OrderStepData> stepsData = [
    OrderStepData(
      iconAsset: "assets/icons/ic_basket_shopping_check.svg",
      title: "Confirming your order",
      subtitle: "Arrives between 1:20–1:35 PM",
      orders: [
        OrderDetail(title: "Starbucks®", subtitle: "4 items", price: 14.32, imageAsset: "assets/images/starbucks.png"),
        OrderDetail(title: "mcdonalds", subtitle: "11 items", price: 21.55, imageAsset: "assets/images/mcdonalds.png"),
      ],
    ),
    OrderStepData(
      iconAsset: "assets/icons/ic_bowl_steam.svg",
      title: "Preparing your order",
      subtitle: "Arrives between 1:20–1:35 PM",
      orders: [
        OrderDetail(title: "Starbucks®", subtitle: "4 items", price: 14.32, imageAsset: "assets/images/starbucks.png"),
        OrderDetail(title: "Walmart", subtitle: "11 items", price: 21.55, imageAsset: "assets/images/walmart.png"),
      ],
    ),
    // Thêm bước khác nếu muốn...
  ];

  void nextStep() {
    if (step.value < stepsData.length - 1) {
      step.value++;
    } else {
      step.value = 0; // Nếu muốn reset quay lại bước đầu, hoặc có thể bỏ nếu không muốn.
    }
  }
}
