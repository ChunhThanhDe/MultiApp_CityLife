import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';

import 'view_receipt_controller.dart';

class ViewReceiptScreen extends BaseScreen<ViewReceiptController> {
  const ViewReceiptScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      surfaceTintColor: AppColors.stateBaseWhite,
      backgroundColor: AppColors.stateBaseWhite,
      title: Text('Receipt ', style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950)),
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Assets.icons.icLeftArrowChervon.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)),
      ),
      actions: [
        Row(
          children: [
            Text(
              '#203358',
              style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHighest950),
            ),
            const SizedBox(width: 8),
            Assets.icons.icInvoice.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)),
            const SizedBox(width: 24),
          ],
        )
      ],
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBrandInfo(),
        const SizedBox(height: 16),
        _buildDeliveryPersonInfo(),
        SectionBreakDivider(),
        const SizedBox(height: 16),
        _buildItemsInfo(),
      ],
    );
  }

  Container _buildBrandInfo() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(color: const Color(0xFF006241)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          ClipOval(
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/150px-Starbucks_Corporation_Logo_2011.svg.png',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Starbucks®',
                style: AppTextStyle.s24w600.copyWith(color: AppColors.textBaseWhite),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  Text(
                    'Completed',
                    style: AppTextStyle.s12w400.copyWith(color: AppColors.textBaseWhite),
                  ),
                  Text(
                    '•',
                    style: AppTextStyle.s12w400.copyWith(color: AppColors.textBaseWhite),
                  ),
                  Text(
                    '7:25 PM',
                    style: AppTextStyle.s12w400.copyWith(color: AppColors.textBaseWhite),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Assets.icons.icRightArrowChevron.svg(colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn)),
        ],
      ),
    );
  }

  _buildDeliveryPersonInfo() {
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
            child: Image.network(
              'https://yt3.googleusercontent.com/c-Z7mIlntSpG6VyQ5ZqaPggqkZRhaySr-H5ZEazFN2iR1pP4eD1UGekwu0y--c4CSVhJJ1A4QT8=s900-c-k-c0x00ffffff-no-rj',
              width: 32,
              height: 32,
              fit: BoxFit.cover,
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
                  child: Text(
                    'Abdulkadir Ali',
                    style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
                  ),
                ),
                SizedBox(
                  width: 261,
                  child: Text(
                    'Toyota Camry • 84D23B63',
                    style: AppTextStyle.s12w400.copyWith(color: AppColors.textGreyHigh700),
                  ),
                ),
              ],
            ),
          ),
          Text('84%', style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHigh700)),
          Assets.icons.icLikeFilled.svg(),
        ],
      ),
    );
  }

  _buildItemsInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Items',
            style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950),
          ),
          const SizedBox(height: 16),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: vm.items.length,
            separatorBuilder: (context, index) => Column(
              children: const [
                SizedBox(height: 16),
                Divider(height: 1, color: AppColors.stateGreyLowestHover100),
                SizedBox(height: 16),
              ],
            ),
            itemBuilder: (context, index) {
              final item = vm.items[index];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.network(
                      item.image,
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '\$${item.price}',
                          style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHigh700),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: AppColors.stateGreyLowest50,
                      shape: BoxShape.circle,
                    ),
                    child: Assets.icons.icPlusAdd.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
