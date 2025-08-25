import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/service_filter.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class ServiceHeader extends GetView<ServiceController> {
  const ServiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.stateBrandDefault500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 54),
                _buildTopBar(),
                const SizedBox(height: 16),
                _buildSearchBar(context),
                const SizedBox(height: 16),
                _buildDeliveryAddress(),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildCategories(),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: GetBuilder<ServiceController>(
        id: 'currentService',
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(controller.currentService.moduleName ?? '', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textBaseWhite)),
            Assets.icons.icBell.svg(width: 24, height: 24, colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn)),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.search);
        },
        child: Hero(
          tag: 'search_bar',
          flightShuttleBuilder: (BuildContext flightContext, Animation<double> animation, HeroFlightDirection flightDirection, BuildContext fromHeroContext, BuildContext toHeroContext) {
            return AnimatedBuilder(
              animation: CurvedAnimation(parent: animation, curve: Curves.easeInOutCubic),
              builder: (context, child) {
                return Material(
                  color: Colors.transparent,
                  child: Container(
                    height: 48,
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundSurfacePrimaryWhite,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: AppColors.stateGreyLowestHover100, width: 1),
                    ),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 12.w), child: Assets.icons.icSearch.svg()),
                        Expanded(
                          child: Text('Search food and stores', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: AppColors.backgroundSurfacePrimaryWhite,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.stateGreyLowestHover100, width: 1),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 12.w), child: Assets.icons.icSearch.svg()),
                  Expanded(
                    child: Text('Search food and stores', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return const ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                            child: FractionallySizedBox(heightFactor: 0.75, child: FilterScreen()),
                          );
                        },
                      );
                    },
                    child: Padding(padding: EdgeInsets.only(left: 12.w), child: Assets.icons.icFilter.svg()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDeliveryAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Assets.icons.icCar.svg(width: 16, height: 16, colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn)),
          const SizedBox(width: 8),
          Text('Deliver', style: AppTextStyles.typographyH11Medium.copyWith(color: AppColors.textBaseWhite)),
          const SizedBox(width: 8),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(color: AppColors.textBaseWhite, shape: BoxShape.circle),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text('2216 N 10th Street, CA 92243', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBaseWhite)),
          ),
          Icon(Icons.keyboard_arrow_down, color: AppColors.textBaseWhite, size: 20),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return GetBuilder<ServiceController>(
      id: 'categories',
      builder: (controller) {
        final categories = controller.categories;
        if (categories.isEmpty) {
          return const SizedBox.shrink();
        }

        return SizedBox(
          height: 86,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Padding(
                padding: EdgeInsets.only(right: index == categories.length - 1 ? 24.w : 16.w, left: index == 0 ? 24.w : 0),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(
                      children: [
                        AppImage.network(category.image, width: 40, height: 40, fit: BoxFit.cover),
                        const SizedBox(height: 8),
                        Text(category.name, style: AppTextStyles.typographyH12Regular, textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
