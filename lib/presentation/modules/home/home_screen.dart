import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/header_and_service.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/sliver_box.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';
import 'package:sixam_mart_user/theme.dart';

import 'home_controller.dart';

class HomeScreen extends BaseScreen<HomeController> {
  const HomeScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HeaderAndService(),
        SliverBox(child: Divider(height: 1, color: AppColors.stateGreyLowest50)),
        UnifiedBannerWidget(
          sectionTitle: 'Today Offers',
          items: controller.todayOffersBannerItems,
          bannerType: BannerType.todayOffersBanner,
        ),
        SliverBox(height: 16),
        SliverBox(child: SectionBreakDivider()),
        SliverBox(height: 16),
        UnifiedBannerWidget(
          sectionTitle: 'Today Offers',
          items: controller.todayOffersBrandItems,
          bannerType: BannerType.todayOffersBrand,
          showArrowIcon: true,
        ),
        SliverBox(height: 16),
        SliverBox(child: SectionBreakDivider()),
        SliverBox(height: 16),
        UnifiedBannerWidget(
          sectionTitle: 'Today Offers',
          items: controller.todayOffersBrandDiscountItems,
          bannerType: BannerType.todayOffersBrandDiscount,
          showArrowIcon: true,
        ),
        SliverBox(height: 16),
        SliverBox(child: SectionBreakDivider()),
        SliverBox(height: 16),
        UnifiedBannerWidget(
          sectionTitle: 'Top Offers',
          items: controller.topOffersItems,
          bannerType: BannerType.topOffers,
        ),
        SliverBox(height: 32),
      ],
    );
  }
}
