import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({required this.item, required this.onImageTap, required this.onAddTap, super.key});
  final ProductItem item;
  final VoidCallback onImageTap;
  final VoidCallback onAddTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: Row(
        children: [
          // Nội dung bên trái
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name ?? '',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: AppColors.textGreyHighest950),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Text(
                      '\$${item.price ?? 0}',
                      style: TextStyle(fontSize: 12.sp, color: AppColors.textGreyDefault500),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '•',
                      style: TextStyle(fontSize: 12.sp, color: AppColors.stateBrandDefault500),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '',
                      style: TextStyle(fontSize: 12.sp, color: AppColors.textGreyDefault500),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  '${item.avgRating ?? 0} ★ (${item.ratingCount ?? 0}+)',
                  style: TextStyle(fontSize: 12.sp, color: AppColors.textGreyDefault500),
                ),
              ],
            ),
          ),
          // Ảnh + nút cộng
          GestureDetector(
            onTap: onImageTap,
            child: Container(
              width: 120.w,
              height: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(image: NetworkImage(item.imageUrl ?? ''), fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: onAddTap,
                  child: Container(
                    width: 36.w,
                    height: 36.w,
                    margin: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundSurfacePrimaryWhite,
                      border: Border.all(color: AppColors.backgroundSurfaceTertiaryGrey50),
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [BoxShadow(color: AppColors.textGreyHighest950.withValues(alpha: 0.08), blurRadius: 4, offset: const Offset(0, 2))],
                    ),
                    child: Icon(Icons.add, size: 24.w, color: AppColors.textGreyHighest950),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
