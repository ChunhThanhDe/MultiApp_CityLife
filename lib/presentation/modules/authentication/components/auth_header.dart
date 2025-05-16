import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const AuthHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title,
          style: AppTextStyle.s28w600,
          maxLines: 1,
        ),
        Text(
          subtitle,
          style: AppTextStyle.s16w400,
          maxLines: 2,
        ),
      ],
    );
  }
}
