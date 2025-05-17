import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';

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
    return Placeholder();
  }
}
