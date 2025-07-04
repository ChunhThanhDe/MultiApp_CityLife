import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Sửa thành flutter_svg nếu dùng
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

import 'view_cart_controller.dart';

// --- CartItem và CartProductItem Widget như bạn gửi ở dưới
class CartItem {
  final String image;
  final String title;
  final double price;
  final int quantity;
  CartItem({required this.image, required this.title, required this.price, required this.quantity});
}

class CartProductItem extends StatelessWidget {
  final CartItem item;
  const CartProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
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
              image: DecorationImage(image: AssetImage(item.image), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 16),
          // Text + price + button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                ),
                SizedBox(height: 6),
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
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
                            onPressed: () {},
                            splashRadius: 20,
                          ),
                          Text(
                            '${item.quantity}',
                            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF161A1D)),
                          ),
                          IconButton(
                            icon: Icon(Icons.add, size: 18, color: Color(0xFF161A1D)),
                            onPressed: () {},
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

// --- MAIN SCREEN:
class ViewCartScreen extends BaseScreen<ViewCartController> {
  const ViewCartScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.9),
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
          icon: SvgPicture.asset('assets/icons/ic_order.svg', width: 24, height: 24),
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

// Tách phần body để xài StatefulWidget riêng cho dễ quản lý
class _AnimatedCartBody extends StatefulWidget {
  @override
  State<_AnimatedCartBody> createState() => _AnimatedCartBodyState();
}

class _AnimatedCartBodyState extends State<_AnimatedCartBody> {
  bool showCartUI = false;

  // Dữ liệu mẫu như cart screen bên trên
  final cartItems = [
    CartItem(image: 'assets/images/starbucks_drink1.png', title: 'Summer-Berry Starbuck Refreshers® Beverage', price: 6.59, quantity: 1),
    CartItem(image: 'assets/images/starbucks_drink2.png', title: 'White Chocolate Macadamia Cream Cold Brew', price: 6.59, quantity: 1),
    CartItem(image: 'assets/images/starbucks_drink3.png', title: 'Caramel Macchiato', price: 6.59, quantity: 2),
    CartItem(image: 'assets/images/starbucks_drink4.png', title: 'Caramel Ribbon Crunch Frappuccino® Blended Beverage', price: 6.59, quantity: 1),
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) setState(() => showCartUI = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!showCartUI) {
      // UI ban đầu (giống cũ)
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
                Image.asset('assets/images/img_bag.png', width: 195, height: 195, fit: BoxFit.contain),
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
    // Sau 5s => UI CartScreen
    final subtotal = cartItems.fold<double>(0, (sum, item) => sum + item.price * item.quantity);

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            itemCount: cartItems.length,
            separatorBuilder: (_, __) => Divider(height: 0, color: Color(0xFFE8EBEE), indent: 24, endIndent: 24),
            itemBuilder: (context, index) => CartProductItem(item: cartItems[index]),
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
                    '\$${subtotal.toStringAsFixed(2)}',
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
    );
  }
}
