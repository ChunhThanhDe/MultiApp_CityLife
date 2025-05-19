import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/theme.dart';

import 'home_controller.dart';

class HomeScreen extends BaseScreen<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppButton(
            color: AppColors.tokenColorsStateBrandDefault500,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            onTap: () {
              Get.toNamed(AppRoutes.signIn);
            },
            child: Text('Sign In', style: AppTextStyles.typographyH10Bold.copyWith(color: Colors.white)),
          ),
          SizedBox(height: 16.h),
          AppButton(
            onTap: () {
              Get.toNamed(AppRoutes.signUp);
            },
            color: AppColors.tokenColorsStateBrandDefault500,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Text('Sign Up', style: AppTextStyles.typographyH10Bold.copyWith(color: Colors.white)),
          ),
          SizedBox(height: 16.h),
          AppButton(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            onTap: () {
              Get.toNamed(AppRoutes.address);
            },
            child: Text(
              'Address',
              style: AppTextStyles.typographyH10Bold.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
