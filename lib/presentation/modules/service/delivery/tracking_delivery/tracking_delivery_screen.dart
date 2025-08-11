import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/tracking_delivery/tracking_delivery_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';


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
                        color: AppColors.backgroundSurfacePrimaryWhite,
                        borderRadius: BorderRadius.circular(9999),
                        border: Border.all(color: AppColors.stateBrandLow200),
                        boxShadow: [BoxShadow(color: AppColors.textGreyHighest950.withValues(alpha: 0.05), blurRadius: 2, offset: const Offset(0, 1))],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          Icon(Icons.search, color: AppColors.textGreyDefault500, size: 24),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              controller: controller.textController,
                              style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
                              decoration: const InputDecoration(hintText: 'Tracking by Receipt', border: InputBorder.none, isDense: true),
                              onChanged: controller.onTextChanged,
                            ),
                          ),
                          if (controller.hasText.value)
                            GestureDetector(
                              onTap: controller.clearText,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(Icons.close, color: AppColors.textGreyDefault500, size: 24),
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
                  decoration: BoxDecoration(
                    color: AppColors.backgroundSurfacePrimaryWhite,
                    border: Border(top: BorderSide(color: AppColors.stateGreyLowestHover100, width: 1)),
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
                        backgroundColor: AppColors.stateBrandDefault500,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                        elevation: 0,
                      ),
                      child: Text(
                        'Track',
                        style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBaseWhite),
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
