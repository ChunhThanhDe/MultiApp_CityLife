import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/components/favorite_item_card.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/components/favorite_product_card.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/components/favorites_tab_bar.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'favorites_controller.dart';

class FavoritesScreen extends BaseScreen<FavoritesController> {
  const FavoritesScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BasicAppBar(
            title: 'Your Favorites',
          ),
          _buildTabBar(),
          Expanded(
            child: Obx(() {
              // Lấy data theo tab
              if (controller.currentTab.value == FavoritesTab.store) {
                // Hiển thị store
                return _buildStoreGrid(controller.favoritedStores);
              } else {
                // Hiển thị items
                return _buildItemGrid(controller.favoritedItems);
              }
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildStoreGrid(List<FavoriteProduct> stores) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 183 / 220,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: stores.length,
        itemBuilder: (_, i) => FavoriteProductCard(product: stores[i]),
      ),
    );
  }

  Widget _buildItemGrid(List<FavoriteItem> items) {
    // Lấy controller
    final controller = Get.find<FavoritesController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 183 / 233,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: items.length,
        itemBuilder: (_, i) => Obx(() => FavoriteItemCard(
              item: items[i],
              isFavorited: controller.isItemFavorited(items[i].title),
              onFavoriteTap: () => controller.toggleFavoriteItem(items[i].title),
            )),
      ),
    );
  }

  Widget _buildTabBar() {
    return Obx(() => FavoritesTabBar(
          currentTab: controller.currentTab.value,
          onTabChanged: (tab) => controller.changeTab(tab),
        ));
  }
}
