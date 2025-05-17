import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';

import 'add_fund_controller.dart';

class AddFundScreen extends BaseScreen<AddFundController> {
  const AddFundScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: AppColors.stateBaseWhite,
      title: Text('Add Funds', style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950)),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextHeader(),
          const SizedBox(height: 24),
          _buildInputAmount(),
        ],
      ),
    );
  }

  Column _buildTextHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Load this amount',
          style: AppTextStyle.s28w600.copyWith(color: AppColors.textGreyHighest950),
        ),
        Text(
          'How mach do you want to add to your balance?',
          style: AppTextStyle.s16w400.copyWith(color: AppColors.textGreyHigh700),
        ),
      ],
    );
  }

  Widget _buildInputAmount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller.amountController,
          style: AppTextStyle.s24w600.copyWith(color: AppColors.textGreyHighest950),
          keyboardType: TextInputType.number,
          onChanged: controller.onAmountChanged,
          decoration: InputDecoration(
            hintText: '0.00',
            hintStyle: AppTextStyle.s24w600.copyWith(color: AppColors.textGreyDefault500),
            suffixIcon: Obx(
              () => Padding(
                padding: const EdgeInsets.all(8),
                child: controller.isShowClearButton.value
                    ? GestureDetector(
                        onTap: controller.onClearAmount,
                        child: Assets.icons.icClose.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
            contentPadding: EdgeInsets.zero,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, right: 4),
              child: Obx(() => Text('\$', style: AppTextStyle.s24w600.copyWith(color: vm.isShowClearButton.value ? AppColors.textGreyHighest950 : AppColors.textGreyDefault500))),
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 16),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textGreyLow300),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textGreyLow300),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textGreyLow300),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Enter an amount between \$15 and \$900',
          style: AppTextStyle.s12w400.copyWith(color: AppColors.textGreyDefault500),
        ),
        const SizedBox(height: 16),
        _buildRecommendedAmounts(),
      ],
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
                      color: controller.selectedRecommendedAmount.value == amount ? AppColors.stateBaseGrey950 : AppColors.stateGreyLowest50,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Text(
                      amount.toString(),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s14w400.copyWith(
                        color: controller.selectedRecommendedAmount.value == amount ? AppColors.textGreyLowestWhite : AppColors.textGreyHighest950,
                      ),
                    ),
                  )),
            ),
          )
          .toList(),
    );
  }
}
