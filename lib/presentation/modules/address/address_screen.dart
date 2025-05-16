import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Assets.images.imgAddress.image(),
                Spacer(),
                Text(
                  'Enter your address',
                  style: AppTextStyle.s20w600.copyWith(color: AppColors.textGreyHighest950),
                ),
                Text(
                  'We need your address to show Food, Groceries and more near you',
                  style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHigh700),
                ),
                const SizedBox(height: 24),
                AppButton(
                  onTap: () => Get.toNamed('${AppRoutes.address}/${AppRoutes.searchAddress}'),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    'Add your address',
                    style: AppTextStyle.s16w500.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(height: 16),
                AppButton(
                  onTap: () {},
                  width: double.infinity,
                  color: AppColors.stateGreyLowest50,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    'Skip for now',
                    style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
                  ),
                ),
                SizedBox(height: 52),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
