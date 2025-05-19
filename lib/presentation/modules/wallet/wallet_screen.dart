import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';

import 'wallet_controller.dart';

class WalletScreen extends BaseScreen<WalletController> {
  const WalletScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.stateBaseWhite,
      centerTitle: false,
      backgroundColor: AppColors.stateBaseWhite,
      title: Text('Wallet', style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950)),
      actions: [
        GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: Row(
            children: [
              Text('May Gift', style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHighest950)),
              const SizedBox(width: 8),
              Assets.icons.icGift.svg(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildWalletCardSection(),
          const SizedBox(height: 16),
          _buildTransactionSection(),
        ],
      ),
    );
  }

  Padding _buildTransactionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction',
                style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950),
              ),
              Assets.icons.icSettingsFilter.svg(),
            ],
          ),
          const SizedBox(height: 16),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: vm.transactions.length,
            separatorBuilder: (_, __) => Divider(color: AppColors.textGreyLow300, height: 1),
            itemBuilder: (context, index) => _buildTransactionItem(vm.transactions[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(Transaction transaction) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: GestureDetector(
        onTap: () => Get.toNamed(AppRoutes.viewReceipt, arguments: transaction),
        behavior: HitTestBehavior.opaque,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(transaction.title, style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950)),
                const SizedBox(height: 2),
                Text(transaction.date, style: AppTextStyle.s12w400.copyWith(color: AppColors.textGreyDefault500)),
              ],
            ),
            Text(transaction.amount, style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHigh700)),
          ],
        ),
      ),
    );
  }

  Stack _buildWalletCardSection() {
    return Stack(
      children: [
        Assets.images.imgWalletBg.image(),
        _buildWalletCard(),
      ],
    );
  }

  Container _buildWalletCard() {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.stateBaseWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.stateBaseWhite, width: 0.5),
        image: DecorationImage(
          image: Assets.images.imgWalletCard.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      'Diyaar Cash',
                      style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHighest950),
                    ),
                    Obx(() => Text(
                          vm.showBalance.value ? '\$843.25' : '****',
                          style: AppTextStyle.s28w600.copyWith(color: AppColors.textGreyHighest950),
                        )),
                  ],
                ),
              ),
              Obx(() => GestureDetector(
                    onTap: vm.toggleBalanceVisibility,
                    behavior: HitTestBehavior.opaque,
                    child: vm.showBalance.value ? Assets.icons.icEyeVisible.svg() : Assets.icons.icEyeHidden.svg(),
                  )),
            ],
          ),
          const SizedBox(height: 32),
          AppButton(
            onTap: () => Get.toNamed(AppRoutes.addFund),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              children: [
                Assets.icons.icPlusAdd.svg(),
                Text('Add Funds', style: AppTextStyle.s14w400.copyWith(color: AppColors.textBaseWhite)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
