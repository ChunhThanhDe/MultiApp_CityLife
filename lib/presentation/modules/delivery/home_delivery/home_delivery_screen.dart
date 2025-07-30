import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/components/delivery_item.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/components/delivery_service_card.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/components/delivery_status_card.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

import 'package:sixam_mart_user/presentation/modules/delivery/home_delivery/home_delivery_controller.dart';

class HomeDeliveryScreen extends BaseScreen<HomeDeliveryController> {
  const HomeDeliveryScreen({super.key});

  @override
  @protected
  Color? get unSafeAreaColor => const Color(0xFF5856D7);

  @override
  Widget buildScreen(BuildContext context) {
    TextStyle inter(double size, [FontWeight? w, Color? c]) => TextStyle(fontSize: size, fontWeight: w, color: c);

    return Stack(
      children: [
        // Purple Header
        Container(width: double.infinity, height: 180, color: const Color(0xFF5856D7)),
        Column(
          children: [
            // Status bar & header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery', style: inter(18, FontWeight.w500, Colors.white)),
                  const Icon(Icons.notifications_none, color: Colors.white, size: 24),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Service Buttons Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(
                    child: ServiceCard(
                      svgAsset: 'assets/icons/ic_box_delivery.svg',
                      title: 'Box Delivery',
                      description: 'Send an item from\npoint A to B',
                      onTap: () => Get.toNamed(AppRoutes.boxDelivery),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ServiceCard(
                      svgAsset: 'assets/icons/ic_delivery_tracking.svg',
                      title: 'Tracking',
                      description: 'Send an item from\npoint A to B',
                      onTap: () => Get.toNamed(AppRoutes.trackingDelivery),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // "On the way" Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Obx(() => DeliveryStatusCard(delivery: controller.selectedDelivery.value)),
            ),

            const SizedBox(height: 32),
            // Recent Delivery header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Delivery', style: inter(18, FontWeight.w500, const Color(0xFF161A1D))),
                  const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black),
                ],
              ),
            ),
            // Delivery List
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.deliveries.length,
                  padding: const EdgeInsets.only(top: 8, bottom: 94),
                  itemBuilder: (context, index) {
                    final delivery = controller.deliveries[index];
                    return GestureDetector(
                      onTap: () {
                        controller.selectDelivery(delivery);
                      },
                      child: DeliveryItem(code: delivery['code'], date: delivery['date'], status: delivery['status'], statusColor: delivery['statusColor']),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        // Bottom Navbar
      ],
    );
  }
}
