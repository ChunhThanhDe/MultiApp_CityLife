import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/wishlist_response.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/components/favorites_tab_bar.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'favorites_controller.dart';

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
            if (controller.isLoadingWishlist.value) {
              return const Center(child: CircularProgressIndicator());
            }

            // Lấy data theo tab
            if (controller.currentTab.value == FavoritesTab.store) {
              // Hiển thị store
              return _buildStoreGrid(controller.storeList);
            } else {
              // Hiển thị items
              return _buildItemGrid(controller.wishlistItems);
            }
          }),
        ),
      ],
    );
  }

  Widget _buildStoreGrid(List<WishlistStore> stores) {
    if (stores.isEmpty) {
      return _buildEmptyState(title: "No favorite stores", subtitle: "You haven't added any stores to your favorites yet.", icon: Icons.store_outlined);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 183 / 220, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemCount: stores.length,
        itemBuilder: (_, i) => _buildStoreCard(stores[i]),
      ),
    );
  }

  Widget _buildItemGrid(List<WishlistItem> items) {
    if (items.isEmpty) {
      return _buildEmptyState(title: "No favorite items", subtitle: "You haven't added any items to your favorites yet.", icon: Icons.favorite_outline);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 183 / 233, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemCount: items.length,
        itemBuilder: (_, i) => Obx(() => _buildItemCard(items[i])),
      ),
    );
  }

  Widget _buildStoreCard(WishlistStore store) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 183 / 120,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    store.coverPhotoFullUrl ?? store.logoFullUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: const Color(0xFFE8EBEE),
                        child: const Icon(Icons.store, size: 40, color: Color(0xFF4A5763)),
                      );
                    },
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
                      boxShadow: [BoxShadow(color: Color(0x14000000), blurRadius: 6, offset: Offset(0, 2))],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipOval(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: 44,
                            height: 44,
                            child: Image.network(
                              store.logoFullUrl,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: const Color(0xFFE8EBEE),
                                  child: const Icon(Icons.store, size: 20, color: Color(0xFF4A5763)),
                                );
                              },
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
                    store.name,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 6),
                Obx(
                  () => GestureDetector(
                    onTap: () => controller.toggleFavoriteStore(store.name),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                      child: Icon(
                        !controller.isStoreFavorited(store.name) ? Icons.favorite : Icons.favorite_border,
                        key: ValueKey(controller.isStoreFavorited(store.name)),
                        color: Color(0xFF5856D7),
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
                  style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      "${store.avgRating ?? 0}★",
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF4A5763)),
                    ),
                    const SizedBox(width: 2),
                    Text("(${store.ratingCount ?? 0})", style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                    const SizedBox(width: 2),
                    const Text("•", style: TextStyle(fontSize: 12, color: Color(0xFF5856D7))),
                    const SizedBox(width: 2),
                    Flexible(
                      child: Text(
                        store.deliveryTime ?? "30-60 min",
                        style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
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
    return SizedBox(
      width: 183,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  item.imageFullUrl,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 150,
                      height: 150,
                      color: const Color(0xFFE8EBEE),
                      child: const Icon(Icons.image, size: 40, color: Color(0xFF4A5763)),
                    );
                  },
                ),
              ),
              Positioned(
                right: 8,
                bottom: 8,
                child: GestureDetector(
                  onTap: () => controller.toggleFavoriteItem(item.name),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFE8EBEE), width: 1),
                      boxShadow: [BoxShadow(color: Color(0x19101214), blurRadius: 8, offset: Offset(0, 4))],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                      child: Icon(
                        !controller.isItemFavorited(item.name) ? Icons.favorite : Icons.favorite_border,
                        key: ValueKey(controller.isItemFavorited(item.name)),
                        color: Color(0xFF5856D7),
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            item.name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            '\$${item.price.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState({required String title, required String subtitle, required IconData icon}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 221,
                height: 222,
                decoration: BoxDecoration(color: Color(0xFFE8EBEE), shape: BoxShape.circle),
              ),
              Icon(icon, size: 80, color: Color(0xFF4A5763)),
            ],
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                ),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Color(0xFF4A5763), fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Get.back(); // Go back to previous screen
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF5856D7),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            ),
            child: Text(
              "Start shopping",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
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
