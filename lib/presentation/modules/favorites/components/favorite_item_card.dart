import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/enums/wishlist_item_type.dart';
import 'package:sixam_mart_user/domain/models/response/wishlist_response.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class FavoriteItemCard extends StatelessWidget {
  const FavoriteItemCard({required this.item, super.key, this.isFavorited = true, this.onFavoriteTap});
  final WishlistItem item;
  final bool isFavorited;
  final VoidCallback? onFavoriteTap;

  String _buildPriceText() {
    final price = item.price;
    if (price == null) return '\$0.00';
    return '\$${price.toStringAsFixed(2)}';
  }

  @override
  Widget build(BuildContext context) {
    final FavoritesController controller = Get.find();

    return SizedBox(
      width: 183,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: AppImage.network(
                  item.imageFullUrl ?? '',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  errorWidget: Container(
                    width: 150,
                    height: 150,
                    color: AppTheme.theme.stateGreyLow300,
                    child: Icon(Icons.image_not_supported, color: AppTheme.theme.stateGreyDefault500),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                bottom: 8,
                child: GestureDetector(
                  onTap:
                      onFavoriteTap ??
                      () {
                        // Remove from wishlist
                        final itemId = item.id;
                        if (itemId != null) {
                          controller.removeFromWishlist(WishlistItemType.item, itemId);
                        }
                      },
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppTheme.theme.backgroundSurfacePrimaryWhite,
                      border: Border.all(color: AppTheme.theme.stateGreyLowestHover100, width: 1),
                      boxShadow: [BoxShadow(color: AppTheme.theme.shadowMd10, blurRadius: 8, offset: const Offset(0, 4))],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                      child: Icon(isFavorited ? Icons.favorite : Icons.favorite_border, key: ValueKey(isFavorited), color: AppTheme.theme.stateBrandDefault500, size: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            item.name ?? 'Unknown Item',
            style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            _buildPriceText(),
            style: AppTextStyles.typographyH12Regular.copyWith(color: AppTheme.theme.textGreyDefault500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
