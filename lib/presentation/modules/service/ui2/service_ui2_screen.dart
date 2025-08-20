import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/category_expandable.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/estimated_bill_sheet.dart';
import 'package:sixam_mart_user/presentation/modules/service/core/base_service_ui_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_controller.dart';

/// Screen for UI2 type services
/// Features category tabs, banners, and expandable pricing sections
class ServiceUI2Screen extends BaseServiceUIScreen<ServiceUI2Controller> {
  const ServiceUI2Screen({super.key});

  @override
  ServiceUIType get uiType => ServiceUIType.ui2;

  @override
  Widget buildUIContent(BuildContext context) {
    return Stack(
      children: [
        // Top dynamic background
        GetBuilder<ServiceUI2Controller>(
          id: ServiceUI2Category.background,
          builder: (controller) => Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(color: controller.currentBackgroundColor),
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              // Custom AppBar
              _buildAppBar(),
              // Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Category Tabs
                      _buildCategoryTabs(),
                      // Banner + Dots + Text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                        child: _buildBanner(),
                      ),
                      const SizedBox(height: 6),
                      // Pricing Section
                      Container(
                        color: AppTheme.theme.backgroundSurfacePrimaryWhite,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Pricing title
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Pricing', style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppTheme.theme.textGreyHighest950)),
                                    const SizedBox(height: 4),
                                    Text('Each item is charged separately', style: AppTextStyles.typographyH11Regular.copyWith(color: AppTheme.theme.textGreyDefault500)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              // List of pricing items
                              GetBuilder<ServiceUI2Controller>(
                                id: ServiceUI2Category.categoryExpandable,
                                builder: (controller) => ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: controller.categoryExpandableData.length,
                                  itemBuilder: (context, i) => Column(
                                    children: [
                                      CategoryExpandable(
                                        title: controller.categoryExpandableData[i].name,
                                        parts: controller.categoryExpandableData[i].items.length,
                                        items: controller.categoryExpandableData[i].items,
                                        onChanged: () {
                                          controller.update([ServiceUI2Category.estimatedBill, ServiceUI2Category.categoryExpandable]);
                                        },
                                      ),
                                      if (i < controller.categoryExpandableData.length - 1)
                                        Container(
                                          margin: EdgeInsets.only(left: 24.w),
                                          height: 1,
                                          color: AppTheme.theme.stateGreyLowestHover100,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Bottom Summary Widget
                    ],
                  ),
                ),
              ),
              GetBuilder<ServiceUI2Controller>(
                id: ServiceUI2Category.estimatedBill,
                builder: (controller) => controller.hasSelectedItems ? _buildEstimatedBillWidget(controller: controller) : const SizedBox(height: 10), // Space for bottom nav when no items selected
              ),
            ],
          ),
        ),
        // Bottom NavBar
      ],
    );
  }

  /// Build app bar
  Widget _buildAppBar() {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      color: AppTheme.theme.backgroundSurfacePrimaryWhite.withValues(alpha: 0),
      child: Row(
        children: [
          Expanded(
            child: Text('Laundry', style: AppTextStyles.typographyH9Medium.copyWith(color: AppTheme.theme.textBaseWhite)),
          ),
          Icon(Icons.notifications_none, color: AppTheme.theme.textBaseWhite, size: 24),
        ],
      ),
    );
  }

  /// Build category tabs
  Widget _buildCategoryTabs() {
    return GetBuilder<ServiceUI2Controller>(
      id: ServiceUI2Category.categoryTabs,
      builder: (controller) => SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 12.h, bottom: 8.h),
          itemCount: ServiceUI2Controller.categories.length,
          separatorBuilder: (context, index) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            final category = ServiceUI2Controller.categories[index];
            return _CategoryTab(
              svgAsset: category.icon,
              label: category.label,
              active: controller.selectedCategoryIndex == index,
              activeColor: category.color,
              onTap: () => controller.selectCategory(index),
            );
          },
        ),
      ),
    );
  }

  /// Build banner + dots + text
  Widget _buildBanner() {
    return GetBuilder<ServiceUI2Controller>(
      builder: (controller) => Column(
        children: [
          // Swipeable Banner Images
          SizedBox(
            height: 180,
            child: PageView.builder(
              onPageChanged: controller.updateBannerIndex,
              itemCount: ServiceUI2Controller.bannerList.length,
              itemBuilder: (context, index) {
                final banner = ServiceUI2Controller.bannerList[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(banner.image, width: 382, height: 180, fit: BoxFit.cover),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          // Dynamic Dots
          GetBuilder<ServiceUI2Controller>(
            id: ServiceUI2Category.bannerDots,
            builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(ServiceUI2Controller.bannerList.length, (index) => _Dot(active: controller.selectedBannerIndex == index)),
            ),
          ),
          const SizedBox(height: 8),
          // Dynamic Text based on current banner
          GetBuilder<ServiceUI2Controller>(
            id: ServiceUI2Category.bannerText,
            builder: (controller) {
              final currentBanner = ServiceUI2Controller.bannerList[controller.selectedBannerIndex];
              return Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(currentBanner.title, style: AppTextStyles.typographyH11SemiBold.copyWith(color: AppTheme.theme.textGreyHighest950)),
                    const SizedBox(height: 4),
                    Text(currentBanner.subtitle, style: AppTextStyles.typographyH12Regular.copyWith(color: AppTheme.theme.textGreyDefault500)),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Build estimated bill widget
  Widget _buildEstimatedBillWidget({required ServiceUI2Controller controller}) {
    return GetBuilder<ServiceUI2Controller>(
      id: ServiceUI2Category.estimatedBill,
      builder: (controller) => Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
          color: AppTheme.theme.backgroundSurfacePrimaryWhite,
          boxShadow: [BoxShadow(color: AppTheme.theme.alphaGrey10, offset: const Offset(0, -5), blurRadius: 32, spreadRadius: 0)],
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        ),
        child: Column(
          children: [
            // Divider with grabber
            Container(
              width: double.infinity,
              height: 12,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Center(
                child: Container(
                  width: 48,
                  height: 4,
                  decoration: BoxDecoration(color: AppTheme.theme.stateGreyLowestHover100, borderRadius: BorderRadius.circular(99)),
                ),
              ),
            ),
            // Cell item with top padding
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Estimated Bill', style: AppTextStyles.typographyH8SemiBold.copyWith(height: 1.5, color: AppTheme.theme.textGreyHighest950)),
                      Text('\$${controller.totalCost.toStringAsFixed(2)}', style: AppTextStyles.typographyH10Regular.copyWith(height: 1.5, color: AppTheme.theme.textGreyHighest950)),
                    ],
                  ),
                  // Label
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: Get.context!,
                        isScrollControlled: true,
                        backgroundColor: AppTheme.theme.backgroundSurfacePrimaryWhite.withValues(alpha: 0),
                        builder: (context) => const ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                          child: FractionallySizedBox(heightFactor: 0.85, child: EstimatedBillSheet()),
                        ),
                      );
                    },
                    child: Text('More details', style: AppTextStyles.typographyH11Regular.copyWith(height: 1.43, color: AppTheme.theme.textGreyHighest950)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------ Widget Components ------------

// Category Tab
class _CategoryTab extends StatelessWidget {
  const _CategoryTab({required this.label, required this.svgAsset, this.active = false, this.activeColor, this.onTap});
  final String svgAsset;
  final String label;
  final bool active;
  final Color? activeColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(color: AppTheme.theme.backgroundSurfaceTertiaryGrey50, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Container(
                width: 74,
                height: 74,
                decoration: BoxDecoration(
                  color: active ? AppTheme.theme.backgroundSurfacePrimaryWhite : AppTheme.theme.backgroundSurfaceTertiaryGrey50,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(color: AppTheme.theme.shadowMd10, offset: const Offset(0, 6), blurRadius: 8),
                    BoxShadow(color: AppTheme.theme.shadowMd10, offset: const Offset(0, 18), blurRadius: 24),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
                  child: SvgPicture.asset(
                    svgAsset,
                    width: 28,
                    height: 28,
                    colorFilter: ColorFilter.mode(active ? (activeColor ?? AppTheme.theme.stateBrandDefault500) : AppTheme.theme.textGreyHighest950, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppTextStyles.typographyH10Medium.copyWith(color: active ? (activeColor ?? AppTheme.theme.stateBrandDefault500) : AppTheme.theme.textGreyHighest950),
          ),
        ],
      ),
    );
  }
}

// Dot indicator
class _Dot extends StatelessWidget {
  const _Dot({this.active = false});
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 24 : 12,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(color: active ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.shadowMd10, borderRadius: BorderRadius.circular(24)),
    );
  }
}
