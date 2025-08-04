import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_category_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_filter_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';

class StoreProductCategories extends StatelessWidget {
  const StoreProductCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StoreController>(
      builder: (controller) {
        final List<Widget> categoryWidgets = [
          ProductCategorySection(title: 'Popular Items', items: controller.popularItems),
          SectionBreakDivider(color: AppColors.stateGreyLowestHover100, height: 1),
          const StoreFilterSection(),
        ];

        final Map<String, List<ProductItem>> filteredCategories = controller.filteredCategories;

        // Add categories with filtered items
        filteredCategories.forEach((categoryTitle, items) {
          categoryWidgets.add(ProductCategorySection(title: categoryTitle, items: items));
        });

        // Show message when no categories available for selected filter
        if (filteredCategories.isEmpty) {
          categoryWidgets.add(
            Container(
              padding: EdgeInsets.all(24.w),
              child: Column(
                children: [
                  SizedBox(height: 50.h),
                  Icon(Icons.inbox_outlined, size: 64.w, color: AppColors.textGreyDefault500),
                  SizedBox(height: 16.h),
                  Text('No items available', style: AppTextStyles.typographyH7SemiBold.copyWith(color: AppColors.textGreyDefault500)),
                  SizedBox(height: 8.h),
                  Text(
                    'We\'ll add more items to this category soon.',
                    style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        categoryWidgets.add(SizedBox(height: 100.h));

        return SliverList(delegate: SliverChildListDelegate(categoryWidgets));
      },
    );
  }
}
