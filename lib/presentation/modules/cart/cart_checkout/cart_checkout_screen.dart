import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'cart_checkout_controller.dart';

class CartCheckoutScreen extends BaseScreen<CartCheckoutController> {
  const CartCheckoutScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Checkout');
  }

  @override
  Widget buildScreen(BuildContext context) {
    // For demo: Just use asset or Icon

    Widget arrowRight = Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763));

    return SingleChildScrollView(
      child: Column(
        children: [
          // Address Section
          sectionCard(
            children: [
              cellItem(icon: SvgPicture.asset('assets/icons/ic_home.svg'), title: "My Home", subtitle: "2216 N 10th St, Apt 0, El Centro, CA 92243", onTap: () {}),
              divider(60),
              cellItem(icon: SvgPicture.asset('assets/icons/ic_box_package_courier_hands.svg'), title: "Hand it to me", subtitle: "Please Hand it to me", onTap: () {}),
            ],
          ),

          dividerSpace(),

          // Delivery Options
          sectionLabel("Delivery Options"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                deliveryOption(selected: false, icon: SvgPicture.asset('assets/icons/ic_priority.svg'), title: "Priority", subtitle: "5-10 min(s) Delivered directly to you", label: "\$5.99"),
                SizedBox(height: 16),
                deliveryOption(selected: false, icon: SvgPicture.asset('assets/icons/ic_schedule.svg'), title: "Schedule", subtitle: "Select a time", trailing: arrowRight),
                SizedBox(height: 16),
                deliveryOption(selected: true, icon: SvgPicture.asset('assets/icons/ic_standard.svg'), title: "Standard", subtitle: "10-25 min(s) Delivered"),
              ],
            ),
          ),

          dividerSpace(),

          // Order Details
          sectionLabel("Order Details"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                orderGroupItem(logo: "assets/images/starbucks.png", name: "Starbucks®", detail: "4 items", amount: "\$14.32"),
                SizedBox(height: 8),
                orderGroupItem(logo: "assets/images/mcdonalds.png", name: "Walmart", detail: "11 items", amount: "\$21.55"),
              ],
            ),
          ),

          dividerSpace(),

          // Promocode
          sectionLabel("Promocode"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                // Icon + Hint Text (giả lập textfield flatformless)
                Icon(Icons.sell_outlined, color: Color(0xFF798A9A), size: 18),
                SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // mở dialog hoặc bottomsheet nhập code thực sự nếu muốn
                    },
                    child: Text(
                      "Enter Code",
                      style: TextStyle(fontFamily: 'Inter', color: Color(0xFF798A9A), fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF5856D7),
                    minimumSize: Size(0, 32),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    textStyle: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                  child: Text("Apply"),
                ),
              ],
            ),
          ),

          divider(),

          // Price Summary
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                priceRow("Subtotal:", "\$35.87"),
                priceRow("Delivery Fee:", "\$8.99"),
                priceRow("Taxes & Estimated Fees:", "\$0.00"),
                priceRow("Discount:", "\$0.00"),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 20, fontFamily: 'Inter'),
                    ),
                    Text(
                      "\$35.87",
                      style: TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 20, fontFamily: 'Inter'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          dividerSpace(),

          // Payment Section
          sectionLabel("Payment"),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 24), child: paymentItem()),

          // Button
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5856D7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                ),
                onPressed: () {
                  Get.toNamed(AppRoutes.cartConfirm);
                },
                child: Text(
                  "Order Now",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  // Helper widgets for section structure

  Widget sectionCard({required List<Widget> children}) => Column(children: children);

  Widget divider([double leftPad = 0]) => Padding(
    padding: EdgeInsets.only(left: leftPad),
    child: Divider(height: 1, color: Color(0xFFE8EBEE)),
  );

  Widget dividerSpace() => Container(width: double.infinity, height: 6, color: Color(0xFFF7F8F9));

  Widget sectionLabel(String label) => Padding(
    padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
    child: Row(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF161A1D), fontFamily: 'Inter'),
        ),
      ],
    ),
  );

  Widget cellItem({
    required Widget icon, // <-- nhận bất cứ widget gì
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) => InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      height: 50,
      child: Row(
        children: [
          SizedBox(width: 24, height: 24, child: icon),
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
          Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
        ],
      ),
    ),
  );

  Widget deliveryOption({
    required bool selected,
    required Widget icon, // Nhận mọi widget, dùng Image.asset, SvgPicture.asset, Icon...
    required String title,
    required String subtitle,
    String? label,
    Widget? trailing,
  }) => Container(
    decoration: BoxDecoration(
      color: selected ? Color(0xFFEFEFFB) : Colors.white,
      border: Border.all(color: selected ? Color(0xFFBEBDEF) : Color(0x1A101214), width: 1),
      borderRadius: BorderRadius.circular(6),
    ),
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    child: Row(
      children: [
        SizedBox(width: 24, height: 24, child: icon),
        SizedBox(width: 12),
        Expanded(
          child: Column(
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
        if (label != null)
          Text(
            label,
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
          ),
        if (trailing != null) trailing,
        if (selected) Icon(Icons.check_circle, color: Color(0xFF242290), size: 24),
      ],
    ),
  );

  Widget orderGroupItem({required String logo, required String name, required String detail, required String amount}) => Container(
    height: 66,
    margin: EdgeInsets.only(bottom: 8),
    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    child: Row(
      children: [
        // Sử dụng CircleAvatar với child là SvgPicture.asset
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.transparent, // Nếu muốn không viền
          child: SvgPicture.asset(
            logo,
            width: 32, // hoặc 30 để vừa vòng tròn
            height: 32,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
              ),
              Text(
                detail,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
        Text(
          amount,
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
        ),
        Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF4A5763)),
      ],
    ),
  );
  Widget priceRow(String left, String right) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Text(
          right,
          style: TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );

  Widget paymentItem() => Container(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Container(
          width: 42,
          height: 28,
          decoration: BoxDecoration(color: Color(0xFF1434CB), borderRadius: BorderRadius.circular(4)),
          alignment: Alignment.center,
          child: Text(
            "VISA",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15, letterSpacing: 1.2, fontFamily: 'Inter'),
          ),
        ),
        SizedBox(width: 12),
        Text(
          "Visa ••••5290",
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
      ],
    ),
  );
}
