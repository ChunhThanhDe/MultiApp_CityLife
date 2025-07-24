import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_orders_history_response.dart';
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

  int getOrderProgressStep(OrderStatus? status) {
    switch (status) {
      case OrderStatus.pending:
      case OrderStatus.confirmed:
        return 1;
      case OrderStatus.preparing:
        return 2;
      case OrderStatus.picked_up:
        return 3;
      case OrderStatus.delivered:
        return 4;
      default:
        return 1;
    }
  }

  String formatOrderTime(DateTime? dateTime) {
    if (dateTime == null) return '-';
    final now = DateTime.now();
    if (dateTime.year == now.year && dateTime.month == now.month && dateTime.day == now.day) {
      return 'Today ${DateFormat('h:mm a').format(dateTime)}';
    } else {
      return DateFormat('MMM d, yyyy h:mm a').format(dateTime);
    }
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }
      if (controller.error.value.isNotEmpty) {
        return Center(child: Text('Error: ${controller.error.value}'));
      }
      final runningOrders = controller.runningOrders;
      if (runningOrders.isEmpty) {
        return const Center(child: Text('No running orders.'));
      }
      final inProgressOrders = runningOrders.where((o) => o.orderStatus != OrderStatus.delivered).toList();
      final completedOrders = runningOrders.where((o) => o.orderStatus == OrderStatus.delivered).toList();
      return RefreshIndicator(
        onRefresh: controller.refreshOrders,
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollInfo) {
            if (!controller.isLoadingMore.value && controller.hasMore && scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent - 200) {
              controller.loadMoreOrders();
            }
            return false;
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              if (inProgressOrders.isNotEmpty) ...[
                ...inProgressOrders.map(
                  (order) => InProgressOrderCard(
                    label: order.orderStatus?.vi ?? '-',
                    time: formatOrderTime(order.createdAt),
                    brandLogo: AppImageProvider.network(order.store?.logoFullUrl ?? ''),
                    brandName: order.store?.name ?? '-',
                    subtitle: ' ${order.detailsCount ?? 0} items',
                    price: '\$${order.orderAmount?.toStringAsFixed(2) ?? '-'}',
                    progressStep: getOrderProgressStep(order.orderStatus),
                    totalStep: 4,
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(height: 1),
              ],
              if (completedOrders.isNotEmpty) ...[
                CompletedOrderSection(
                  date: formatOrderTime(completedOrders.first.createdAt),
                  status: 'Completed',
                  orders: completedOrders
                      .map(
                        (order) => OrderListItem(
                          brandLogo: AppImageProvider.network(order.store?.logoFullUrl ?? ''),
                          brandName: order.store?.name ?? '-',
                          subtitle: ' ${order.detailsCount ?? 0} items',
                          price: '\$${order.orderAmount?.toStringAsFixed(2) ?? '-'}',
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 16),
                const Divider(height: 1),
              ],
              if (controller.isLoadingMore.value)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: CircularProgressIndicator()),
                ),
            ],
          ),
        ),
      );
    });
  }
}
