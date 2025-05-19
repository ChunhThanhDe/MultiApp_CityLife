import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';

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
              style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.tokenColorsTextGreyHigh700),
            ),
            TextSpan(
              text: 'Terms of Service',
              style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.tokenColorsTextGreyHighest950),
            ),
            TextSpan(
              text: '\nand confirm that you have read Diyaar  ',
              style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.tokenColorsTextGreyHigh700),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.tokenColorsTextGreyHighest950),
            ),
          ],
        ),
      ),
    );
  }
}
