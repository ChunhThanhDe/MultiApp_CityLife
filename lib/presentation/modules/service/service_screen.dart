import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/sliver_box.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/service_header.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';
import 'package:sixam_mart_user/theme.dart';

import 'service_controller.dart';

class ServiceScreen extends BaseScreen<ServiceController> {
  const ServiceScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Service header section
        ServiceHeader(),
        SliverBox(child: Divider(color: AppColors.stateGreyLowestHover100, height: 1)),
        SliverBox(height: 16),
        // Service banner section
        UnifiedBannerWidget(
          sectionTitle: 'Recently Viewed',
          items: controller.serviceBannerItems,
          bannerType: BannerType.bannerFloatingLogo,
          showArrowIcon: true,
        ),
        SliverBox(height: 16),
        SliverBox(child: SectionBreakDivider()),
        SliverBox(height: 16),

        // Service offers with discounts
        UnifiedBannerWidget(
          sectionTitle: 'Shops near you',
          items: controller.serviceOffersItems,
          bannerType: BannerType.bannerDiscount,
          showArrowIcon: true,
        ),
        // SliverBox(height: 16),
        // SliverBox(child: SectionBreakDivider()),
        // SliverBox(height: 16),

        // Top service offers
        UnifiedBannerWidget(
          sectionTitle: 'Top Offers',
          items: controller.topServiceOffersItems,
          bannerType: BannerType.bannerSingleImage,
        ),
        SliverBox(height: 32),
        UnifiedBannerWidget(
          sectionTitle: 'Top Offers',
          items: controller.serviceOffersItems,
          bannerType: BannerType.bannerDiscount,
          showArrowIcon: true,
        ),
        UnifiedBannerWidget(
          sectionTitle: 'Popular near you',
          items: controller.serviceOffersItems,
          bannerType: BannerType.bannerDiscount,
          showArrowIcon: true,
        ),
      ],
    );
  }
}
