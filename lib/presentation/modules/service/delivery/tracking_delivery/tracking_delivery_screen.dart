import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

import 'package:sixam_mart_user/presentation/modules/delivery/tracking_delivery/tracking_delivery_controller.dart';

class TrackingDeliveryScreen extends BaseScreen<TrackingDeliveryController> {
  const TrackingDeliveryScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Tracking', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Search input
                  Obx(() {
                    return Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9999),
                        border: Border.all(color: const Color(0xFFBEBDEF)),
                        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 2, offset: const Offset(0, 1))],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          const Icon(Icons.search, color: Color(0xFF798A9A), size: 24),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              controller: controller.textController,
                              style: const TextStyle(fontSize: 14, color: Color(0xFF161A1D)),
                              decoration: const InputDecoration(hintText: 'Tracking by Receipt', border: InputBorder.none, isDense: true),
                              onChanged: controller.onTextChanged,
                            ),
                          ),
                          if (controller.hasText.value)
                            GestureDetector(
                              onTap: controller.clearText,
                              child: const Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: Icon(Icons.close, color: Color(0xFF798A9A), size: 24),
                              ),
                            ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 48),
                  // Illustration or empty
                  Obx(() {
                    return controller.hasText.value
                        ? const SizedBox(height: 0)
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 100),
                              AppImage.asset('assets/images/img_tracking_box.png', width: size.width * 0.6, fit: BoxFit.contain),
                              const SizedBox(height: 100),
                            ],
                          );
                  }),
                ],
              ),
            ),
          ),
        ),
        // Bottom action & Home indicator
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Track Button
              Obx(() {
                if (!controller.hasText.value) return const SizedBox.shrink();
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(color: Color(0xFFE8EBEE), width: 1)),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Xử lý track
                        controller.trackReceipt();

                        Get.toNamed(AppRoutes.trackDelivery);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5856D7),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Track',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
