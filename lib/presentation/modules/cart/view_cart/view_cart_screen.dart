import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

import 'view_cart_controller.dart';

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
    return Column(
      children: [
        // Switch Tab Orders/Delivery
        SizedBox(height: 100),
        // Spacer
        SizedBox(height: 28),
        // Centered Illustration (Bag with gray circle)
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
        // Text
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
        // Button
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
    );
  }
}
