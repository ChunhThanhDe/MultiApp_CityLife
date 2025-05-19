import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final int titleMaxLines;
  final int subtitleMaxLines;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  const AuthHeader({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleMaxLines = 1,
    this.subtitleMaxLines = 2,
    this.titleStyle,
    this.subtitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title,
          style: titleStyle ?? AppTextStyles.typographyH6SemiBold.copyWith(color: AppColors.tokenColorsTextGreyHighest950),
          maxLines: titleMaxLines,
        ),
        Text(
          subtitle,
          style: subtitleStyle ?? AppTextStyles.typographyH10Regular.copyWith(color: AppColors.tokenColorsTextGreyHigh700),
          maxLines: subtitleMaxLines,
        ),
      ],
    );
  }
}
