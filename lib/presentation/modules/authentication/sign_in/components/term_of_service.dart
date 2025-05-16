import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';

class TermOfService extends StatelessWidget {
  const TermOfService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By continuing, you agree to Diyaar ',
              style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHigh700),
            ),
            TextSpan(
              text: 'Terms of Service',
              style: AppTextStyle.s16w600.copyWith(color: AppColors.textGreyHighest950),
            ),
            TextSpan(
              text: '\nand confirm that you have read Diyaar  ',
              style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHigh700),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: AppTextStyle.s16w600.copyWith(color: AppColors.textGreyHighest950),
            ),
          ],
        ),
      ),
    );
  }
}
