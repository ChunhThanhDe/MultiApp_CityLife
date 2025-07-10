import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class HeaderAndService extends GetView<HomeController> {
  const HeaderAndService({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 223,
            decoration: BoxDecoration(color: AppColors.stateBrandDefault500),
          ),
          SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildHeader(), SizedBox(height: 24), _buildService()]),
          ),
        ],
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${controller.getGreetingByTime()}\n',
                  style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBaseWhite),
                ),
                TextSpan(
                  text: 'Abdulkadir Ali',
                  style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textBaseWhite),
                ),
              ],
            ),
          ),
          Assets.icons.icBell.svg(width: 24, height: 24, colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn)),
        ],
      ),
    );
  }

  Widget _buildService() {
    return Obx(() {
      // Get categories from fast food data as services
      final categories = controller.fastFoodData.value?.categories ?? [];

      // If no categories, show default services
      if (categories.isEmpty) {
        return _buildDefaultServices();
      }

      return SizedBox(
        height: 150,
        child: ListView.builder(itemCount: categories.length, itemBuilder: (context, index) => _buildServiceItem(categories[index], index), scrollDirection: Axis.horizontal),
      );
    });
  }

  Widget _buildDefaultServices() {
    // Default services when no API data available
    final defaultServices = [
      {'name': 'Fast Food', 'icon': Assets.images.imgFood.path},
      {'name': 'Grocery', 'icon': Assets.images.imgGrocery.path},
      {'name': 'Pharmacy', 'icon': Assets.images.imgFood.path},
    ];

    return SizedBox(
      height: 150,
      child: ListView.builder(itemCount: defaultServices.length, itemBuilder: (context, index) => _buildDefaultServiceItem(defaultServices[index], index), scrollDirection: Axis.horizontal),
    );
  }

  Padding _buildServiceItem(Category category, int index) {
    final categories = controller.fastFoodData.value?.categories ?? [];
    return Padding(
      padding: EdgeInsets.only(right: index == categories.length - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
      child: GestureDetector(
        onTap: () => controller.navigateToServiceWithCategory(category),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: AppColors.stateGreyLowest50, borderRadius: BorderRadius.circular(AppCorner.radius8)),
              padding: EdgeInsets.all(12),
              child: AppImage.network(category.image, width: 70, height: 70),
            ),
            SizedBox(height: 6),
            Text(
              category.name,
              style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildDefaultServiceItem(Map<String, String> service, int index) {
    return Padding(
      padding: EdgeInsets.only(right: index == 2 ? 24 : 16, left: index == 0 ? 24 : 0),
      child: GestureDetector(
        onTap: () {
          // For default services, just navigate to service tab without specific category
          final rootController = Get.find<RootController>();
          rootController.changeTab(RootTab.service);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: AppColors.stateGreyLowest50, borderRadius: BorderRadius.circular(AppCorner.radius8)),
              padding: EdgeInsets.all(12),
              child: Image.asset(service['icon']!, width: 70, height: 70),
            ),
            SizedBox(height: 6),
            Text(
              service['name']!,
              style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
