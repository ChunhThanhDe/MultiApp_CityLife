import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/search_response.dart' as search_response;
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/search/search_controller.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_category_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

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

        if (controller.searchData.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search_outlined, size: 64, color: AppColors.textGreyDefault500),
                SizedBox(height: 16),
                Text('No data available', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyDefault500)),
                SizedBox(height: 8),
                Text('Please try again later', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
              ],
            ),
          );
        }

        if (controller.isInitialState.value) {
          return _buildInitialState();
        } else {
          return _buildSearchResults();
        }
      }),
    );
  }

  Widget _buildInitialState() {
    final searchData = controller.searchData.value!;

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24),
      children: [
        SizedBox(height: 24),

        // Top Searches Section
        if (searchData.topSearches != null && searchData.topSearches!.isNotEmpty) ...[
          Text('Top searches', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
          SizedBox(height: 16),
          ...searchData.topSearches!.map((item) => _buildSearchItemString(item, Assets.icons.icSearch.svg())),
          SizedBox(height: 32),
        ],

        // Recent Stores Section
        if (searchData.recentStores != null && searchData.recentStores!.isNotEmpty) ...[
          Text('Recent Stores', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950)),
          SizedBox(height: 16),
          ...searchData.recentStores!.map((store) => _buildRecentStoreItem(store)),
        ],
      ],
    );
  }

  Widget _buildSearchResults() {
    final searchData = controller.searchData.value!;

    if (searchData.itemsByStore == null || searchData.itemsByStore!.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off_outlined, size: 64, color: AppColors.textGreyDefault500),
            SizedBox(height: 16),
            Text('No results found', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyDefault500)),
            SizedBox(height: 8),
            Text('Try searching with different keywords', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: searchData.itemsByStore!.length,
      itemBuilder: (context, index) {
        final storeGroup = searchData.itemsByStore![index];
        final productItems = storeGroup.items
            .map(
              (item) => ProductItem(
                name: item.name,
                id: item.id,
                price: '\$${item.finalPrice.toStringAsFixed(2)}',
                rating: item.avgRating,
                imageUrl: item.imageUrl,
                reviewCount: 0,
                categories: [],
                availableServices: [],
              ),
            )
            .toList();

        return ProductCategorySection(title: storeGroup.storeName, items: productItems);
      },
    );
  }

  Widget _buildSearchItemString(String title, Widget icon) {
    return GestureDetector(
      onTap: () => controller.onTapSearchItem(title),
      child: Container(
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
      ),
    );
  }

  Widget _buildRecentStoreItem(search_response.RecentStore store) {
    return GestureDetector(
      onTap: () => controller.onTapSearchItem(store.name),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: store.logoUrl.isNotEmpty ? NetworkImage(store.logoUrl) : null,
              child: store.logoUrl.isEmpty ? Icon(Icons.store, size: 20, color: AppColors.textGreyDefault500) : null,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(store.name, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
                  if (store.deliveryTime.isNotEmpty) Text(store.deliveryTime, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
                ],
              ),
            ),
            if (store.deliveryFee > 0) Text('\$${store.deliveryFee.toStringAsFixed(2)}', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
          ],
        ),
      ),
    );
  }
}
