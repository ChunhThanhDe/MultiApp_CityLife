import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/theme.dart';

import 'store_controller.dart';

class StoreScreen extends BaseScreen<StoreController> {
  const StoreScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [_buildAppBar(), _buildStoreHeader(), _buildServiceOptions(), _buildProductCategories()],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 200.h,
      floating: false,
      pinned: true,
      backgroundColor: AppColors.stateBaseWhite,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: AppColors.textGreyHighest950),
        onPressed: () => Get.back(),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: AppColors.textGreyHighest950),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.qr_code_scanner, color: AppColors.textGreyHighest950),
          onPressed: () {},
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=800'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStoreHeader() {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.stateBaseWhite,
        padding: EdgeInsets.all(24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60.w,
                  height: 60.w,
                  decoration: BoxDecoration(
                    color: AppColors.stateSuccessDefault500,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Text(
                      'S',
                      style: AppTextStyles.typographyH6SemiBold.copyWith(
                        color: AppColors.textBaseWhite,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Starbucks®',
                            style: AppTextStyles.typographyH8SemiBold.copyWith(
                              color: AppColors.textGreyHighest950,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Icon(
                            Icons.verified,
                            size: 16.w,
                            color: AppColors.stateBrandDefault500,
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Icon(Icons.star, size: 16.w, color: Colors.orange),
                          SizedBox(width: 4.w),
                          Text(
                            '4.2 (300+ ratings)',
                            style: AppTextStyles.typographyH12Regular.copyWith(
                              color: AppColors.textGreyDefault500,
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Text(
                            '2.5 Mile',
                            style: AppTextStyles.typographyH12Regular.copyWith(
                              color: AppColors.textGreyDefault500,
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
    );
  }

  Widget _buildServiceOptions() {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.stateBaseWhite,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Row(
          children: [
            _buildServiceOption(Icons.store, 'In store', true),
            SizedBox(width: 24.w),
            _buildServiceOption(Icons.delivery_dining, 'Delivery', false),
            SizedBox(width: 24.w),
            _buildServiceOption(Icons.drive_eta, 'Drive thru', false),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceOption(IconData icon, String label, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.stateBrandLowestHover100 : AppColors.stateGreyLowest50,
        borderRadius: BorderRadius.circular(8.r),
        border: isSelected ? Border.all(color: AppColors.stateBrandDefault500, width: 1) : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16.w,
            color: isSelected ? AppColors.stateBrandDefault500 : AppColors.textGreyDefault500,
          ),
          SizedBox(width: 8.w),
          Text(
            label,
            style: AppTextStyles.typographyH12Medium.copyWith(
              color: isSelected ? AppColors.stateBrandDefault500 : AppColors.textGreyDefault500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCategories() {
    return SliverList(
      delegate: SliverChildListDelegate([
        _buildCategorySection('Popular Items', controller.popularItems),
        _buildFilterSection(),
        _buildCategorySection('Brewed Coffees', controller.brewedCoffees),
        _buildCategorySection('Hot Coffees', controller.hotCoffees),
        _buildCategorySection('Cold Coffees', controller.coldCoffees),
        _buildCategorySection('Starbucks Refreshers® Beverages', controller.refresherBeverages),
        _buildCategorySection('Frappuccino® Blended Beverages', controller.frappuccinoBeverages),
        _buildCategorySection('Iced Tea and Lemonade', controller.icedTeaLemonade),
        _buildCategorySection('Hot Teas', controller.hotTeas),
        _buildCategorySection('Bottled Beverages', controller.bottledBeverages),
        SizedBox(height: 100.h),
      ]),
    );
  }

  Widget _buildFilterSection() {
    return Container(
      color: AppColors.stateBaseWhite,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Row(
        children: [
          _buildFilterChip(Icons.tune, 'Filter'),
          SizedBox(width: 12.w),
          _buildFilterChip(Icons.local_drink, 'Drinks', isSelected: true),
          SizedBox(width: 12.w),
          _buildFilterChip(Icons.restaurant, 'Foods'),
          SizedBox(width: 12.w),
          _buildFilterChip(Icons.whatshot, 'At Home'),
        ],
      ),
    );
  }

  Widget _buildFilterChip(IconData icon, String label, {bool isSelected = false}) {
    return Container(
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
    );
  }

  Widget _buildCategorySection(String title, List<ProductItem> items) {
    return Container(
      color: AppColors.stateBaseWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
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
          SizedBox(height: 24.h),
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
            maxLines: 2,
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
