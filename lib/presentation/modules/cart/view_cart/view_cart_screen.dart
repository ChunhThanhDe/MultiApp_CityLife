import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_cart_list_response.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_list_view.dart';

import 'view_cart_controller.dart';

// Data model for organizing cart items by type
class CartDisplayItem {
  final GetCartListStore? store;
  final GetCartListItem? item;
  final CartDisplayType type;

  CartDisplayItem({this.store, this.item, required this.type});
}

enum CartDisplayType { storeHeader, cartItem, cartSummary }

class ViewCartScreen extends BaseScreen<ViewCartController> {
  const ViewCartScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withValues(alpha: 0.9),
      elevation: 0.5,
      title: const Text(
        "View Cart",
        style: TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 18),
      ),
      actions: [
        TextButton(
          onPressed: controller.navigateToOrders,
          child: const Text(
            "Orders",
            style: TextStyle(color: Color(0xFF161A1D), fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        IconButton(icon: SvgPicture.asset(Assets.icons.icOrder.path, width: 24, height: 24), onPressed: controller.navigateToOrders),
      ],
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      if (controller.shouldShowLoadingState) {
        return const _LoadingCartState();
      }

      if (controller.shouldShowEmptyState) {
        return _EmptyCartState(onStartShopping: controller.navigateBack);
      }

      if (controller.shouldShowCartContent) {
        return _buildCartListView();
      }

      return const SizedBox.shrink();
    });
  }

  Widget _buildCartListView() {
    return Obx(() {
      final displayItems = _organizeCartItems(controller.storesInCart);

      return AppListView<CartDisplayItem>(
        items: displayItems,
        itemBuilder: _buildCartItem,
        onRefresh: controller.refreshCart,
        onLoadMore: controller.loadMoreCart,
        isLoading: controller.isLoading.value,
        isLoadingMore: controller.isLoadingMore.value,
        hasMore: controller.hasMore,
        errorMessage: controller.error.value.isNotEmpty ? controller.error.value : null,
        onRetry: () => controller.refreshCart(),
        emptyTitle: 'Your cart is empty',
        emptySubtitle: 'Add some items to your cart to get started.',
        physics: const AlwaysScrollableScrollPhysics(),
        useCustomScrollView: true,
        footerSlivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                _CartSummarySection(controller: controller),
              ],
            ),
          ),
        ],
      );
    });
  }

  List<CartDisplayItem> _organizeCartItems(List<GetCartListStore> stores) {
    List<CartDisplayItem> displayItems = [];

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

        return Column(
          children: [
            _CartProductItem(item: displayItem.item!, controller: controller),
            if (isLastItemInStore && !isLastStore) const Divider(height: 0, color: Color(0xFFE8EBEE), indent: 24, endIndent: 24),
          ],
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

// Loading state widget
class _LoadingCartState extends StatelessWidget {
  const _LoadingCartState();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _CartEmptyIllustration(),
          SizedBox(height: 32),
          _EmptyStateContent(title: "Add items to start a cart", subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", buttonText: "Start shopping"),
        ],
      ),
    );
  }
}

// Empty cart state widget
class _EmptyCartState extends StatelessWidget {
  final VoidCallback onStartShopping;

  const _EmptyCartState({required this.onStartShopping});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Get.find<ViewCartController>().refreshCart(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const _CartEmptyIllustration(),
              const SizedBox(height: 32),
              _EmptyStateContent(title: "Your cart is empty", subtitle: "Add some items to your cart to get started.", buttonText: "Start shopping", onPressed: onStartShopping),
            ],
          ),
        ],
      ),
    );
  }
}

// Store header widget
class _StoreHeader extends StatelessWidget {
  final GetCartListStore store;
  final VoidCallback onClearAll;

  const _StoreHeader({required this.store, required this.onClearAll});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Colors.white,
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
            child: Text(
              store.storeName ?? 'Unknown Store',
              style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF161A1D)),
            ),
          ),
          TextButton(
            onPressed: onClearAll,
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Clear All',
                  style: TextStyle(color: Color(0xFFE53E3E), fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 4),
                Icon(Icons.delete_outline, color: Color(0xFFE53E3E), size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Cart product item widget
class _CartProductItem extends StatelessWidget {
  final GetCartListItem item;
  final ViewCartController controller;

  const _CartProductItem({required this.item, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      color: Colors.white,
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
  final String? imageUrl;

  const _ProductImage({this.imageUrl});

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
  final GetCartListItem item;
  final ViewCartController controller;

  const _ProductDetails({required this.item, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.itemName ?? 'Unknown Item',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
        ),
        const SizedBox(height: 6),
        Text(
          '\$${(item.itemPrice ?? 0).toStringAsFixed(2)}',
          style: const TextStyle(fontFamily: 'Inter', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4A5763)),
        ),
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

// Quantity controls widget
class _QuantityControls extends StatelessWidget {
  final GetCartListItem item;
  final ViewCartController controller;

  const _QuantityControls({required this.item, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(color: const Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(32)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove, size: 18, color: Color(0xFF161A1D)),
            onPressed: () => controller.decrementItemQuantity(item),
            splashRadius: 20,
          ),
          Text(
            '${item.itemQuantity ?? 0}',
            style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF161A1D)),
          ),
          IconButton(
            icon: const Icon(Icons.add, size: 18, color: Color(0xFF161A1D)),
            onPressed: () => controller.incrementItemQuantity(item),
            splashRadius: 20,
          ),
        ],
      ),
    );
  }
}

// Action buttons (favorite and delete)
class _ActionButtons extends StatelessWidget {
  final GetCartListItem item;
  final ViewCartController controller;

  const _ActionButtons({required this.item, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _ActionButton(
          icon: Icons.favorite_border,
          color: Color(0xFF5856D7),
          onPressed: () {
            // Add to favorites functionality
          },
        ),
        const SizedBox(width: 8),
        _ActionButton(
          icon: Icons.delete_outline,
          color: Color(0xFFE53E3E),
          onPressed: () {
            if (item.cartId != null) {
              controller.removeItem(item.cartId!);
            }
          },
        ),
      ],
    );
  }
}

// Individual action button
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const _ActionButton({required this.icon, required this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: const Color(0xFFE8EBEE)),
        ),
        child: Icon(icon, color: color, size: 20),
      ),
    );
  }
}

// Cart summary section
class _CartSummarySection extends StatelessWidget {
  final ViewCartController controller;

  const _CartSummarySection({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0x1A101214), width: 1)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Subtotal',
                  style: TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Obx(
                () => Text(
                  '\$${controller.totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(color: Color(0xFF161A1D), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: controller.navigateToCheckout,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5856D7),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text(
                'Checkout Now',
                style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
              ),
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
          decoration: const BoxDecoration(color: Color(0xFFE8EBEE), shape: BoxShape.circle),
        ),
        AppImage.asset(Assets.images.imgBag.path, width: 195, height: 195, fit: BoxFit.contain),
      ],
    );
  }
}

// Empty state content
class _EmptyStateContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback? onPressed;

  const _EmptyStateContent({required this.title, required this.subtitle, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Color(0xFF4A5763), fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onPressed ?? () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF5856D7),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
