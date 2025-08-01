import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported, color: Colors.grey),
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
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE8EBEE), width: 1),
                      boxShadow: const [BoxShadow(color: Color(0x19101214), blurRadius: 8, offset: Offset(0, 4))],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                      child: Icon(isFavorited ? Icons.favorite : Icons.favorite_border, key: ValueKey(isFavorited), color: const Color(0xFF5856D7), size: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            item.name ?? 'Unknown Item',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            _buildPriceText(),
            style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
