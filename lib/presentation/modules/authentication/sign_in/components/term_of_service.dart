import 'package:flutter/material.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_screen.dart';

class TermOfService extends StatelessWidget {
  const TermOfService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By continuing, you agree to Diyaar ',
            style: AppTextStyle.s14w400.copyWith(
              color: const Color(0xFF4A5763),
            ),
          ),
          TextSpan(
            text: 'Terms of Service',
            style: AppTextStyle.s16w600.copyWith(
              color: const Color(0xFF161A1D),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: '  and confirm that you have read Diyaar  ',
            style: AppTextStyle.s14w400.copyWith(
              color: const Color(0xFF4A5763),
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppTextStyle.s16w600.copyWith(
              color: const Color(0xFF161A1D),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
