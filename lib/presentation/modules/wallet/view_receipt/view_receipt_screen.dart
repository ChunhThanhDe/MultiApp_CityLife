import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';

typedef ReceiptAction = ({SvgGenImage icon, String label, VoidCallback onTap});

class ViewReceiptScreen extends BaseScreen<ViewReceiptController> {
  const ViewReceiptScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      surfaceTintColor: AppColors.stateBaseWhite,
      backgroundColor: AppColors.stateBaseWhite,
      leadingWidth: 48,
      title: Text(tr(LocaleKeys.wallet_receipt_title), style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Assets.icons.icLeftArrowChervon.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn), width: 28, height: 28),
      ),
      actions: [
        Row(
          children: [
            Text(tr(LocaleKeys.wallet_receiptNumber), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
            const SizedBox(width: 8),
            Assets.icons.icInvoice.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)),
            const SizedBox(width: 24),
          ],
        ),
      ],
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBrandInfo(),
          const SizedBox(height: 16),
          _buildDeliveryPersonInfo(),
          _dividerSection(),
          _buildItemsInfo(),
          _dividerSection(),
          _buildTransactionInfo(),
          _dividerSection(),
          _buildReceiptActions(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Padding _dividerSection() {
    return const Padding(padding: EdgeInsets.symmetric(vertical: 16), child: SectionBreakDivider());
  }

  Container _buildBrandInfo() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(color: AppColors.stateSuccessHigh700),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          ClipOval(
            child: AppImage.network(
              vm.transaction.imageUrl ?? '', // Use transaction image or default
              width: 64,
              height: 64,
              fit: BoxFit.cover,
              placeholder: Image(image: Assets.images.imgAvatarDefault.provider()),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tr(LocaleKeys.wallet_brandName), style: AppTextStyles.typographyH7SemiBold.copyWith(color: AppColors.textBaseWhite)),
              Text(tr(LocaleKeys.wallet_status), style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBaseWhite)),
            ],
          ),
          const Spacer(),
          Assets.icons.icRightArrowChevron.svg(colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn)),
        ],
      ),
    );
  }

  Container _buildDeliveryPersonInfo() {
    return Container(
      width: 430,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          ClipOval(
            child: AppImage.network(
              vm.transaction.driverImageUrl ?? '', // Use driver image or default
              width: 32,
              height: 32,
              fit: BoxFit.cover,
              placeholder: Image(image: Assets.images.imgAvatarDefault.provider()),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 261,
                  child: Text(tr(LocaleKeys.wallet_driverName), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                ),
                SizedBox(
                  width: 261,
                  child: Text(tr(LocaleKeys.wallet_vehicleInfo), style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)),
                ),
              ],
            ),
          ),
          Text(tr(LocaleKeys.wallet_rating), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
          Assets.icons.icLikeFilled.svg(),
        ],
      ),
    );
  }

  Padding _buildItemsInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tr(LocaleKeys.wallet_receipt_items), style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
          const SizedBox(height: 16),
          Obx(() {
            if (vm.items.isEmpty) {
              return _buildEmptyReceiptItemsState();
            }
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vm.items.length,
              separatorBuilder: (context, index) => Column(
                children: [
                  const SizedBox(height: 16),
                  Divider(height: 1, color: AppColors.stateGreyLowestHover100),
                  const SizedBox(height: 16),
                ],
              ),
              itemBuilder: (context, index) {
                final item = vm.items[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(child: AppImage.network(item.image, width: 56, height: 56, fit: BoxFit.cover)),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name, style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                          const SizedBox(height: 4),
                          Text('\$${item.price}', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(color: AppColors.stateGreyLowest50, shape: BoxShape.circle),
                      child: Assets.icons.icPlusAdd.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)),
                    ),
                  ],
                );
              },
            );
          }),
        ],
      ),
    );
  }

  Widget _buildEmptyReceiptItemsState() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        children: [
          Assets.icons.icInvoice.svg(width: 48, height: 48, colorFilter: ColorFilter.mode(AppColors.textGreyDefault500, BlendMode.srcIn)),
          const SizedBox(height: 12),
          Text(
            'No Items Found',
            style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Receipt items are not available for this transaction.',
            style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Padding _buildTransactionInfo() {
    // Use transaction data instead of hardcoded values
    final date = vm.transaction.date;
    final subtotal = vm.transaction.subtotal ?? 0.0;
    final deliveryFee = vm.transaction.deliveryFee ?? 0.0;
    final taxes = vm.transaction.taxes ?? 0.0;
    final discount = vm.transaction.discount ?? 0.0;
    final tip = vm.transaction.tip ?? 0.0;
    final total = vm.transaction.amount.replaceAll('\$', '').replaceAll(',', '');
    final cardAmount = vm.transaction.amount.replaceAll('\$', '').replaceAll(',', '');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(tr(LocaleKeys.wallet_receipt_payment), style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
                const Spacer(),
                Text(date, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            color: AppColors.stateBaseWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                children: [
                  _buildTransactionRow('Subtotal:', subtotal),
                  _buildTransactionRow('Delivery Fee:', deliveryFee),
                  _buildTransactionRow('Taxes & Estimated Fees:', taxes),
                  _buildTransactionRow('Discount:', discount),
                  _buildTransactionRow('Delivery  Tip:', tip),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(tr(LocaleKeys.wallet_receipt_total), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHigh700)),
                      const Spacer(),
                      Text('\$${double.tryParse(total)?.toStringAsFixed(2) ?? '0.00'}', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: AppColors.stateBaseWhite,
              border: Border(top: BorderSide(color: AppColors.stateGreyLowestHover100)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                children: [
                  Assets.icons.icVisa.svg(),
                  const SizedBox(width: 12),
                  Text(tr(LocaleKeys.wallet_cardDisplay), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                  const Spacer(),
                  Text('\$${double.tryParse(cardAmount)?.toStringAsFixed(2) ?? '0.00'}', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionRow(String label, double value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(label, style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHigh700)),
          const Spacer(),
          Text('\$${value.toStringAsFixed(2)}', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
        ],
      ),
    );
  }

  Padding _buildReceiptActions() {
    final fileSize = vm.transaction.fileSize ?? 'N/A';
    final List<ReceiptAction> actions = [
      (icon: Assets.icons.icInvoice, label: tr(LocaleKeys.wallet_receipt_downloadPdf), onTap: () {}),
      (icon: Assets.icons.icEmailIcon, label: tr(LocaleKeys.wallet_receipt_resendEmail), onTap: () {}),
      (icon: Assets.icons.icShare, label: tr(LocaleKeys.wallet_receipt_share), onTap: () {}),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tr(LocaleKeys.wallet_receipt_title), style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
          const SizedBox(height: 16),
          ...List.generate(actions.length, (index) {
            final action = actions[index];
            return Column(
              children: [
                InkWell(
                  onTap: action.onTap,
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        action.icon.svg(width: 28, height: 28, colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(action.label, style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                        ),
                        Text(fileSize, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
                      ],
                    ),
                  ),
                ),
                if (index != actions.length - 1) Divider(height: 1, color: AppColors.stateGreyLowestHover100),
              ],
            );
          }),
        ],
      ),
    );
  }
}
