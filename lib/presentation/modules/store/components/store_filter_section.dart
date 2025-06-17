import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_controller.dart';
import 'package:sixam_mart_user/theme.dart';

class StoreFilterSection extends StatelessWidget {
  const StoreFilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.stateBaseWhite,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: GetBuilder<StoreController>(
        builder: (controller) {
          return Row(
            children: [
              _buildFilterChip(
                FilterType.all.icon,
                FilterType.all.label,
                isSelected: controller.isFilterSelected(FilterType.all),
                onTap: () => controller.selectFilter(FilterType.all),
              ),
              SizedBox(width: 12.w),
              _buildFilterChip(
                FilterType.drinks.icon,
                FilterType.drinks.label,
                isSelected: controller.isFilterSelected(FilterType.drinks),
                onTap: () => controller.selectFilter(FilterType.drinks),
              ),
              SizedBox(width: 12.w),
              _buildFilterChip(
                FilterType.foods.icon,
                FilterType.foods.label,
                isSelected: controller.isFilterSelected(FilterType.foods),
                onTap: () => controller.selectFilter(FilterType.foods),
              ),
              SizedBox(width: 12.w),
              _buildFilterChip(
                FilterType.atHome.icon,
                FilterType.atHome.label,
                isSelected: controller.isFilterSelected(FilterType.atHome),
                onTap: () => controller.selectFilter(FilterType.atHome),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFilterChip(IconData icon, String label, {bool isSelected = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.stateBrandDefault500 : AppColors.stateGreyLowest50,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 14.w,
              color: isSelected ? AppColors.textBaseWhite : AppColors.textGreyDefault500,
            ),
            SizedBox(width: 6.w),
            Text(
              label,
              style: AppTextStyles.typographyH12Medium.copyWith(
                color: isSelected ? AppColors.textBaseWhite : AppColors.textGreyDefault500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
