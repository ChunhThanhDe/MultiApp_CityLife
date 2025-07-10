import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/sliver_box.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/service_header.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

import 'service_controller.dart';

class ServiceScreen extends BaseScreen<ServiceController> {
  const ServiceScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return RefreshIndicator(
      onRefresh: controller.refreshData,
      child: Obx(() {
        // Build dynamic sections based on API data
        List<Widget> slivers = [
          // Service header section
          ServiceHeader(),
          SliverBox(child: Divider(color: AppColors.stateGreyLowestHover100, height: 1)),
          SliverBox(height: 16),
        ];

        // Recently Viewed section
        if (controller.recentlyViewedItems.isNotEmpty) {
          slivers.addAll([
            UnifiedBannerWidget(sectionTitle: controller.recentSectionTitle, items: controller.recentlyViewedItems, bannerType: BannerType.bannerFloatingLogo, showArrowIcon: true),
            SliverBox(height: 16),
            SliverBox(child: SectionBreakDivider()),
            SliverBox(height: 16),
          ]);
        }

        // Shops near you section (Fast Food)
        if (controller.shopsNearYouItems.isNotEmpty) {
          slivers.addAll([
            UnifiedBannerWidget(sectionTitle: controller.shopsNearYouSectionTitle, items: controller.shopsNearYouItems, bannerType: BannerType.bannerDiscount, showArrowIcon: true),
            SliverBox(height: 16),
            SliverBox(child: SectionBreakDivider()),
            SliverBox(height: 16),
          ]);
        }

        // Top Offers section
        if (controller.topOffersItems.isNotEmpty) {
          slivers.addAll([
            UnifiedBannerWidget(sectionTitle: controller.topOffersSectionTitle, items: controller.topOffersItems, bannerType: BannerType.bannerSingleImage, showArrowIcon: false),
            SliverBox(height: 16),
            SliverBox(child: SectionBreakDivider()),
            SliverBox(height: 16),
          ]);
        }

        // Today Offers section
        if (controller.todayOffersItems.isNotEmpty) {
          slivers.addAll([
            UnifiedBannerWidget(sectionTitle: controller.todayOffersSectionTitle, items: controller.todayOffersItems, bannerType: BannerType.bannerDiscount, showArrowIcon: true),
            SliverBox(height: 16),
            SliverBox(child: SectionBreakDivider()),
            SliverBox(height: 16),
          ]);
        }

        // Popular near you section
        if (controller.popularNearYouItems.isNotEmpty) {
          slivers.addAll([
            UnifiedBannerWidget(sectionTitle: controller.popularNearYouSectionTitle, items: controller.popularNearYouItems, bannerType: BannerType.brandLogoName, showArrowIcon: true),
            SliverBox(height: 16),
            SliverBox(child: SectionBreakDivider()),
            SliverBox(height: 16),
          ]);
        }

        // Grocery Shops near you section
        if (controller.groceryShopsNearYouItems.isNotEmpty) {
          slivers.addAll([
            UnifiedBannerWidget(sectionTitle: controller.groceryShopsNearYouSectionTitle, items: controller.groceryShopsNearYouItems, bannerType: BannerType.bannerDiscount, showArrowIcon: true),
            SliverBox(height: 16),
            SliverBox(child: SectionBreakDivider()),
            SliverBox(height: 16),
          ]);
        }

        // Grocery Popular Items section
        if (controller.groceryPopularItems.isNotEmpty) {
          slivers.addAll([
            UnifiedBannerWidget(sectionTitle: controller.groceryPopularSectionTitle, items: controller.groceryPopularItems, bannerType: BannerType.brandLogoName, showArrowIcon: true),
            SliverBox(height: 16),
            SliverBox(child: SectionBreakDivider()),
            SliverBox(height: 16),
          ]);
        }

        // All Stores section
        if (controller.allStoresItems.isNotEmpty) {
          slivers.addAll([UnifiedBannerWidget(sectionTitle: controller.allStoresSectionTitle, items: controller.allStoresItems, bannerType: BannerType.bannerFloatingLogo, showArrowIcon: true)]);
        }

        // Add final spacing
        slivers.add(SliverBox(height: 32));

        return CustomScrollView(slivers: slivers);
      }),
    );
  }
}
