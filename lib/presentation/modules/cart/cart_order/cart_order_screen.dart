import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/cart_completed_order_section.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/cart_in_progress_order_card.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

import 'cart_order_controller.dart';

class CartOrderScreen extends BaseScreen<CartOrderController> {
  const CartOrderScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Orders');
  }

  @override
  Widget buildScreen(BuildContext context) {
    return ListView(
      children: [
        // In-progress Order Section
        InProgressOrderCard(
          label: "Heading your way",
          time: "Today 7:35 AM",
          brandLogo: AppImageProvider.asset('assets/images/starbucks.png'),
          brandName: "Starbucks®",
          subtitle: "4 items",
          price: "\$35.87",
          progressStep: 3,
          totalStep: 4,
        ),
        SizedBox(height: 16),
        Divider(height: 1),
        // Another In-progress Order
        InProgressOrderCard(
          label: "Heading your way",
          time: "Today 7:35 AM",
          brandLogo: AppImageProvider.asset('assets/images/starbucks.png'),
          brandName: "Starbucks®",
          subtitle: "4 items",
          price: "\$35.87",
          progressStep: 3,
          totalStep: 4,
        ),
        SizedBox(height: 16),
        Divider(height: 1),

        // Completed Orders Section
        CompletedOrderSection(
          date: "Sep 18, 2023 7:30 AM",
          status: "Completed",
          orders: [
            OrderListItem(brandLogo: AppImageProvider.asset('assets/images/starbucks.png'), brandName: "Starbucks®", subtitle: "4 items", price: "\$14.32"),
            OrderListItem(brandLogo: AppImageProvider.asset('assets/images/starbucks.png'), brandName: "Starbucks®", subtitle: "4 items", price: "\$14.32"),
            OrderListItem(brandLogo: AppImageProvider.asset('assets/images/mcdonalds.png'), brandName: "McDonald's", subtitle: "2 items", price: "\$21.55"),
          ],
        ),
        SizedBox(height: 16),
        Divider(height: 1),

        // Another Completed Orders Section
        CompletedOrderSection(
          date: "Sep 18, 2023 7:30 AM",
          status: "Completed",
          orders: [
            OrderListItem(brandLogo: AppImageProvider.asset('assets/images/starbucks.png'), brandName: "Starbucks®", subtitle: "4 items", price: "\$14.32"),
            OrderListItem(brandLogo: AppImageProvider.asset('assets/images/mcdonalds.png'), brandName: "McDonald's", subtitle: "2 items", price: "\$21.55"),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
