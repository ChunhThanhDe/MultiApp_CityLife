import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_password/account_password_controller.dart';
import 'package:sixam_mart_user/presentation/modules/account/components/password_input.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

class AccountPasswordScreen extends BaseScreen<AccountPasswordController> {
  const AccountPasswordScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Password', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text('Change My Password', style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950)),
                  const SizedBox(height: 8),
                  Text(
                    'In order to best protect your account, please select a password that is at least 8 characters long and contains a combination of uppercase and lowercase letters, numbers and/or symbols.',
                    style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700, height: 1.42),
                  ),
                  const SizedBox(height: 24),

                  // Old Password
                  Obx(
                    () => PasswordInput(
                      label: 'Old Password',
                      controller: controller.oldController,
                      isObscure: !controller.showOldPassword.value,
                      onToggle: controller.toggleOld,
                      validator: controller.validateOldPassword,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // New Password
                  Obx(
                    () => PasswordInput(
                      label: 'New password',
                      controller: controller.newController,
                      isObscure: !controller.showNewPassword.value,
                      onToggle: controller.toggleNew,
                      validator: controller.validateNewPassword,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Confirm New Password
                  Obx(
                    () => PasswordInput(
                      label: 'Confirm new password',
                      controller: controller.confirmController,
                      isObscure: !controller.showConfirmPassword.value,
                      onToggle: controller.toggleConfirm,
                      validator: controller.validateConfirmPassword,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text('We recommend choosing a password that:', style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textGreyHighest950)),
                  const SizedBox(height: 8),
                  _recommendationText(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
        // Bottom actions
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          decoration: BoxDecoration(
            color: AppColors.backgroundSurfacePrimaryWhite,
            border: Border(top: BorderSide(color: AppColors.alphaGrey10)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                child: Obx(
                  () => ElevatedButton(
                    onPressed: controller.isLoading.value ? null : controller.onChangePassword,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.stateBrandDefault500,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      elevation: 0,
                      disabledBackgroundColor: AppColors.stateBrandDefault500.withValues(alpha: 0.6),
                    ),
                    child: controller.isLoading.value
                        ? SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(AppColors.backgroundSurfacePrimaryWhite)))
                        : Text('Change password', style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.backgroundSurfacePrimaryWhite)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  "Don't use the same password on different services, especially if you are using the same Username.",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }

  // Recommendations widget
  Widget _recommendationText() {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: Icon(Icons.circle, size: 6, color: AppColors.textGreyHigh700),
            ),
          ),
          TextSpan(
            text: 'Is unique and not used for another service.\n',
            style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700),
          ),
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: Icon(Icons.circle, size: 6, color: AppColors.textGreyHigh700),
            ),
          ),
          TextSpan(
            text: 'Is at least 8 characters long.\n',
            style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700),
          ),
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: Icon(Icons.circle, size: 6, color: AppColors.textGreyHigh700),
            ),
          ),
          TextSpan(
            text: 'Includes uppercase/lowercase letters, numbers, and symbols.\n',
            style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700),
          ),
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: Icon(Icons.circle, size: 6, color: AppColors.textGreyHigh700),
            ),
          ),
          TextSpan(
            text: 'Is not your company ID or special character (q!@#\$...).',
            style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700),
          ),
        ],
      ),
    );
  }
}
