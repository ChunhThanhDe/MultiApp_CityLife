import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_2_step_verification/account_2_step_verification_controller.dart';
import 'package:sixam_mart_user/presentation/modules/account/components/account_divider.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Account2StepVerificationScreen extends BaseScreen<Account2StepVerificationController> {
  const Account2StepVerificationScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Security', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tr(LocaleKeys.account_secondSteps), style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950)),
                    const SizedBox(height: 8),
                    Text(
                      'Make sure you can access your SpeedEats Account by keeping this information up to date and adding more sign-in options',
                      style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700, height: 1.42),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              // Cell items
              _CellItem(icon: Icons.sms, title: 'Text Message (SMS)', subtitle: '+1 (000) 000-0000', checked: true, onTap: () {}),
              const CustomDivider(),
              _CellItem(icon: Icons.email_outlined, title: 'Email', subtitle: 'kadir@lukit.com', checked: true, onTap: () {}),
              const CustomDivider(),
              _CellItem(icon: Icons.qr_code_2, title: 'Authenticator', subtitle: 'Add authenticator app', checked: false, showArrow: true, onTap: () {}),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}

class _CellItem extends StatelessWidget {
  const _CellItem({required this.icon, required this.title, required this.subtitle, this.checked = false, this.showArrow = false, this.onTap});
  final IconData icon;
  final String title;
  final String subtitle;
  final bool checked;
  final bool showArrow;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundSurfacePrimaryWhite.withValues(alpha: 0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
          child: Row(
            children: [
              Icon(icon, color: AppColors.textGreyHigh700),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                    Text(subtitle, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)),
                  ],
                ),
              ),
              if (checked) Icon(Icons.check, color: AppColors.textGreyHigh700) else if (showArrow) Icon(Icons.chevron_right, color: AppColors.textGreyHigh700),
            ],
          ),
        ),
      ),
    );
  }
}
