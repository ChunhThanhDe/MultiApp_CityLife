import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/theme.dart';

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
        Divider(color: Figma.theme.tokenColorsStateBrandDefault500, thickness: 1),
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
                style: AppTextStyles.typographyH10Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
              ),
              TextSpan(
                text: isSignIn ? 'Sign up' : 'Log in',
                style: AppTextStyles.typographyH10SemiBold.copyWith(color: Figma.theme.tokenColorsTextBrandDefault500),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
