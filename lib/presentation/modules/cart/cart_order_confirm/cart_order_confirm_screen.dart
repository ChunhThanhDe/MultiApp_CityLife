import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'cart_order_confirm_controller.dart';

class CartOrderConfirmScreen extends BaseScreen<CartOrderConfirmController> {
  const CartOrderConfirmScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Order');
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      final stepData = controller.stepsData[controller.step.value];
      return Column(
        children: [
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 136,
                              height: 136,
                              decoration: BoxDecoration(color: Color(0xFFF7F8F9), shape: BoxShape.circle),
                              child: Center(child: SvgPicture.asset(stepData.iconAsset)),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            stepData.title,
                            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 28, color: Color(0xFF161A1D), height: 36 / 28),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            stepData.subtitle,
                            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF4A5763), height: 24 / 16),
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            ...List.generate(
                              controller.stepsData.length,
                              (i) => Expanded(
                                child: Container(
                                  height: 5,
                                  margin: EdgeInsets.only(right: i == controller.stepsData.length - 1 ? 0 : 12),
                                  decoration: BoxDecoration(color: i <= controller.step.value ? Color(0xFF5856D7) : Color(0xFFE8EBEE), borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Divider
                  Container(height: 6, width: double.infinity, color: Color(0xFFF7F8F9)),

                  // Address Section
                  Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: sectionTitle('Address')),
                  cellItem(
                    iconAsset: 'assets/icons/ic_home.svg', // Replace with your asset
                    title: 'My Home',
                    subtitle: '2216 N 10th St, Apt 0, El Centro, CA 92243',
                  ),
                  dividerLine(),
                  cellItem(
                    iconAsset: 'assets/icons/ic_box_package_courier_hands.svg', // Replace with your asset
                    title: 'Hand it to me',
                    subtitle: 'Please Hand it to me',
                  ),

                  // Divider
                  Container(height: 6, width: double.infinity, color: Color(0xFFF7F8F9)),

                  // Order Details Section
                  Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: sectionTitle('Order Details')),
                  // Starbucks item
                  orderDetailItem(
                    imageAsset: 'assets/images/starbucks.png', // Replace with your asset
                    title: 'Starbucks®',
                    subtitle: '4 items',
                    price: 14.32,
                  ),
                  dividerLine(),
                  // Walmart item
                  orderDetailItem(
                    imageAsset: 'assets/images/mcdonalds.png', // Replace with your asset
                    title: 'mcdonalds',
                    subtitle: '11 items',
                    price: 21.55,
                  ),

                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }

  // Section Title Widget
  Widget sectionTitle(String text) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Text(
      text,
      style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xFF161A1D), height: 28 / 18),
    ),
  );

  // Divider Line Widget
  Widget dividerLine() => Padding(
    padding: EdgeInsets.only(left: 60), // aligns with icon
    child: Divider(height: 0, thickness: 1, color: Color(0xFFE8EBEE)),
  );

  // Cell Item Widget (Address)
  Widget cellItem({required String iconAsset, required String title, required String subtitle}) => Container(
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
    child: Row(
      children: [
        SvgPicture.asset(iconAsset, width: 24, height: 24),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
              ),
              Text(
                subtitle,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  // Order Detail Item Widget
  Widget orderDetailItem({required String imageAsset, required String title, required String subtitle, required double price}) => Container(
    height: 66,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    child: Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Image.asset(imageAsset, width: 32, height: 32, fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
              ),
              Text(
                subtitle,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
        ),
        Icon(Icons.expand_more, color: Color(0xFF4A5763)),
      ],
    ),
  );
}
