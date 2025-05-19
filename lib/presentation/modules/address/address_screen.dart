import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/theme.dart';

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
                  style: AppTextStyles.typographyH8Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
                ),
                Text(
                  'We need your address to show Food, Groceries and more near you',
                  style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHigh700),
                ),
                const SizedBox(height: 24),
                AppButton(
                  onTap: () => Get.toNamed('${AppRoutes.address}/${AppRoutes.searchAddress}'),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    'Add your address',
                    style: AppTextStyles.typographyH10Medium.copyWith(color: Figma.theme.tokenColorsTextBaseWhite),
                  ),
                ),
                SizedBox(height: 16),
                AppButton(
                  onTap: () {},
                  width: double.infinity,
                  color: Figma.theme.tokenColorsStateGreyLowest50,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    'Skip for now',
                    style: AppTextStyles.typographyH10Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
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
