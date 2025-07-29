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
        // Get dynamic sections from controller
        final sections = controller.dynamicSections;

        // Build dynamic sections based on API data
        List<Widget> slivers = [
          // Service header section
          ServiceHeader(),
          SliverBox(child: Divider(color: AppColors.stateGreyLowestHover100, height: 1)),
          SliverBox(height: 16),
        ];

        // If no data available, show empty state
        if (sections.isEmpty) {
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
        for (int index = 0; index < sections.length; index++) {
          final section = sections[index];

          // Add section widget
          slivers.add(UnifiedBannerWidget(section: section));

          // Add spacing and divider after each section (except last)
          if (index < sections.length - 1) {
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
