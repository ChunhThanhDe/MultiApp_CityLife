import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/shared/app_image.dart';
import 'package:sixam_mart_user/theme.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(top: 54.h, left: 24.w, right: 24.w, bottom: 24.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AppImageProvider.network('https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=800'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                _circularButton(Icons.arrow_back, () => Get.back()),
                Spacer(),
                _circularButton(Icons.search, () {}),
                SizedBox(width: 12.w),
                _circularButton(Icons.favorite_border, () {}),
              ],
            ),
            SizedBox(height: 88.h),
            _buildStoreHeader(),
          ],
        ),
      ),
    );
  }

  Widget _circularButton(IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(6.w),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Icon(icon, color: AppColors.textGreyHighest950),
      ),
    );
  }

  Widget _buildStoreHeader() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          padding: EdgeInsets.all(16.w),
          color: AppColors.stateBaseWhite.withValues(alpha: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: AppImage.network(
                      'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
                      width: 56.w,
                      height: 56.w,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Starbucks®', style: AppTextStyles.typographyH7SemiBold),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            Icon(Icons.star, size: 16.w, color: Colors.black),
                            SizedBox(width: 4.w),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: '4.2 ', style: AppTextStyles.typographyH12SemiBold),
                                  TextSpan(text: '(300+ ratings)', style: AppTextStyles.typographyH12Regular),
                                  TextSpan(text: ' • ', style: AppTextStyles.typographyH12Regular),
                                  TextSpan(text: '2.5 Mile', style: AppTextStyles.typographyH12Regular),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border, color: AppColors.textGreyDefault500),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
