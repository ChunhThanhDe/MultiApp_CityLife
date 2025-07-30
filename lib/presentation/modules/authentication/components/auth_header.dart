import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({required this.title, required this.subtitle, super.key, this.titleMaxLines = 1, this.subtitleMaxLines = 2, this.titleStyle, this.subtitleStyle});
  final String title;
  final String subtitle;
  final int titleMaxLines;
  final int subtitleMaxLines;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title,
          style: titleStyle ?? AppTextStyles.typographyH6SemiBold.copyWith(color: AppColors.textGreyHighest950),
          maxLines: titleMaxLines,
        ),
        Text(
          subtitle,
          style: subtitleStyle ?? AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHigh700),
          maxLines: subtitleMaxLines,
        ),
      ],
    );
  }
}
