import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/header_and_service.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/sliver_box.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

import 'home_controller.dart';

class HomeScreen extends BaseScreen<HomeController> {
  const HomeScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return RefreshIndicator(
      onRefresh: controller.refreshData,
      child: Obx(() {
        // Build the complete list of slivers
        List<Widget> slivers = [HeaderAndService(), SliverBox(child: Divider(height: 1, color: AppColors.stateGreyLowest50))];

        // Add dynamic banner sections from API
        final subsections = controller.offerSubsections;

        for (int index = 0; index < subsections.length; index++) {
          final subsection = subsections[index];
          final bannerType = _getBannerTypeForIndex(index);

          // Add spacing and divider before each section (except first)
          if (index > 0) {
            slivers.addAll([SliverBox(height: 16), SliverBox(child: SectionBreakDivider()), SliverBox(height: 16)]);
          } else {
            slivers.add(SliverBox(height: 16));
          }

          // Add the banner widget
          slivers.add(
            UnifiedBannerWidget(
              sectionTitle: subsection.title,
              items: controller.getBannerItemsForSubsection(index, bannerType: bannerType),
              bannerType: bannerType,
              showArrowIcon: bannerType != BannerType.bannerFloatingLogo,
            ),
          );
        }

        // Add final spacing
        slivers.add(SliverBox(height: 32));

        return CustomScrollView(slivers: slivers);
      }),
    );
  }

  // Determine banner type based on index to create variety
  BannerType _getBannerTypeForIndex(int index) {
    switch (index % 4) {
      case 0:
        return BannerType.bannerFloatingLogo;
      case 1:
        return BannerType.brandLogoName;
      case 2:
        return BannerType.bannerDiscount;
      case 3:
        return BannerType.bannerSingleImage;
      default:
        return BannerType.brandLogoName;
    }
  }
}
