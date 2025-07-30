import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';

class StoreFilterBottomSheet {
  static void show() {
    showAppBottomSheet(
      child: SizedBox(
        height: Get.height * 0.6,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            _FilterHeader(),
            _FilterDivider(),
            _FilterCategoriesList(),
            _DismissButton(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}

class _FilterHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
        child: Text('Filter menu', style: AppTextStyles.typographyH8SemiBold),
      ),
    );
  }
}

class _FilterDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      color: AppColors.textGreyLow300,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
    );
  }
}

class _FilterCategoriesList extends StatelessWidget {
  static const List<String> filterCategories = [
    'Hot Coffees',
    'Cold Coffees',
    'Starbucks Refreshers® Beverages',
    'Frappuccino® Blended Beverages',
    'Iced Tea and Lemonade',
    'Hot Teas',
    'Milk, Juice & More',
    'Bottled Beverages',
    'Hot Breakfast',
    'Oatmeal & Yogurt',
    'Bakery',
    'Hot Coffees',
    'Cold Coffees',
    'Starbucks Refreshers® Beverages',
    'Frappuccino® Blended Beverages',
    'Iced Tea and Lemonade',
    'Hot Teas',
    'Milk, Juice & More',
    'Bottled Beverages',
    'Hot Breakfast',
    'Oatmeal & Yogurt',
    'Bakery',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: filterCategories.map((category) => _FilterItem(category)).toList()),
        ),
      ),
    );
  }
}

class _FilterItem extends StatelessWidget {

  const _FilterItem(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Get.back,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Text(title, style: AppTextStyles.typographyH11Regular),
      ),
    );
  }
}

class _DismissButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: AppButton(
        width: double.infinity,
        borderRadius: BorderRadius.circular(32.r),
        padding: EdgeInsets.symmetric(vertical: 12.h),
        onTap: Get.back,
        child: Text('Dismiss', style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBaseWhite)),
      ),
    );
  }
}
