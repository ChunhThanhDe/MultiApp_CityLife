import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';

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
                  tr(LocaleKeys.address_enterTitle),
                  style: AppTextStyles.typographyH8Medium.copyWith(color: AppColors.textGreyHighest950),
                ),
                Text(
                  tr(LocaleKeys.address_enterSubtitle),
                  style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
                ),
                const SizedBox(height: 24),
                AppButton(
                  onTap: () => Get.toNamed('${AppRoutes.address}/${AppRoutes.searchAddress}'),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    tr(LocaleKeys.address_addButton),
                    style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBaseWhite),
                  ),
                ),
                SizedBox(height: 16),
                AppButton(
                  onTap: () {},
                  width: double.infinity,
                  color: AppColors.stateGreyLowest50,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    tr(LocaleKeys.address_skipButton),
                    style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
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
