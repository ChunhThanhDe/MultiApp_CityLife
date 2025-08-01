import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class SectionBreakDivider extends StatelessWidget {

  const SectionBreakDivider({super.key, this.color, this.height});
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? 6,
      decoration: BoxDecoration(color: color ?? AppColors.stateGreyLowest50),
    );
  }
}
