import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_category_section.dart';
// import 'package:sixam_mart_user/presentation/modules/store/components/store_filter_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';

class StoreProductCategories extends StatelessWidget {
  const StoreProductCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StoreController>(
      builder: (controller) {
        final List<Widget> categoryWidgets = [];

        // Only show popular items if not empty
        if (controller.popularItems.isNotEmpty) {
          categoryWidgets.add(ProductCategorySection(title: 'Popular Items', items: controller.popularItems));
          categoryWidgets.add(SectionBreakDivider(color: AppColors.stateGreyLowestHover100, height: 1));
        }

        // Only show filter section if there are categories to filter
        final Map<String, List<ProductItem>> filteredCategories = controller.filteredCategories;

        // NOTE: None API info
        // if (filteredCategories.isNotEmpty) {
        //   categoryWidgets.add(const StoreFilterSection());
        // }

        // Add categories with filtered items
        filteredCategories.forEach((categoryTitle, items) {
          if (items.isNotEmpty) {
            categoryWidgets.add(ProductCategorySection(title: categoryTitle, items: items));
          }
        });

        // Show message when no data available at all
        if (controller.popularItems.isEmpty && filteredCategories.isEmpty) {
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

        // Add bottom spacing only if there are widgets to show
        if (categoryWidgets.isNotEmpty) {
          categoryWidgets.add(SizedBox(height: 100.h));
        }

        return SliverList(delegate: SliverChildListDelegate(categoryWidgets));
      },
    );
  }
}
