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
      onRefresh: controller.getStoreData,
      child: Obx(() {
        // Build the complete list of slivers
        List<Widget> slivers = [HeaderAndService(), SliverBox(child: Divider(height: 1, color: AppColors.stateGreyLowest50))];

        // Add dynamic banner sections from API
        final dynamicSections = controller.dynamicSections;

        // If no data available, show empty state
        if (dynamicSections.isEmpty) {
          slivers.add(
            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.store_outlined, size: 64, color: AppColors.textGreyDefault500),
                    SizedBox(height: 16),
                    Text('No data available', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyDefault500)),
                    SizedBox(height: 8),
                    Text('Please try again later', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
                  ],
                ),
              ),
            ),
          );
          return CustomScrollView(slivers: slivers);
        }

        // Add dynamic sections from API
        for (int index = 0; index < dynamicSections.length; index++) {
          final section = dynamicSections[index];

          // Add section widget
          slivers.add(UnifiedBannerWidget(section: section));

          // Add spacing and divider after each section (except last)
          if (index < dynamicSections.length - 1) {
            slivers.addAll([SliverBox(height: 16), SliverBox(child: SectionBreakDivider()), SliverBox(height: 16)]);
          }
        }

        // Add final spacing
        slivers.add(SliverBox(height: 32));

        return CustomScrollView(slivers: slivers);
      }),
    );
  }
}
