import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_card.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';

class ProductCategorySection extends StatelessWidget {
  const ProductCategorySection({required this.title, required this.items, super.key});
  final String title;
  final List<ProductItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.stateBaseWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionBreakDivider(color: AppColors.stateGreyLowestHover100, height: 1),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: AppTextStyles.typographyH9SemiBold.copyWith(color: AppColors.textGreyHighest950)),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.storeProducts, arguments: {
                      'products': items,
                      'storename': title,
                    });
                  },
                  child: Icon(Icons.arrow_forward_ios, size: 16.w, color: AppColors.textGreyDefault500),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: items.length,
              itemBuilder: (context, index) => ProductCard(item: items[index]),
            ),
          ),
        ],
      ),
    );
  }
}
