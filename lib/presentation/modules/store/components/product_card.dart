import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';

class
/// The `ProductCard` class is a Flutter widget that represents a card used to display product
/// information in a store application. It takes a `ProductItem` object as a parameter and
/// displays the product's image, name, and price in a visually appealing layout.
ProductCard
    extends StatelessWidget {
  final ProductItem item;

  const ProductCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 120.h,
                decoration: BoxDecoration(color: AppColors.stateGreyLowest50, borderRadius: BorderRadius.circular(12.r)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: AppImage.network(item.imageUrl, width: 120.w, height: 120.h),
                ),
              ),
              Positioned(
                bottom: 8.h,
                right: 8.w,
                child: Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: BoxDecoration(
                    color: AppColors.stateBaseWhite,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: AppColors.shadowSm5, blurRadius: 4, offset: Offset(0, 2))],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      showAppSnackBar(title: 'Add to cart');
                    },
                    child: Icon(Icons.add, size: 20.w),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            item.name,
            style: AppTextStyles.typographyH11Medium.copyWith(color: AppColors.textGreyHighest950),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.h),
          Text(item.price, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
        ],
      ),
    );
  }
}
