import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_orders_history_response.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/cart_completed_order_section.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/cart_in_progress_order_card.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_list_view.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

import 'package:sixam_mart_user/presentation/modules/cart/cart_order/cart_order_controller.dart';

// Data model for organizing orders by type
class OrderDisplayItem {

  OrderDisplayItem({required this.order, required this.type});
  final Order order;
  final OrderDisplayType type;
}

enum OrderDisplayType { inProgress, completed }

class CartOrderScreen extends BaseScreen<CartOrderController> {
  const CartOrderScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const BasicAppBar(title: 'Orders');
  }

  int getOrderProgressStep(OrderStatus? status) {
    switch (status) {
      case OrderStatus.pending:
      case OrderStatus.accepted:
        return 1; // Step 1 (0-based index 0 + 1 for display)
      case OrderStatus.confirmed:
      case OrderStatus.preparing:
        return 2; // Step 2 (0-based index 1 + 1 for display)
      case OrderStatus.processing:
      case OrderStatus.handover:
      case OrderStatus.picked_up:
        return 3; // Step 3 (0-based index 2 + 1 for display)
      case OrderStatus.delivered:
        return 4; // Step 4 (0-based index 3 + 1 for display)
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

  void _navigateToOrderTracking(Order order) {
    // Navigate to order tracking screen with order details
    Get.toNamed(
      AppRoutes.cartConfirm,
      arguments: {
        'orderId': order.id,
        'contactNumber': order.deliveryAddress?.contactPersonNumber,
      },
    );
  }

  List<OrderDisplayItem> _organizeOrders(List<Order> orders) {
    final List<OrderDisplayItem> displayItems = [];

    // Add in-progress orders first
    final inProgressOrders = orders.where((o) => o.orderStatus != OrderStatus.delivered).toList();
    for (final order in inProgressOrders) {
      displayItems.add(OrderDisplayItem(order: order, type: OrderDisplayType.inProgress));
    }

    // Add completed orders
    final completedOrders = orders.where((o) => o.orderStatus == OrderStatus.delivered).toList();
    for (final order in completedOrders) {
      displayItems.add(OrderDisplayItem(order: order, type: OrderDisplayType.completed));
    }

    return displayItems;
  }

  Widget _buildOrderItem(BuildContext context, OrderDisplayItem item, int index) {
    final order = item.order;

    if (item.type == OrderDisplayType.inProgress) {
      return Column(
        children: [
          InProgressOrderCard(
            label: order.orderStatus?.vi ?? '-',
            time: formatOrderTime(order.createdAt),
            brandLogo: AppImageProvider.network(order.store?.logoFullUrl ?? ''),
            brandName: order.store?.name ?? '-',
            subtitle: ' ${order.detailsCount ?? 0} items',
            price: '\$${order.orderAmount?.toStringAsFixed(2) ?? '-'}',
            progressStep: getOrderProgressStep(order.orderStatus),
            totalStep: 4,
            onTap: () => _navigateToOrderTracking(order),
          ),
          const SizedBox(height: 16),
          const Divider(height: 1),
        ],
      );
    } else {
      // For completed orders, we need to group them
      final displayItems = _organizeOrders(controller.runningOrders);
      final completedOrders = displayItems.where((item) => item.type == OrderDisplayType.completed).map((item) => item.order).toList();

      // Only show the completed section for the first completed order
      final isFirstCompleted = displayItems.where((item) => item.type == OrderDisplayType.completed).toList().indexOf(item) == 0;

      if (isFirstCompleted && completedOrders.isNotEmpty) {
        return Column(
          children: [
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
                      onTap: () => _navigateToOrderTracking(order),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 16),
            const Divider(height: 1),
          ],
        );
      } else {
        return const SizedBox.shrink(); // Hide other completed orders as they're shown in the section
      }
    }
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      final displayItems = _organizeOrders(controller.runningOrders);

      // Filter out duplicate completed orders (keep only the first one for the section)
      final filteredItems = <OrderDisplayItem>[];
      bool hasAddedCompletedSection = false;

      for (final item in displayItems) {
        if (item.type == OrderDisplayType.inProgress) {
          filteredItems.add(item);
        } else if (item.type == OrderDisplayType.completed && !hasAddedCompletedSection) {
          filteredItems.add(item);
          hasAddedCompletedSection = true;
        }
      }

      return AppListView<OrderDisplayItem>(
        items: filteredItems,
        itemBuilder: _buildOrderItem,
        onRefresh: controller.refreshOrders,
        onLoadMore: controller.loadMoreOrders,
        isLoading: controller.isLoading.value,
        isLoadingMore: controller.isLoadingMore.value,
        hasMore: controller.hasMore,
        errorMessage: controller.error.value.isNotEmpty ? controller.error.value : null,
        onRetry: () => controller.refreshOrders(),
        emptyTitle: 'No Orders',
        emptySubtitle: 'You don\'t have any orders yet.',
        physics: const AlwaysScrollableScrollPhysics(),
      );
    });
  }
}
