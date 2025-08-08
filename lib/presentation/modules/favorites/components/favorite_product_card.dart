import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/enums/wishlist_item_type.dart';
import 'package:sixam_mart_user/domain/models/response/wishlist_response.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class FavoriteProductCard extends StatelessWidget {

  const FavoriteProductCard({required this.store, super.key, this.onFavoriteTap});
  final WishlistStore store;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    final FavoritesController controller = Get.find();

    return Container(
      decoration: BoxDecoration(color: AppTheme.theme.backgroundSurfacePrimaryWhite, borderRadius: BorderRadius.circular(8)),
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
                  child: AppImage.network(
                    store.coverPhotoFullUrl ?? '',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorWidget: Container(
                      color: AppTheme.theme.stateGreyLow300,
                      child: Icon(Icons.image_not_supported, color: AppTheme.theme.stateGreyDefault500),
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
                      color: AppTheme.theme.backgroundSurfacePrimaryWhite,
                      border: Border.all(color: AppTheme.theme.backgroundSurfacePrimaryWhite, width: 2),
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: AppTheme.theme.shadowSm5, blurRadius: 6, offset: Offset(0, 2))],
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
                                color: AppTheme.theme.stateGreyLow300,
                                child: Icon(Icons.store, color: AppTheme.theme.stateGreyDefault500),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.theme.textGreyHighest950),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap:
                      onFavoriteTap ??
                      () {
                        // Remove from wishlist
                        final storeId = store.id;
                        if (storeId != null) {
                          controller.removeFromWishlist(WishlistItemType.store, storeId);
                        }
                      },
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                    child: Icon(Icons.favorite, key: ValueKey(true), color: AppTheme.theme.stateBrandDefault500, size: 24),
                  ),
                ),
              ],
            ),
          ),
          // Info dưới
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
                Text(
                  '\$${store.minimumShippingCharge ?? 0} Delivery fee',
                  style: TextStyle(fontSize: 12, color: AppTheme.theme.textGreyDefault500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      '${store.avgRating ?? 0}★',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.theme.textGreyDefault500),
                    ),
                    const SizedBox(width: 2),
                    Text('(${store.ratingCount ?? 0})', style: TextStyle(fontSize: 12, color: AppTheme.theme.textGreyDefault500)),
                    const SizedBox(width: 2),
                    Text('•', style: TextStyle(fontSize: 12, color: AppTheme.theme.stateBrandDefault500)),
                    const SizedBox(width: 2),
                    Flexible(
                      child: Text(
                        "${store.deliveryTime ?? '10-20'} min",
                        style: TextStyle(fontSize: 12, color: AppTheme.theme.textGreyDefault500),
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
}
