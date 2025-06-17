import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class TermOfService extends StatelessWidget {
  const TermOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AutoSizeText.rich(
          textAlign: TextAlign.center,
          maxLines: 1,
          minFontSize: 8,
          stepGranularity: 0.5,
          overflow: TextOverflow.ellipsis,
          TextSpan(
            children: [
              TextSpan(
                text: tr(LocaleKeys.authentication_termsOfService_agreeTo),
                style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
              ),
              TextSpan(
                text: tr(LocaleKeys.authentication_termsOfService_termsOfService),
                style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textGreyHighest950),
              ),
            ],
          ),
        ),
        AutoSizeText.rich(
          textAlign: TextAlign.center,
          maxLines: 1,
          minFontSize: 8,
          stepGranularity: 0.5,
          overflow: TextOverflow.ellipsis,
          TextSpan(
            children: [
              TextSpan(
                text: tr(LocaleKeys.authentication_termsOfService_confirmRead),
                style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
              ),
              TextSpan(
                text: tr(LocaleKeys.authentication_termsOfService_privacyPolicy),
                style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textGreyHighest950),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
