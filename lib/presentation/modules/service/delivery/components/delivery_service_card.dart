import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class ServiceCard extends StatelessWidget {

  const ServiceCard({required this.svgAsset, required this.title, required this.description, this.onTap, super.key});
  final String svgAsset;
  final String title;
  final String description;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 170,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        decoration: BoxDecoration(color: AppColors.stateGreyLowestHover100, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            SvgPicture.asset(svgAsset, width: 44, height: 44, colorFilter: ColorFilter.mode(AppColors.stateBrandDefault500, BlendMode.srcIn)),
            const SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textBaseGrey950),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              description,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textGreyDefault500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
