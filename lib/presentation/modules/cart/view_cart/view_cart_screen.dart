import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/enums/wishlist_item_type.dart';
import 'package:sixam_mart_user/domain/models/response/get_cart_list_response.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/view_cart/view_cart_controller.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_list_view.dart';

// Data model for organizing cart items by type
class CartDisplayItem {
  CartDisplayItem({required this.type, this.store, this.item});
  final GetCartListStore? store;
  final GetCartListItem? item;
  final CartDisplayType type;
}

enum CartDisplayType { storeHeader, cartItem, cartSummary }

class ViewCartScreen extends BaseScreen<ViewCartController> {
  const ViewCartScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppTheme.theme.backgroundSurfacePrimaryWhite.withValues(alpha: 0.9),
      elevation: 0.5,
      title: Text(tr(LocaleKeys.cart_viewCart), style: AppTextStyles.typographyH9Medium.copyWith(color: AppTheme.theme.textGreyHighest950)),
      actions: [
        TextButton(
          onPressed: controller.navigateToOrders,
          child: Text(tr(LocaleKeys.cart_orders), style: AppTextStyles.typographyH11Regular.copyWith(color: AppTheme.theme.textGreyHighest950)),
        ),
        IconButton(icon: SvgPicture.asset(Assets.icons.icOrder.path, width: 24, height: 24), onPressed: controller.navigateToOrders),
      ],
    );
  }

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Obx(() {
      final displayItems = _organizeCartItems(controller.storesInCart);
      if (displayItems.isEmpty) {
        return const SizedBox.shrink();
      }
      return _CartSummarySection(controller: controller);
    });
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      final displayItems = _organizeCartItems(controller.storesInCart);

      return AppListView<CartDisplayItem>(
        items: displayItems,
        itemBuilder: _buildCartItem,
        onRefresh: controller.refreshCart,
        onLoadMore: controller.loadMoreCart,
        isLoading: controller.isCartLoading.value,
        isLoadingMore: controller.isLoadingMore.value,
        hasMore: controller.hasMore,
        errorMessage: controller.error.value.isNotEmpty ? controller.error.value : null,
        onRetry: controller.refreshCart,
        emptyWidget: _EmptyCartState(onStartShopping: controller.navigateBack),
        physics: const AlwaysScrollableScrollPhysics(),
        useCustomScrollView: true,
      );
    });
  }

  List<CartDisplayItem> _organizeCartItems(List<GetCartListStore> stores) {
    final List<CartDisplayItem> displayItems = [];

    for (final store in stores) {
      // Add store header
      displayItems.add(CartDisplayItem(store: store, type: CartDisplayType.storeHeader));

      // Add store items
      if (store.items != null) {
        for (final item in store.items!) {
          displayItems.add(CartDisplayItem(item: item, store: store, type: CartDisplayType.cartItem));
        }
      }
    }

    return displayItems;
  }

  Widget _buildCartItem(BuildContext context, CartDisplayItem displayItem, int index) {
    switch (displayItem.type) {
      case CartDisplayType.storeHeader:
        return _StoreHeader(store: displayItem.store!, onClearAll: () => controller.clearStoreItems(displayItem.store!.storeId ?? 0));
      case CartDisplayType.cartItem:
        final displayItems = _organizeCartItems(controller.storesInCart);
        final isLastItemInStore = _isLastItemInStore(displayItems, index);
        final isLastStore = _isLastStore(displayItems, index);

        return AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Column(
            children: [
              _CartProductItem(item: displayItem.item!, controller: controller),
              if (isLastItemInStore && !isLastStore) Divider(height: 0, color: AppTheme.theme.stateGreyLowestHover100, indent: 24, endIndent: 24),
            ],
          ),
        );
      case CartDisplayType.cartSummary:
        return _CartSummarySection(controller: controller);
    }
  }

  bool _isLastItemInStore(List<CartDisplayItem> displayItems, int currentIndex) {
    if (currentIndex >= displayItems.length - 1) return true;

    final currentItem = displayItems[currentIndex];
    final nextItem = displayItems[currentIndex + 1];

    // If current item is a cart item and next item is a store header, then current is last in store
    return currentItem.type == CartDisplayType.cartItem && nextItem.type == CartDisplayType.storeHeader;
  }

  bool _isLastStore(List<CartDisplayItem> displayItems, int currentIndex) {
    final currentItem = displayItems[currentIndex];
    if (currentItem.store == null) return true;

    // Check if this is the last store by looking for any store headers after this item
    for (int i = currentIndex + 1; i < displayItems.length; i++) {
      if (displayItems[i].type == CartDisplayType.storeHeader) {
        return false;
      }
    }
    return true;
  }
}

// Empty cart state widget
class _EmptyCartState extends StatelessWidget {
  const _EmptyCartState({required this.onStartShopping});
  final VoidCallback onStartShopping;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const _CartEmptyIllustration(),
          const SizedBox(height: 32),
          _EmptyStateContent(title: 'Your cart is empty', subtitle: 'Add some items to your cart to get started.', buttonText: 'Start shopping', onPressed: onStartShopping),
        ],
      ),
    );
  }
}

// Store header widget
class _StoreHeader extends StatelessWidget {
  const _StoreHeader({required this.store, required this.onClearAll});
  final GetCartListStore store;
  final VoidCallback onClearAll;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      color: AppTheme.theme.backgroundSurfacePrimaryWhite,
      child: Row(
        children: [
          if (store.storeLogo != null) ...[
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: NetworkImage(store.storeLogo!), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Text(store.storeName ?? tr(LocaleKeys.cart_unknownStore), style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppTheme.theme.textGreyHighest950)),
          ),
          TextButton(
            onPressed: onClearAll,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(tr(LocaleKeys.cart_clearAll), style: AppTextStyles.typographyH11Regular.copyWith(color: AppTheme.theme.stateDangerDefault500)),
                const SizedBox(width: 4),
                Icon(Icons.delete_outline, color: AppTheme.theme.stateDangerDefault500, size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Cart product item widget with animation
class _CartProductItem extends StatelessWidget {
  const _CartProductItem({required this.item, required this.controller});
  final GetCartListItem item;
  final ViewCartController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      color: AppTheme.theme.backgroundSurfacePrimaryWhite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProductImage(imageUrl: item.itemImage),
          const SizedBox(width: 16),
          Expanded(
            child: _ProductDetails(item: item, controller: controller),
          ),
        ],
      ),
    );
  }
}

// Product image widget
class _ProductImage extends StatelessWidget {
  const _ProductImage({this.imageUrl});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(imageUrl ?? 'https://via.placeholder.com/60'),
          fit: BoxFit.cover,
          onError: (exception, stackTrace) {
            // Fallback handled by placeholder URL
          },
        ),
      ),
    );
  }
}

// Product details widget
class _ProductDetails extends StatelessWidget {
  const _ProductDetails({required this.item, required this.controller});
  final GetCartListItem item;
  final ViewCartController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.itemName ?? 'Unknown Item',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHighest950),
        ),
        const SizedBox(height: 6),
        Text('\$${(item.itemPrice ?? 0).toStringAsFixed(2)}', style: AppTextStyles.typographyH11Regular.copyWith(color: AppTheme.theme.textGreyHigh700)),
        const SizedBox(height: 12),
        Row(
          children: [
            _QuantityControls(item: item, controller: controller),
            const Spacer(),
            _ActionButtons(item: item, controller: controller),
          ],
        ),
      ],
    );
  }
}

// Quantity controls widget with animation and loading state
class _QuantityControls extends StatelessWidget {
  const _QuantityControls({required this.item, required this.controller});
  final GetCartListItem item;
  final ViewCartController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: 28,
      decoration: BoxDecoration(color: AppTheme.theme.backgroundSurfaceTertiaryGrey50, borderRadius: BorderRadius.circular(32)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _QuantityButton(icon: Icons.remove, onPressed: () => controller.decrementItemQuantity(item), enabled: true),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Text(
              '${item.itemQuantity ?? 0}',
              key: ValueKey(item.itemQuantity),
              style: AppTextStyles.typographyH10Regular.copyWith(color: AppTheme.theme.textGreyHighest950),
            ),
          ),
          _QuantityButton(icon: Icons.add, onPressed: () => controller.incrementItemQuantity(item), enabled: true),
        ],
      ),
    );
  }
}

// Individual quantity button with animation
class _QuantityButton extends StatefulWidget {
  const _QuantityButton({required this.icon, required this.onPressed, this.enabled = true});
  final IconData icon;
  final VoidCallback? onPressed;
  final bool enabled;

  @override
  State<_QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<_QuantityButton> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(milliseconds: 100), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: IconButton(
            icon: Icon(widget.icon, size: 18, color: widget.enabled ? AppTheme.theme.textGreyHighest950 : AppTheme.theme.textGreyLow300),
            onPressed: widget.enabled
                ? () {
                    _animationController.forward().then((_) {
                      _animationController.reverse();
                    });
                    widget.onPressed?.call();
                  }
                : null,
            splashRadius: 20,
          ),
        );
      },
    );
  }
}

// Action buttons (favorite and delete) with animation
class _ActionButtons extends StatefulWidget {
  const _ActionButtons({required this.item, required this.controller});
  final GetCartListItem item;
  final ViewCartController controller;

  @override
  State<_ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<_ActionButtons> {
  FavoritesController? _favoritesController;

  @override
  void initState() {
    super.initState();
    // Try to get FavoritesController, create if not exists
    try {
      _favoritesController = Get.find<FavoritesController>();
    } catch (e) {
      _favoritesController = Get.put(FavoritesController());
    }
  }

  bool _isItemFavorite() {
    if (_favoritesController == null || widget.item.itemId == null) return false;
    return _favoritesController!.wishlistItems.any((item) => item.id == widget.item.itemId);
  }

  void _toggleFavorite() async {
    if (widget.item.itemId == null || _favoritesController == null) return;

    final itemId = widget.item.itemId!;
    final isCurrentlyFavorite = _isItemFavorite();

    // Call API to add/remove from favorites
    if (isCurrentlyFavorite) {
      await _favoritesController!.removeFromWishlist(WishlistItemType.item, itemId);
    } else {
      await _favoritesController!.addToWishlist(WishlistItemType.item, itemId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isFavorite = _isItemFavorite();
      
      return Row(
        children: [
          _AnimatedActionButton(
            icon: isFavorite ? Icons.favorite : Icons.favorite_border,
            color: AppTheme.theme.stateBrandDefault500,
            onPressed: _toggleFavorite,
          ),
          const SizedBox(width: 8),
          _AnimatedActionButton(
            icon: Icons.delete_outline,
            color: AppTheme.theme.stateDangerDefault500,
            onPressed: () {
              if (widget.item.cartId != null) {
                widget.controller.removeItem(widget.item.cartId!);
              }
            },
          ),
        ],
      );
    });
  }
}

// Animated action button for delete with visual feedback
class _AnimatedActionButton extends StatefulWidget {
  const _AnimatedActionButton({required this.icon, required this.color, this.onPressed});
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  @override
  State<_AnimatedActionButton> createState() => _AnimatedActionButtonState();
}

class _AnimatedActionButtonState extends State<_AnimatedActionButton> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(milliseconds: 150), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: GestureDetector(
            onTap: () {
              _animationController.forward().then((_) {
                _animationController.reverse();
              });
              widget.onPressed?.call();
            },
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: AppTheme.theme.backgroundSurfacePrimaryWhite,
                borderRadius: BorderRadius.circular(32),
                border: Border.all(color: AppTheme.theme.stateGreyLowestHover100),
              ),
              child: Icon(widget.icon, color: widget.color, size: 20),
            ),
          ),
        );
      },
    );
  }
}

// Cart summary section
class _CartSummarySection extends StatelessWidget {
  const _CartSummarySection({required this.controller});
  final ViewCartController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppTheme.theme.alphaGrey10, width: 1)),
        color: AppTheme.theme.backgroundSurfacePrimaryWhite,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(tr(LocaleKeys.cart_subtotal), style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textGreyHigh700)),
              ),
              Obx(() => Text('\$${controller.totalPrice.toStringAsFixed(2)}', style: AppTextStyles.typographyH10Bold.copyWith(color: AppTheme.theme.textGreyHighest950))),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: controller.navigateToCheckout,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.theme.stateBrandDefault500,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                padding: EdgeInsets.symmetric(vertical: 12.h),
              ),
              child: Text('Checkout Now', style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textBaseWhite)),
            ),
          ),
        ],
      ),
    );
  }
}

// Cart empty illustration
class _CartEmptyIllustration extends StatelessWidget {
  const _CartEmptyIllustration();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 221,
          height: 222,
          decoration: BoxDecoration(color: AppTheme.theme.stateGreyLowestHover100, shape: BoxShape.circle),
        ),
        AppImage.asset(Assets.images.imgBag.path, width: 195, height: 195, fit: BoxFit.contain),
      ],
    );
  }
}

// Empty state content
class _EmptyStateContent extends StatelessWidget {
  const _EmptyStateContent({required this.title, required this.subtitle, required this.buttonText, this.onPressed});
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.typographyH6SemiBold.copyWith(color: AppTheme.theme.textGreyHighest950),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.typographyH10Regular.copyWith(color: AppTheme.theme.textGreyHigh700),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onPressed ?? () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.theme.stateBrandDefault500,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            ),
            child: Text(buttonText, style: AppTextStyles.typographyH10Medium.copyWith(color: AppTheme.theme.textBaseWhite)),
          ),
        ],
      ),
    );
  }
}
