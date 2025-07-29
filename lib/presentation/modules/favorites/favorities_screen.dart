import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/wishlist_response.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/components/favorites_tab_bar.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_grid_view.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

/// Example implementation of FavoritesScreen using AppGridView
/// This demonstrates how to use the new AppGridView component
class FavoritesScreen extends BaseScreen<FavoritesController> {
  const FavoritesScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: "Your Favorites", onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: Obx(() {
            if (controller.currentTab.value == FavoritesTab.store) {
              return _buildStoreGrid();
            } else {
              return _buildItemGrid();
            }
          }),
        ),
      ],
    );
  }

  Widget _buildStoreGrid() {
    return AppGridView<WishlistStore>(
      items: controller.storeList,
      itemBuilder: (context, store, index) => _buildStoreCard(store),
      isLoading: controller.isLoadingWishlist.value,
      onRefresh: () => controller.fetchWishlistData(),
      crossAxisCount: 2,
      childAspectRatio: 183 / 220,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      emptyTitle: "No favorite stores",
      emptySubtitle: "You haven't added any stores to your favorites yet.",
      emptyIcon: Icon(Icons.store_outlined, size: 64, color: AppColors.stateGreyDefault500),
    );
  }

  Widget _buildItemGrid() {
    return AppGridView<WishlistItem>(
      items: controller.wishlistItems,
      itemBuilder: (context, item, index) => Obx(() => _buildItemCard(item)),
      isLoading: controller.isLoadingWishlist.value,
      onRefresh: () => controller.fetchWishlistData(),
      crossAxisCount: 2,
      childAspectRatio: 183 / 233,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      emptyTitle: "No favorite items",
      emptySubtitle: "You haven't added any items to your favorites yet.",
      emptyIcon: Icon(Icons.favorite_outline, size: 64, color: AppColors.stateGreyDefault500),
    );
  }

  Widget _buildStoreCard(WishlistStore store) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: AppColors.shadowSm5, blurRadius: 4, offset: const Offset(0, 2))],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 183 / 120,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                  child: AppImage.network(
                    store.coverPhotoFullUrl ?? store.logoFullUrl ?? '',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorWidget: Container(
                      color: AppColors.stateGreyLowest50,
                      child: Icon(Icons.store, size: 40, color: AppColors.stateGreyDefault500),
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: AppColors.shadowSm5, blurRadius: 6, offset: const Offset(0, 2))],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipOval(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: 44,
                            height: 44,
                            child: AppImage.network(
                              store.logoFullUrl ?? '',
                              errorWidget: Container(
                                color: AppColors.stateGreyLowest50,
                                child: Icon(Icons.store, size: 20, color: AppColors.stateGreyDefault500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    store.name ?? 'Unknown Store',
                    style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 6),
                Obx(
                  () => GestureDetector(
                    onTap: () => controller.toggleFavoriteStore(store.name ?? ''),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                      child: Icon(
                        !controller.isStoreFavorited(store.name ?? '') ? Icons.favorite : Icons.favorite_border,
                        key: ValueKey(controller.isStoreFavorited(store.name ?? '')),
                        color: AppColors.stateBrandDefault500,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
                Text(
                  "\$0 Delivery fee",
                  style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text("${store.avgRating ?? 0}★", style: AppTextStyles.typographyH11Medium.copyWith(color: AppColors.textGreyDefault500)),
                    const SizedBox(width: 2),
                    Text("(${store.ratingCount ?? 0})", style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
                    const SizedBox(width: 2),
                    Text("•", style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.stateBrandDefault500)),
                    const SizedBox(width: 2),
                    Flexible(
                      child: Text(
                        store.deliveryTime ?? "30-60 min",
                        style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildItemCard(WishlistItem item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: AppColors.shadowSm5, blurRadius: 4, offset: const Offset(0, 2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: AppImage.network(
                  item.imageFullUrl ?? '',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                  errorWidget: Container(
                    width: double.infinity,
                    height: 150,
                    color: AppColors.stateGreyLowest50,
                    child: Icon(Icons.image, size: 40, color: AppColors.stateGreyDefault500),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                bottom: 8,
                child: GestureDetector(
                  onTap: () => controller.toggleFavoriteItem(item.name ?? ''),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.stateGreyLowest50, width: 1),
                      boxShadow: [BoxShadow(color: AppColors.shadowMd10, blurRadius: 8, offset: const Offset(0, 4))],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                      child: Icon(
                        !controller.isItemFavorited(item.name ?? '') ? Icons.favorite : Icons.favorite_border,
                        key: ValueKey(controller.isItemFavorited(item.name ?? '')),
                        color: AppColors.stateBrandDefault500,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name ?? 'Unknown Item',
                  style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  '\$${(item.price ?? 0).toStringAsFixed(2)}',
                  style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Obx(() => FavoritesTabBar(currentTab: controller.currentTab.value, onTabChanged: (tab) => controller.changeTab(tab)));
  }
}
