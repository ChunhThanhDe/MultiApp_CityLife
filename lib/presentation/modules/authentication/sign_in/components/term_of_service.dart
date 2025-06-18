import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/shared/highlighted_text.dart';

class TermOfService extends StatelessWidget {
  const TermOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HighlightedText(
          text: tr(LocaleKeys.authentication_termsOfService_agreeToTermsOfService),
          highlights: [tr(LocaleKeys.authentication_termsOfService_termsOfService)],
          highlightStyle: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textGreyHighest950),
          normalTextStyle: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
          maxLines: 1,
        ),
        HighlightedText(
          text: tr(LocaleKeys.authentication_termsOfService_confirmReadPrivacyPolicy),
          highlights: [tr(LocaleKeys.authentication_termsOfService_privacyPolicy)],
          highlightStyle: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textGreyHighest950),
          normalTextStyle: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
          maxLines: 1,
        ),
      ],
    );
  }
}
