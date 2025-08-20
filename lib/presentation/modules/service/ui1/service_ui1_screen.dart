import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/sliver_box.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/service_header.dart';
import 'package:sixam_mart_user/presentation/modules/service/core/base_service_ui_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui1/service_ui1_controller.dart';
import 'package:sixam_mart_user/presentation/shared/section_break_divider.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

/// Screen for UI1 type services (Food-like interface)
/// Displays dynamic sections with banners and categories
class ServiceUI1Screen extends BaseServiceUIScreen<ServiceUI1Controller> {
  const ServiceUI1Screen({super.key});

  @override
  ServiceUIType get uiType => ServiceUIType.ui1;

  @override
  Widget buildUIContent(BuildContext context) {
    return GetBuilder<ServiceUI1Controller>(
      id: ServiceUI1Category.dynamicSections,
      builder: (controller) {
        // Get dynamic sections from controller
        final sections = controller.dynamicSections;

        // Build dynamic sections based on API data
        final List<Widget> slivers = [
          // Service header section
          const ServiceHeader(),
          SliverBox(child: Divider(color: AppColors.stateGreyLowestHover100, height: 1)),
          const SliverBox(height: 16),
        ];

        // If no data available, show empty state
        if (sections.isEmpty) {
          slivers.add(SliverFillRemaining(child: buildEmptyState()));
        } else {
          // Add dynamic sections
          for (int i = 0; i < sections.length; i++) {
            final section = sections[i];
            slivers.add(UnifiedBannerWidget(section: section));

            // Add divider between sections (except for the last one)
            if (i < sections.length - 1) {
              slivers.add(const SliverBox(height: 16));
              slivers.add(const SliverToBoxAdapter(child: SectionBreakDivider()));
              slivers.add(const SliverBox(height: 16));
            }
          }

          // Add bottom padding
          slivers.add(const SliverBox(height: 24));
        }

        return CustomScrollView(slivers: slivers);
      },
    );
  }

  @override
  Widget buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.restaurant, size: 64, color: AppColors.textGreyDefault500),
          const SizedBox(height: 16),
          Text('No services available', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyDefault500)),
          const SizedBox(height: 8),
          Text('Please try again later', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
        ],
      ),
    );
  }
}
