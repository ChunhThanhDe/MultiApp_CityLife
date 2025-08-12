import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_checkout_summary_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_checkout/cart_checkout_controller.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/time_picker_sheet.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class CartCheckoutScreen extends BaseScreen<CartCheckoutController> {
  const CartCheckoutScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const BasicAppBar(title: 'Checkout');
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      final checkoutData = controller.checkoutSummary.value;
      if (checkoutData == null) {
        return const Center(child: Text('Failed to load checkout data'));
      }

      return SingleChildScrollView(
        child: Column(
          children: [
            if (controller.serviceCart != null) _buildServiceHead(controller.serviceCart!),

            // Address Section
            _buildAddressSection(checkoutData),
            _buildDivider(),

            // Delivery Options Section
            _buildDeliveryOptionsSection(context, checkoutData),
            _buildDivider(),

            // Order Details Section
            if (controller.serviceCart != null && controller.serviceCart!.moduleType != 'laundry') _buildOrderDetailsSection(checkoutData),
            _buildDivider(),

            // Promocode Section
            if (controller.serviceCart != null && controller.serviceCart!.moduleType != 'laundry') ...[_buildPromocodeSection(checkoutData), _buildDivider()],

            // Price Summary Section
            _buildPriceSummarySection(checkoutData),
            _buildDivider(),

            // Payment Section
            _buildPaymentSection(checkoutData),
          ],
        ),
      );
    });
  }

  // Helper widgets for section structure

  Widget sectionCard({required List<Widget> children}) {
    return Column(children: children);
  }

  Widget divider([double leftPad = 0]) => Padding(
    padding: EdgeInsets.only(left: leftPad.w),
    child: Divider(height: 1, color: AppTheme.theme.stateGreyLowestHover100),
  );

  Widget dividerSpace() => Container(width: double.infinity, height: 6, color: AppTheme.theme.backgroundSurfaceTertiaryGrey50);

  Widget sectionLabel(String label) => Padding(
    padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 8.h),
    child: Row(
      children: [Text(label, style: AppTextStyles.typographyH9Medium.copyWith(color: AppTheme.theme.textGreyHighest950))],
    ),
  );

  Widget cellItem({
    required Widget icon, // <-- nhận bất cứ widget gì
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) => InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
      height: 60.h,
      child: Row(
        children: [
          SizedBox(width: 24, height: 24, child: icon),
          const SizedBox(width: 12),
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
          Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppTheme.theme.textGreyHigh700),
        ],
      ),
    ),
  );

  Widget deliveryOption({
    required bool selected,
    required Widget icon, // Nhận mọi widget, dùng Image.asset, SvgPicture.asset, Icon...
    required String title,
    required String subtitle,
    String? label,
    Widget? trailing,
  }) => Container(
    decoration: BoxDecoration(
      color: selected ? AppTheme.theme.stateBrandLowest50 : AppTheme.theme.backgroundSurfacePrimaryWhite,
      border: Border.all(color: selected ? AppTheme.theme.stateBrandLow200 : AppTheme.theme.alphaGrey10, width: 1),
      borderRadius: BorderRadius.circular(6),
    ),
    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
    child: Row(
      children: [
        SizedBox(width: 24, height: 24, child: icon),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
              Text(subtitle, style: AppTextStyles.typographyH12Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
            ],
          ),
        ),
        if (label != null) Text(label, style: AppTextStyles.typographyH11Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
        if (trailing != null) trailing,
        if (selected) Icon(Icons.check_circle, color: AppTheme.theme.stateBrandHigh700, size: 24),
      ],
    ),
  );

  Widget orderGroupItem({required String logo, required String name, required String detail, required String amount}) => Container(
    height: 66,
    margin: EdgeInsets.only(bottom: 8.h),
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    child: Row(
      children: [
        // Sử dụng CircleAvatar với child là SvgPicture.asset
        CircleAvatar(
          radius: 16,
          backgroundColor: AppColors.backgroundSurfacePrimaryWhite.withValues(alpha: 0), // Nếu muốn không viền
          child: SvgPicture.asset(
            logo,
            width: 32, // hoặc 30 để vừa vòng tròn
            height: 32,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
              Text(detail, style: AppTextStyles.typographyH12Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
            ],
          ),
        ),
        Text(amount, style: AppTextStyles.typographyH11Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
        Icon(Icons.keyboard_arrow_down_rounded, color: AppTheme.theme.textGreyHigh700),
      ],
    ),
  );
  Widget priceRow(String left, String right) => Padding(
    padding: EdgeInsets.symmetric(vertical: 2.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(left, style: AppTextStyles.typographyH10Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
        Text(right, style: AppTextStyles.typographyH10Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
      ],
    ),
  );

  Widget paymentItem() => Container(
    padding: EdgeInsets.symmetric(vertical: 4.h),
    child: Row(
      children: [
        Container(
          width: 42,
          height: 28,
          decoration: BoxDecoration(color: AppTheme.theme.stateBrandHigh700, borderRadius: BorderRadius.circular(4)),
          alignment: Alignment.center,
          child: Text('VISA', style: AppTextStyles.typographyH11Bold.copyWith(color: AppTheme.theme.textBaseWhite, letterSpacing: 1.2)),
        ),
        const SizedBox(width: 12),
        Text('Visa ••••5290', style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
        const Spacer(),
        Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppTheme.theme.textGreyHigh700),
      ],
    ),
  );

  Widget _buildAddressSection(GetCheckoutSummaryResponse checkoutData) {
    final selectedAddress = controller.selectedAddress ?? checkoutData.defaultAddress;

    return sectionCard(
      children: [
        sectionLabel('Schedules'),
        cellItem(
          icon: SvgPicture.asset('assets/icons/ic_home.svg'),
          title: selectedAddress?.addressType ?? 'Address',
          subtitle: selectedAddress?.address ?? 'No address selected',
          onTap: () => _showAddressSelection(checkoutData.addresses ?? []),
        ),
        divider(60),
        cellItem(icon: SvgPicture.asset('assets/icons/ic_box_package_courier_hands.svg'), title: 'Hand it to me', subtitle: 'Please Hand it to me', onTap: () {}),
      ],
    );
  }

  Widget _buildDeliveryOptionsSection(BuildContext context, GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel('Delivery Options'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              // Priority Option
              Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Obx(
                  () => GestureDetector(
                    onTap: () => controller.selectDeliveryOption('Priority'),
                    child: deliveryOption(
                      selected: controller.selectedDeliveryOption.value == 'Priority',
                      icon: Icon(Icons.flash_on, size: 24, color: AppTheme.theme.textGreyHigh700),
                      title: 'Priority',
                      subtitle: '5-10 min(s) Delivered directly to you',
                      label: '\$5.99',
                    ),
                  ),
                ),
              ),
              // Schedule Option
              Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Obx(
                  () => GestureDetector(
                    onTap: () {
                      controller.selectDeliveryOption('Schedule');
                      // Show time picker dialog
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: AppColors.backgroundSurfacePrimaryWhite.withValues(alpha: 0),
                        builder: (context) => const ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                          child: FractionallySizedBox(heightFactor: 0.82, child: TimePickerSheet()),
                        ),
                      );
                    },
                    child: deliveryOption(
                      selected: controller.selectedDeliveryOption.value == 'Schedule',
                      icon: Icon(Icons.schedule, size: 24, color: AppTheme.theme.textGreyHigh700),
                      title: 'Schedule',
                      subtitle: 'Select a time',
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppTheme.theme.textGreyHigh700),
                    ),
                  ),
                ),
              ),
              // Standard Option
              Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Obx(
                  () => GestureDetector(
                    onTap: () => controller.selectDeliveryOption('Standard'),
                    child: deliveryOption(
                      selected: controller.selectedDeliveryOption.value == 'Standard',
                      icon: Icon(Icons.access_time, size: 24, color: AppTheme.theme.textGreyHigh700),
                      title: 'Standard',
                      subtitle: '10-25 min(s) Delivered',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOrderDetailsSection(GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel('Order Details'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: (checkoutData.cart ?? []).map((store) {
              final itemCount = store.items?.length ?? 0;
              final storeTotal = store.items?.fold<double>(0.0, (sum, item) => sum + ((item.itemPrice ?? 0.0) * (item.itemQuantity ?? 1))) ?? 0.0;

              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: orderGroupItem(
                  logo: store.storeLogo ?? 'assets/images/default_store.png',
                  name: store.storeName ?? 'Store',
                  detail: '$itemCount items',
                  amount: '\$${storeTotal.toStringAsFixed(2)}',
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildPromocodeSection(GetCheckoutSummaryResponse checkoutData) {
    final TextEditingController promoController = TextEditingController();

    return Column(
      children: [
        sectionLabel('Promocode'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Obx(() {
            // Update text field when promo code is applied
            if (controller.promoCode.value.isNotEmpty && promoController.text != controller.promoCode.value) {
              promoController.text = controller.promoCode.value;
            }

            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Icon(Icons.sell_outlined, color: AppTheme.theme.textGreyDefault500, size: 18),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: promoController,
                    decoration: InputDecoration(
                      hintText: 'Enter promo code',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                      hintStyle: AppTextStyles.typographyH10Regular.copyWith(color: AppTheme.theme.textGreyDefault500),
                    ),
                    style: AppTextStyles.typographyH10Regular.copyWith(color: AppTheme.theme.textGreyHighest950),
                    enabled: !controller.isApplyingPromoCode.value,
                  ),
                ),
                if (controller.promoCode.value.isNotEmpty)
                  IconButton(
                    onPressed: controller.isApplyingPromoCode.value
                        ? null
                        : () {
                            promoController.clear();
                            controller.clearPromoCode();
                          },
                    icon: Icon(Icons.close, color: AppTheme.theme.textGreyDefault500, size: 20),
                  ),
                Container(
                  margin: EdgeInsets.all(4.w),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.theme.stateBrandDefault500,
                      foregroundColor: AppTheme.theme.textBaseWhite,
                      minimumSize: const Size(0, 40),
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      textStyle: const TextStyle(fontFamily: 'Inter', fontSize: 14, fontWeight: FontWeight.w500),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    onPressed: controller.isApplyingPromoCode.value ? null : () => controller.applyPromoCode(promoController.text),
                    child: controller.isApplyingPromoCode.value
                        ? SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(AppTheme.theme.textBaseWhite)))
                        : const Text('Apply'),
                  ),
                ),
              ],
            );
          }),
        ),
        // Show inline validation messages (only errors)
        Obx(() {
          if (controller.promoMessage.value.isNotEmpty && controller.isPromoError.value) {
            return Padding(
              padding: EdgeInsets.fromLTRB(24.w, 8.h, 24.w, 0),
              child: Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: AppTheme.theme.stateDangerLowest50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.theme.stateDangerLow200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.error_outline, color: AppTheme.theme.stateDangerDefault500, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(controller.promoMessage.value, style: AppTextStyles.typographyH11Medium.copyWith(color: AppTheme.theme.stateDangerDefault500)),
                    ),
                  ],
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        }),
        // Show applied promo code info
        Obx(() {
          if (controller.promoCode.value.isNotEmpty) {
            return Padding(
              padding: EdgeInsets.fromLTRB(24.w, 8.h, 24.w, 0),
              child: Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: AppTheme.theme.stateBrandLowest50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.theme.stateBrandLow200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: AppTheme.theme.stateBrandDefault500, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text('Promo code "${controller.promoCode.value}" applied', style: AppTextStyles.typographyH11Medium.copyWith(color: AppTheme.theme.stateBrandDefault500)),
                    ),
                    if (controller.currentDiscount > 0)
                      Text('-\$${controller.currentDiscount.toStringAsFixed(2)}', style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppTheme.theme.stateBrandDefault500)),
                  ],
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        }),
      ],
    );
  }

  Widget _buildPriceSummarySection(GetCheckoutSummaryResponse checkoutData) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
      child: Obx(
        () => Column(
          children: [
            priceRow('Subtotal:', '\$${controller.currentSubtotal.toStringAsFixed(2)}'),
            priceRow('Delivery Fee:', '\$${controller.selectedDeliveryFee.toStringAsFixed(2)}'),
            priceRow('Taxes & Estimated Fees:', '\$${controller.currentTax.toStringAsFixed(2)}'),
            priceRow('Discount:', '-\$${controller.currentDiscount.toStringAsFixed(2)}'),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:', style: AppTextStyles.typographyH8Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
                Text('\$${controller.calculatedTotal.toStringAsFixed(2)}', style: AppTextStyles.typographyH8Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentSection(GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel('Payment'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: (checkoutData.paymentMethods ?? []).map((method) {
              return Obx(
                () => GestureDetector(
                  onTap: () => controller.selectPaymentMethod(method.key ?? ''),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 12.h),
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: controller.selectedPaymentMethod.value == method.key ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.stateGreyLowestHover100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(_getPaymentIcon(method.key ?? ''), color: controller.selectedPaymentMethod.value == method.key ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.textGreyDefault500),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(method.label ?? '', style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
                        ),
                        if (controller.selectedPaymentMethod.value == method.key) Icon(Icons.check_circle, color: AppTheme.theme.stateBrandDefault500),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        // Order Button
        Padding(
          padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 16.h),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: Obx(
              () => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.theme.stateBrandDefault500,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                ),
                onPressed: controller.isLoading.value
                    ? null
                    : () {
                        if (controller.serviceCart != null && controller.serviceCart!.moduleType == 'laundry') {
                          Get.toNamed(AppRoutes.cartSuccessful);
                        } else {
                          controller.orderNow();
                        }
                      },
                child: controller.isLoading.value
                    ? SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(AppTheme.theme.textBaseWhite)))
                    : Text('Order Now', style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textBaseWhite)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return dividerSpace();
  }

  // Helper methods

  IconData _getPaymentIcon(String key) {
    switch (key) {
      case 'credit_card':
        return Icons.credit_card;
      case 'digital_wallet':
        return Icons.account_balance_wallet;
      case 'cash_on_delivery':
      default:
        return Icons.money;
    }
  }

  void _showAddressSelection(List<CheckoutAddress> addresses) {
    // TODO: Implement address selection dialog
    Get.snackbar('Info', 'Address selection dialog would open here');
  }

  Widget _buildServiceHead(ServiceEntity serviceCart) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Service Icon
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppTheme.theme.backgroundSurfaceTertiaryGrey50),
            child: Center(child: AppImage.network(serviceCart.thumbnail ?? '', width: 50, height: 50, fit: BoxFit.contain)),
          ),
          const SizedBox(height: 16),

          // Text and Description Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Service Title
              Text(
                serviceCart.moduleName ?? '',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  height: 1.5, // line-height: 30px / font-size: 20px = 1.5
                  color: AppTheme.theme.textGreyHighest950,
                ),
              ),
              const SizedBox(height: 16),

              // Service Description
              Text(
                serviceCart.moduleName ?? '',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.5, // line-height: 18px / font-size: 12px = 1.5
                  color: AppTheme.theme.textGreyHigh700,
                ),
              ),
              const SizedBox(height: 16),

              // More Details Button
              GestureDetector(
                onTap: () {
                  // Navigate to service details or show more info
                  Get.snackbar('Info', 'More details for ${serviceCart.moduleName}');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'More details',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.43, // line-height: 20px / font-size: 14px ≈ 1.43
                        color: AppTheme.theme.stateBrandDefault500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(width: 20, height: 20, child: Icon(Icons.arrow_forward_ios, size: 12, color: AppTheme.theme.stateBrandDefault500)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
