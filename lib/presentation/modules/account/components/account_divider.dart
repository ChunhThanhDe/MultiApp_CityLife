import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60.w),
      child: Divider(color: AppColors.stateGreyLowestHover100, height: 0, thickness: 1),
    );
  }
}
