import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

import 'search_controller.dart';

class SearchScreen extends BaseScreen<SearchController> {
  const SearchScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: 0,
      leading: SizedBox.shrink(),
      title: Hero(
        tag: 'search_bar',
        flightShuttleBuilder: (BuildContext flightContext, Animation<double> animation, HeroFlightDirection flightDirection, BuildContext fromHeroContext, BuildContext toHeroContext) {
          return AnimatedBuilder(
            animation: CurvedAnimation(parent: animation, curve: Curves.easeInOutCubic),
            builder: (context, child) {
              return Material(
                color: Colors.transparent,
                child: Container(
                  height: 48,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: AppColors.stateGreyLowestHover100, width: 1),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: const EdgeInsets.only(right: 12), child: Assets.icons.icSearch.svg()),
                      Expanded(
                        child: Text('Search food and stores', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Material(
          color: Colors.transparent,
          child: AppTextField(
            borderRadius: 24,
            isRequired: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            prefixIcon: Padding(padding: const EdgeInsets.all(12), child: Assets.icons.icSearch.svg()),
            hintText: 'Search food and stores',
            focusNode: controller.focusNode,
            controller: controller.textController,
            autofocus: true,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (controller.hasSearchResults.value && controller.searchBannerItems.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: UnifiedBannerWidget(sectionTitle: 'Search Results', items: controller.searchBannerItems, bannerType: BannerType.brandLogoName),
          );
        }
        // Show recent stores as banners if available
        if (controller.recentStoreBannerItems.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: UnifiedBannerWidget(sectionTitle: 'Recent Stores', items: controller.recentStoreBannerItems, bannerType: BannerType.brandLogoName),
          );
        }
        // Fallback: show top/recent searches and categories
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(height: 24), _buildTopSearches(), SizedBox(height: 32), _buildRecentSearches(), SizedBox(height: 32), _buildTopCategories(), SizedBox(height: 24)],
          ),
        );
      }),
    );
  }

  Widget _buildTopSearches() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Top searches', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
        SizedBox(height: 16),
        ...controller.topSearches.map((item) => _buildSearchItemString(item, Assets.icons.icSearch.svg())),
      ],
    );
  }

  Widget _buildRecentSearches() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
        SizedBox(height: 16),
        ...controller.recentSearches.map((item) => _buildSearchItemString(item, Assets.icons.icClock.svg())),
      ],
    );
  }

  Widget _buildSearchItemString(String title, Widget icon) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          SizedBox(width: 20, height: 20, child: icon),
          SizedBox(width: 16),
          Expanded(
            child: Text(title, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
          ),
        ],
      ),
    );
  }

  Widget _buildTopCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Top Categories', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
        SizedBox(height: 16),
        ...controller.topCategories.map((item) => _buildCategoryItem(item)),
      ],
    );
  }

  Widget _buildCategoryItem(CategoryItem item) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.stateGreyLowest50),
            child: Center(
              child: Text(item.title[0], style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(item.title, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
          ),
        ],
      ),
    );
  }
}
