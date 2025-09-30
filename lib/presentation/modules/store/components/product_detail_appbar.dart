import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/enums/wishlist_item_type.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_product_detail/store_product_detail_controller.dart';

class StoreDetailAppBar extends StatefulWidget implements PreferredSizeWidget {
  const StoreDetailAppBar({super.key});

  @override
  State<StoreDetailAppBar> createState() => _StoreDetailAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _StoreDetailAppBarState extends State<StoreDetailAppBar> {
  late FavoritesController favoritesController;

  @override
  void initState() {
    super.initState();
    // Initialize or get existing FavoritesController
    if (Get.isRegistered<FavoritesController>()) {
      favoritesController = Get.find<FavoritesController>();
    } else {
      favoritesController = Get.put(FavoritesController());
    }
  }

  bool _isItemFavorite(int itemId) {
    return favoritesController.wishlistItems.any((item) => item.id == itemId);
  }

  Future<void> _toggleFavorite(int itemId) async {
    try {
      if (_isItemFavorite(itemId)) {
        await favoritesController.removeFromWishlist(WishlistItemType.item, itemId);
      } else {
        await favoritesController.addToWishlist(WishlistItemType.item, itemId);
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to update favorites: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StoreProductDetailController>();
    return Obx(() {
      final product = controller.product.value;
      final productId = product?.id ?? 0;
      
      return AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: AppColors.backgroundSurfacePrimaryWhite,
        automaticallyImplyLeading: false,
        toolbarHeight: 56,
        titleSpacing: 0,
        title: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: AppColors.textGreyHighest950, size: 20),
              onPressed: () => Get.back(),
              splashRadius: 24,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(product?.storeName ?? '', style: AppTextStyles.typographyH9Bold.tint(AppColors.textGreyHighest950), overflow: TextOverflow.ellipsis),
            ),
            Obx(() {
              final isFavorite = _isItemFavorite(productId);
              return IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? AppColors.stateBrandDefault500 : AppColors.stateGreyDefault500,
                  size: 22,
                ),
                onPressed: productId > 0 ? () => _toggleFavorite(productId) : null,
                splashRadius: 24,
              );
            }),
            const SizedBox(width: 8),
          ],
        ),
      );
    });
  }
}
