import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_order_confirm/cart_order_confirm_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class CartOrderConfirmScreen extends BaseScreen<CartOrderConfirmController> {
  const CartOrderConfirmScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const BasicAppBar(title: 'Order');
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      // Show loading state
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      // Show error state
      if (controller.error.value.isNotEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Error: ${controller.error.value}',
                style: AppTextStyles.typographyH6Regular.copyWith(color: AppTheme.theme.textDangerDefault500),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: () => controller.onInit(), child: const Text('Retry')),
            ],
          ),
        );
      }

      final stepData = controller.stepsData[controller.step.value];
      return Column(
        children: [
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 136,
                              height: 136,
                              decoration: BoxDecoration(color: AppTheme.theme.backgroundSurfaceTertiaryGrey50, shape: BoxShape.circle),
                              child: Center(child: SvgPicture.asset(stepData.iconAsset)),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            stepData.title,
                            style: AppTextStyles.typographyH6SemiBold.copyWith(color: AppTheme.theme.textGreyHighest950, height: 36 / 28),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            stepData.subtitle,
                            style: AppTextStyles.typographyH10Regular.copyWith(color: AppTheme.theme.textGreyHigh700, height: 24 / 16),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Row(
                          children: [
                            ...List.generate(
                              controller.stepsData.length,
                              (i) => Expanded(
                                child: Container(
                                  height: 5,
                                  margin: EdgeInsets.only(right: i == controller.stepsData.length - 1 ? 0 : 12),
                                  decoration: BoxDecoration(
                                    color: i <= controller.step.value ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.stateGreyLowestHover100,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Divider
                  Container(height: 6, width: double.infinity, color: AppTheme.theme.backgroundSurfaceTertiaryGrey50),

                  // Address Section
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: sectionTitle('Address'),
                  ),
                  cellItem(iconAsset: 'assets/icons/ic_home.svg', title: controller.contactPersonName, subtitle: controller.deliveryAddress),
                  dividerLine(),
                  cellItem(iconAsset: 'assets/icons/ic_box_package_courier_hands.svg', title: controller.deliveryInstruction, subtitle: controller.orderNote),

                  // Divider
                  Container(height: 6, width: double.infinity, color: AppTheme.theme.backgroundSurfaceTertiaryGrey50),

                  // Order Details Section
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: sectionTitle('Order Details'),
                  ),

                  // Display store information
                  if (controller.orderData.value?.store != null)
                    orderDetailItem(
                      imageAsset: 'assets/images/store_placeholder.png', // Default store image
                      title: controller.orderData.value!.store!.name ?? 'Store',
                      subtitle: controller.deliveryTime,
                      price: controller.orderData.value!.orderAmount?.toDouble() ?? 0.0,
                    ),

                  // Display order items from controller
                  ...controller.orderItems.map(
                    (item) => Column(
                      children: [
                        if (controller.orderItems.indexOf(item) > 0 || controller.orderData.value?.store != null) dividerLine(),
                        orderDetailItem(imageAsset: item.imageAsset, title: item.title, subtitle: item.subtitle, price: item.price),
                      ],
                    ),
                  ),

                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }

  // Section Title Widget
  Widget sectionTitle(String text) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: Text(
      text,
      style: AppTextStyles.typographyH9Medium.copyWith(color: AppTheme.theme.textGreyHighest950, height: 28 / 18),
    ),
  );

  // Divider Line Widget
  Widget dividerLine() => Padding(
    padding: EdgeInsets.only(left: 60.w), // aligns with icon
    child: Divider(height: 0, thickness: 1, color: AppTheme.theme.stateGreyLowestHover100),
  );

  // Cell Item Widget (Address)
  Widget cellItem({required String iconAsset, required String title, required String subtitle}) => Container(
    height: 60.h,
    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
    child: Row(
      children: [
        SvgPicture.asset(iconAsset, width: 24.w, height: 24.h),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
              Text(subtitle, style: AppTextStyles.typographyH12Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
            ],
          ),
        ),
      ],
    ),
  );

  // Order Detail Item Widget
  Widget orderDetailItem({required String imageAsset, required String title, required String subtitle, required double price}) => Container(
    height: 70.h,
    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
    child: Row(
      children: [
        Container(
          width: 32.h,
          height: 32.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: AppTheme.theme.backgroundSurfacePrimaryWhite),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: AppImage.asset(imageAsset, width: 32, height: 32, fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
              Text(subtitle, style: AppTextStyles.typographyH12Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
            ],
          ),
        ),
        Text('\$${price.toStringAsFixed(2)}', style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
        Icon(Icons.expand_more, color: AppTheme.theme.textGreyHigh700),
      ],
    ),
  );
}
