import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
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
        const Divider(color: Color(0xFFE8EBEE), thickness: 1),
        SizedBox(height: 16.h),
        _buildGotoPage(),
        SizedBox(height: 56.h),
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
                text: isSignIn ? 'Don\'t have an account? ' : 'Already have an account? ',
                style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
              ),
              TextSpan(
                text: isSignIn ? 'Sign up' : 'Log in',
                style: AppTextStyle.s16w500.copyWith(color: AppColors.textBrandDefault500),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
