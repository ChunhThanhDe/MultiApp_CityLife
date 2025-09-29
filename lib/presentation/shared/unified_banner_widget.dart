import 'package:flutter/material.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_spacing_utils.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/banner_header_widget.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/banner_item_factory.dart';

/// A unified banner widget that displays different types of banners
/// based on the provided banner section configuration.
///
/// This widget follows Clean Code principles by:
/// - Single Responsibility: Only handles the overall layout and coordination
/// - Open/Closed: Extensible through the factory pattern for new banner types
/// - Dependency Inversion: Depends on abstractions (BannerSection) not concrete implementations
class UnifiedBannerWidget extends StatelessWidget {
  const UnifiedBannerWidget({required this.section, super.key});
  final BannerSection section;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BannerHeaderWidget(section: section),
          SizedBox(height: BannerSpacingUtils.getHeaderSpacing(section.bannerType)),
          _buildBannerList(),
        ],
      ),
    );
  }

  /// Builds a horizontal scrollable list of banner items
  Widget _buildBannerList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          section.items.length,
          (index) => BannerItemFactory.createBannerItem(
            bannerType: section.bannerType,
            item: section.items[index],
            index: index,
            totalItems: section.items.length,
            onTap: section.onTapItem,
            serviceType: section.serviceType,
          ),
        ),
      ),
    );
  }
}
