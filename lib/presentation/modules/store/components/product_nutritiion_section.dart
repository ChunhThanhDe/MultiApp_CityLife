import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';

class ProductNutritionSection extends StatelessWidget {
  const ProductNutritionSection({required this.details, required this.ingredients, required this.nutritions, super.key});
  final String details;
  final String ingredients;
  final List<Nutrition>? nutritions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Details
          Text(
            'Details',
            style: AppTextStyles.typographyH10SemiBold.tint(AppColors.textGreyHighest950),
          ),
          const SizedBox(height: 8),
          Text(details, style: AppTextStyles.typographyH11Regular.tint(AppColors.textGreyHighest950).copyWith(height: 1.6)),
          const SizedBox(height: 16),
          // Ingredients
          Text(
            'Ingredients',
            style: AppTextStyles.typographyH10SemiBold.tint(AppColors.textGreyHighest950),
          ),
          const SizedBox(height: 8),
          Text(ingredients, style: AppTextStyles.typographyH11Regular.tint(AppColors.textGreyHighest950).copyWith(height: 1.6)),
          if (nutritions != null && nutritions!.isNotEmpty) ...[
            const SizedBox(height: 20),
            // Nutrition Facts box
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backgroundSurfaceTertiaryGrey50,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.stateGreyLowestHover100),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Label Nutrition Facts
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                    child: Text(
                      'Nutrition Facts',
                      style: AppTextStyles.typographyH10SemiBold.tint(AppColors.textGreyHighest950),
                    ),
                  ),
                  // List nutrition rows
                  ...nutritions!.map((item) {
                    final splits = item.nutrition.split(RegExp(r'(?<=\D)\s(?=\d)'));
                    final name = splits.first.trim();
                    final value = splits.length > 1 ? splits[1].trim() : '';
                    return Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              name[0].toUpperCase() + name.substring(1), // Capitalize
                              style: AppTextStyles.typographyH11Medium.tint(AppColors.textGreyHighest950),
                            ),
                          ),
                          Text(
                            value,
                            style: AppTextStyles.typographyH11Regular.tint(AppColors.textGreyHigh700),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
