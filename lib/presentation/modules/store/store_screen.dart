import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/app_tabbar.dart';
import 'package:sixam_mart_user/theme.dart';

import 'store_controller.dart';

class StoreScreen extends BaseScreen<StoreController> {
  const StoreScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _buildAppBar(),
        _buildServiceOptions(),
        _buildProductCategories(),
      ],
    );
  }

  Widget _buildAppBar() {
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

  Widget _buildServiceOptions() {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.stateBaseWhite,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: GetBuilder<StoreController>(
          builder: (controller) {
            return AppTabBar(
              tabController: controller.serviceTabController,
              listTab: [
                _buildServiceTab(Icons.store, 'In store'),
                _buildServiceTab(Icons.delivery_dining, 'Delivery'),
                _buildServiceTab(Icons.drive_eta, 'Drive thru'),
              ],
              onTap: (index) => controller.serviceTabController.animateTo(index),
            );
          },
        ),
      ),
    );
  }

  Widget _buildServiceTab(IconData icon, String label) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16.w,
          ),
          SizedBox(width: 8.w),
          Text(
            label,
            style: AppTextStyles.typographyH12Medium,
          ),
        ],
      ),
    );
  }

  Widget _buildProductCategories() {
    return GetBuilder<StoreController>(
      builder: (controller) {
        List<Widget> categoryWidgets = [_buildCategorySection('Popular Items', controller.popularItems), _buildFilterSection()];

        Map<String, List<ProductItem>> filteredCategories = controller.filteredCategories;

        // Add categories with filtered items
        filteredCategories.forEach((categoryTitle, items) {
          categoryWidgets.add(_buildCategorySection(categoryTitle, items));
        });

        // Show message when no categories available for selected filter
        if (filteredCategories.isEmpty) {
          categoryWidgets.add(
            Container(
              padding: EdgeInsets.all(24.w),
              child: Column(
                children: [
                  SizedBox(height: 50.h),
                  Icon(
                    Icons.inbox_outlined,
                    size: 64.w,
                    color: AppColors.textGreyDefault500,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'No items available',
                    style: AppTextStyles.typographyH7SemiBold.copyWith(
                      color: AppColors.textGreyDefault500,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'We\'ll add more items to this category soon.',
                    style: AppTextStyles.typographyH12Regular.copyWith(
                      color: AppColors.textGreyDefault500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        categoryWidgets.add(SizedBox(height: 100.h));

        return SliverList(
          delegate: SliverChildListDelegate(categoryWidgets),
        );
      },
    );
  }

  Widget _buildFilterSection() {
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

  Widget _buildCategorySection(String title, List<ProductItem> items) {
    return Container(
      color: AppColors.stateBaseWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyles.typographyH9SemiBold.copyWith(
                    color: AppColors.textGreyHighest950,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16.w,
                  color: AppColors.textGreyDefault500,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: items.length,
              itemBuilder: (context, index) => _buildProductCard(items[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(ProductItem item) {
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
                decoration: BoxDecoration(
                  color: AppColors.stateGreyLowest50,
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: NetworkImage(item.imageUrl),
                    fit: BoxFit.cover,
                  ),
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
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadowSm5,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.add,
                    size: 20.w,
                    color: AppColors.stateBrandDefault500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            item.name,
            style: AppTextStyles.typographyH11Medium.copyWith(
              color: AppColors.textGreyHighest950,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.h),
          Text(
            item.price,
            style: AppTextStyles.typographyH12Regular.copyWith(
              color: AppColors.textGreyDefault500,
            ),
          ),
        ],
      ),
    );
  }
}
