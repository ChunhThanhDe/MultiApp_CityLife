import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/theme.dart';

import 'add_fund_controller.dart';

class AddFundScreen extends BaseScreen<AddFundController> {
  const AddFundScreen({super.key});

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Obx(() {
        final isEnabled = controller.amountText.value.isNotEmpty && controller.selectedPaymentMethod.value != null;
        return AppButton(
          onTap: () {},
          enabled: isEnabled,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Text('Add Funds', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.stateBaseWhite)),
        );
      }),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      surfaceTintColor: AppColors.stateBaseWhite,
      backgroundColor: AppColors.stateBaseWhite,
      title: Text('Add Funds', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Assets.icons.icClose.svg(
          colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn),
        ),
      ),
      leadingWidth: 40,
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextHeader(),
        const SizedBox(height: 16),
        _buildInputAmount(),
        Container(
          width: double.infinity,
          height: 6,
          color: AppColors.stateGreyLowest50,
        ),
        const SizedBox(height: 24),
        _buildPaymentMethod(context),
      ],
    );
  }

  _buildTextHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Load this amount',
            style: AppTextStyles.typographyH6Medium.copyWith(color: AppColors.textGreyHighest950),
          ),
          Text(
            'How mach do you want to add to your balance?',
            style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHigh700),
          ),
        ],
      ),
    );
  }

  Widget _buildInputAmount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            final hasValue = controller.amountText.value.isNotEmpty;
            final isFocused = controller.isAmountFocused.value;
            final isFilled = hasValue && !isFocused;
            return Container(
              decoration: isFilled
                  ? BoxDecoration(
                      color: AppColors.stateGreyLowest50,
                      borderRadius: BorderRadius.circular(6),
                    )
                  : null,
              child: TextField(
                controller: controller.amountController,
                focusNode: controller.amountFocusNode,
                style: AppTextStyles.typographyH7SemiBold.copyWith(color: AppColors.textGreyHighest950),
                keyboardType: TextInputType.number,
                onChanged: controller.onAmountChanged,
                decoration: InputDecoration(
                  hintText: '0.00',
                  hintStyle: AppTextStyles.typographyH7SemiBold.copyWith(color: AppColors.textGreyDefault500),
                  suffixIcon: hasValue
                      ? GestureDetector(
                          onTap: controller.onClearAmount,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Assets.icons.icClose.svg(
                              colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn),
                            ),
                          ),
                        )
                      : null,
                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 4),
                    child: Text('\$', style: AppTextStyles.typographyH7SemiBold.copyWith(color: hasValue ? AppColors.textGreyHighest950 : AppColors.textGreyDefault500)),
                  ),
                  prefixIconConstraints: BoxConstraints(minWidth: 16),
                  filled: !isFilled,
                  fillColor: !isFilled ? Colors.transparent : null,
                  border: isFilled
                      ? InputBorder.none
                      : OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textGreyLow300),
                          borderRadius: BorderRadius.circular(6),
                        ),
                  enabledBorder: isFilled
                      ? InputBorder.none
                      : OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textGreyLow300),
                          borderRadius: BorderRadius.circular(6),
                        ),
                  focusedBorder: isFilled
                      ? InputBorder.none
                      : OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textGreyLow300),
                          borderRadius: BorderRadius.circular(6),
                        ),
                ),
              ),
            );
          }),
          const SizedBox(height: 8),
          Text(
            'Enter an amount between \$15 and \$900',
            style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500),
          ),
          const SizedBox(height: 16),
          _buildRecommendedAmounts(),
        ],
      ),
    );
  }

  _buildRecommendedAmounts() {
    return Wrap(
      children: controller.recommendedAmounts
          .map(
            (amount) => GestureDetector(
              onTap: () => controller.onSelectRecommendedAmount(amount),
              child: Obx(() => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.only(right: 12, bottom: 12),
                    decoration: BoxDecoration(
                      color: controller.amountText.value == amount.toString() ? AppColors.stateBaseGrey950 : AppColors.stateGreyLowest50,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Text(
                      amount.toString(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.typographyH11Regular.copyWith(
                        color: controller.amountText.value == amount.toString() ? AppColors.textGreyLowestWhite : AppColors.textGreyHighest950,
                      ),
                    ),
                  )),
            ),
          )
          .toList(),
    );
  }

  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Payment method', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
          const SizedBox(height: 12),
          Obx(() {
            final method = controller.selectedPaymentMethod.value ?? controller.paymentMethods.first;
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => _showPaymentMethodSheet(context),
              child: Row(
                children: [
                  SvgPicture.asset(method.iconAsset, width: 32, height: 32),
                  const SizedBox(width: 12),
                  Text('${method.name} ****${method.last4}', style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                  const Spacer(),
                  Assets.icons.icRightArrowChevron.svg(colorFilter: ColorFilter.mode(AppColors.textGreyDefault500, BlendMode.srcIn)),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Future<void> _showPaymentMethodSheet(BuildContext context) async {
    await showAppBottomSheet<PaymentMethod?>(
      onClosed: (result) {
        final selected = result;
        if (selected != null) {
          controller.onSelectPaymentMethod(selected);
        }
      },
      child: Obx(() => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Text('Payment method', style: AppTextStyles.typographyH9Medium),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              ...controller.paymentMethods.asMap().entries.map((entry) => GestureDetector(
                    onTap: () => Navigator.pop(context, entry.value),
                    behavior: HitTestBehavior.opaque,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Row(
                        children: [
                          SvgPicture.asset(entry.value.iconAsset),
                          const SizedBox(width: 12),
                          Text('${entry.value.name} ****${entry.value.last4}', style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                          const Spacer(),
                          (controller.selectedPaymentMethod.value ?? controller.paymentMethods.first) == entry.value
                              ? Assets.icons.icCheckmark.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn))
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(height: 16),
              Divider(height: 1, color: AppColors.stateGreyLowest50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: AppButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.payment);
                  },
                  width: double.infinity,
                  color: AppColors.stateGreyLowest50,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.icPlusAdd.svg(
                        width: 24,
                        height: 24,
                        colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 8),
                      Text('Add Payment card', style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          )),
    );
  }
}
