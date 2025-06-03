import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/sliver_box.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

import 'service_controller.dart';

class ServiceScreen extends BaseScreen<ServiceController> {
  const ServiceScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Service banner section
        UnifiedBannerWidget(
          sectionTitle: 'Service Providers',
          items: controller.serviceBannerItems,
          bannerType: BannerType.todayOffersBanner,
          showArrowIcon: true,
        ),
        SliverBox(height: 16),
        SliverBox(child: SectionBreakDivider()),
        SliverBox(height: 16),

        // Service offers with discounts
        UnifiedBannerWidget(
          sectionTitle: 'Special Offers',
          items: controller.serviceOffersItems,
          bannerType: BannerType.todayOffersBrandDiscount,
          showArrowIcon: true,
        ),
        SliverBox(height: 16),
        SliverBox(child: SectionBreakDivider()),
        SliverBox(height: 16),

        // Top service offers
        UnifiedBannerWidget(
          sectionTitle: 'Featured Services',
          items: controller.topServiceOffersItems,
          bannerType: BannerType.topOffers,
        ),
        SliverBox(height: 32),
      ],
    );
  }
}
