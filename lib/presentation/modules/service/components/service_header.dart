import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';
import 'package:sixam_mart_user/theme.dart';

class ServiceHeader extends GetView<ServiceController> {
  const ServiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: AppColors.stateBrandDefault500,
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTopBar(),
                SizedBox(height: 16),
                _buildSearchBar(),
                SizedBox(height: 16),
                _buildDeliveryAddress(),
                SizedBox(height: 20),
                _buildFoodCategories(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Fast food',
            style: AppTextStyles.typographyH6SemiBold.copyWith(
              color: AppColors.textBaseWhite,
            ),
          ),
          Assets.icons.icBell.svg(
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              AppColors.textBaseWhite,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppTextField(
        hintText: 'Search food and stores',
        borderRadius: 24,
        isRequired: false,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: Assets.icons.icSearch.svg(),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: Assets.icons.icFilter.svg(),
        ),
      ),
    );
  }

  Widget _buildDeliveryAddress() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Assets.icons.icCar.svg(),
          SizedBox(width: 8),
          Text(
            'Deliver',
            style: AppTextStyles.typographyH10Medium.copyWith(
              color: AppColors.textBaseWhite,
            ),
          ),
          SizedBox(width: 8),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.textBaseWhite,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              '2216 N 10th Street, CA 92243',
              style: AppTextStyles.typographyH10Regular.copyWith(
                color: AppColors.textBaseWhite,
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.textBaseWhite,
            size: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildFoodCategories() {
    return SizedBox(
      height: 86,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.foodCategories.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final category = controller.foodCategories[index];
          return Padding(
            padding: EdgeInsets.only(right: index == controller.foodCategories.length - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
            child: GestureDetector(
              onTap: category.onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        category.imagePath,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      category.label,
                      style: AppTextStyles.typographyH12Regular,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
