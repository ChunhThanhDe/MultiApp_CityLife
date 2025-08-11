import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class DeliveryOptionTile extends StatelessWidget {

  const DeliveryOptionTile({required this.svgIcon, required this.title, required this.subtitle, required this.price, required this.isSelected, required this.onTap, super.key, this.showArrow = false});
  final String svgIcon; // Thay vì IconData
  final String title;
  final String subtitle;
  final String price;
  final bool isSelected;
  final bool showArrow;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.stateBrandLowest50 : AppColors.stateBaseWhite,
          border: Border.all(color: isSelected ? AppColors.stateBrandLow200 : AppColors.alphaGrey10),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            // Svg icon
            SvgPicture.asset(svgIcon, width: 24, height: 24, colorFilter: ColorFilter.mode(AppColors.textGreyDefault500, BlendMode.srcIn)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.textBaseGrey950),
                  ),
                  Text(subtitle, style: TextStyle(fontSize: 12, color: AppColors.textGreyDefault500)),
                ],
              ),
            ),
            if (price.isNotEmpty) Text(price, style: TextStyle(fontSize: 16, color: AppColors.textBaseGrey950)),
            if (showArrow) Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppColors.textGreyDefault500),
            if (isSelected) Icon(Icons.check_circle, color: AppColors.stateBrandDefault500, size: 24),
          ],
        ),
      ),
    );
  }
}
