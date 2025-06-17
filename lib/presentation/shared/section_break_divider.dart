import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';

class SectionBreakDivider extends StatelessWidget {
  final Color? color;
  final double? height;

  const SectionBreakDivider({
    super.key,
    this.color,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? 6,
      decoration: BoxDecoration(
        color: color ?? AppColors.stateGreyLowest50,
      ),
    );
  }
}
