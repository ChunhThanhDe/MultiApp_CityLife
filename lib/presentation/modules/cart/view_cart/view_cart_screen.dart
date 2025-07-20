import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/request/cart_models.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

import 'view_cart_controller.dart';

// --- CartProductItem Widget
class CartProductItem extends StatelessWidget {
  final CartItem item;
  const CartProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final cartService = Get.find<CartService>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(item.itemImage ?? 'https://via.placeholder.com/60'),
                fit: BoxFit.cover,
                onError: (exception, stackTrace) {
                  // Fallback to placeholder image
                },
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Text + price + button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.itemName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                ),
                SizedBox(height: 6),
                Text(
                  '\$${item.itemPrice.toStringAsFixed(2)}',
                  style: TextStyle(fontFamily: 'Inter', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF4A5763)),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    // Quantity button
                    Container(
                      height: 28,
                      decoration: BoxDecoration(color: Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove, size: 18, color: Color(0xFF161A1D)),
                            onPressed: () {
                              if (item.itemQuantity > 1) {
                                cartService.updateItemQuantity(item.cartId, item.itemQuantity - 1);
                              } else {
                                cartService.removeItem(item.cartId);
                              }
                            },
                            splashRadius: 20,
                          ),
                          Text(
                            '${item.itemQuantity}',
                            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF161A1D)),
                          ),
                          IconButton(
                            icon: Icon(Icons.add, size: 18, color: Color(0xFF161A1D)),
                            onPressed: () {
                              cartService.updateItemQuantity(item.cartId, item.itemQuantity + 1);
                            },
                            splashRadius: 20,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    // Heart Icon
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: Color(0xFFE8EBEE)),
                      ),
                      child: Icon(Icons.favorite_border, color: Color(0xFF5856D7), size: 20),
                    ),
                    const SizedBox(width: 8),
                    // Share Icon
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: Color(0xFFE8EBEE)),
                      ),
                      child: Icon(Icons.share, color: Color(0xFF5856D7), size: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// --- Store Header Widget
class StoreHeader extends StatelessWidget {
  final StoreInCart store;
  const StoreHeader({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Colors.white,
      child: Row(
        children: [
          // Store logo
          if (store.storeLogo != null)
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: NetworkImage(store.storeLogo!), fit: BoxFit.cover),
              ),
            ),
          if (store.storeLogo != null) const SizedBox(width: 12),
          // Store name
          Expanded(
            child: Text(
              store.storeName,
              style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF161A1D)),
            ),
          ),
          // Clear All button
          TextButton(
            onPressed: () {
              // TODO: Implement clear store items
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Clear All',
                  style: TextStyle(color: Color(0xFFE53E3E), fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 4),
                Icon(Icons.delete_outline, color: Color(0xFFE53E3E), size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// --- MAIN SCREEN:
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
          onPressed: () {
            Get.toNamed(AppRoutes.cartOrder);
          },
          child: Text(
            "Orders",
            style: TextStyle(color: Color(0xFF161A1D), fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(Assets.icons.icOrder.path, width: 24, height: 24),
          onPressed: () {
            Get.toNamed(AppRoutes.cartOrder);
          },
        ),
      ],
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return _AnimatedCartBody();
  }
}

class _AnimatedCartBody extends StatefulWidget {
  @override
  State<_AnimatedCartBody> createState() => _AnimatedCartBodyState();
}

class _AnimatedCartBodyState extends State<_AnimatedCartBody> {
  bool showCartUI = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) setState(() => showCartUI = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartService = Get.find<CartService>();

    if (!showCartUI) {
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
                AppImage.asset(Assets.images.imgBag.path, width: 195, height: 195, fit: BoxFit.contain),
              ],
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Text(
                    "Add items to start a cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color(0xFF4A5763), fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
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

    return Obx(() {
      return RefreshIndicator(
        onRefresh: () => cartService.fetchCartList(),
        child: cartService.isEmpty
            ? ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                  Column(
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
                          AppImage.asset(Assets.images.imgBag.path, width: 195, height: 195, fit: BoxFit.contain),
                        ],
                      ),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            Text(
                              "Your cart is empty",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Add some items to your cart to get started.",
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
                ],
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                      itemCount: cartService.storesInCart.length,
                      separatorBuilder: (_, _) => Divider(height: 0, color: Color(0xFFE8EBEE), indent: 24, endIndent: 24),
                      itemBuilder: (context, storeIndex) {
                        final store = cartService.storesInCart[storeIndex];
                        return Column(
                          children: [
                            // Store header
                            StoreHeader(store: store),
                            // Store items
                            ...store.items.map((item) => CartProductItem(item: item)),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Color(0x1A101214), width: 1)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Subtotal',
                                style: TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Text(
                              '\$${cartService.totalPrice.toStringAsFixed(2)}',
                              style: TextStyle(color: Color(0xFF161A1D), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.cartCheckout);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF5856D7),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                              padding: EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: Text(
                              'Checkout Now',
                              style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      );
    });
  }
}
