import 'package:flutter/material.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';

class SectionBreakDivider extends StatelessWidget {
  const SectionBreakDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 6,
      decoration: BoxDecoration(
        color: AppColors.stateGreyLowest50,
      ),
    );
  }
}
