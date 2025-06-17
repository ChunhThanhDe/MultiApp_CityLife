import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';

class AuthBottomSection extends StatelessWidget {
  final VoidCallback? onTapChange;
  final bool isSignIn;
  const AuthBottomSection({super.key, this.onTapChange, required this.isSignIn});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Center(child: TermOfService()),
        SizedBox(height: 16.h),
        Divider(color: AppColors.stateGreyLowestHover100, thickness: 1),
        SizedBox(height: 16.h),
        _buildGotoPage(),
        SizedBox(height: 24.h),
      ],
    );
  }

  GestureDetector _buildGotoPage() {
    return GestureDetector(
      onTap: onTapChange ?? Get.back,
      child: Center(
        child: AutoSizeText.rich(
          maxLines: 1,
          TextSpan(
            children: [
              TextSpan(
                text: isSignIn ? tr(LocaleKeys.authentication_signIn_dontHaveAccount) : tr(LocaleKeys.authentication_signUp_alreadyHaveAccount),
                style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
              ),
              TextSpan(
                text: isSignIn ? tr(LocaleKeys.authentication_signIn_signUp) : tr(LocaleKeys.authentication_signUp_logIn),
                style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textBrandDefault500),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
