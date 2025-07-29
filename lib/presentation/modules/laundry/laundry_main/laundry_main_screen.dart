import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'laundry_main_controller.dart';

class LaundryMainScreen extends BaseScreen<LaundryMainController> {
  const LaundryMainScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    const mainColor = Color(0xFF5856D7);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top purple background
          Container(width: double.infinity, height: 161, color: mainColor),
          SafeArea(
            child: Column(
              children: [
                // Custom AppBar
                _LaundryAppBar(),
                // Scrollable content
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Category Tabs
                        _LaundryCategoryTabs(),
                        // Banner + Dots + Text
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: _LaundryBanner()),
                        const SizedBox(height: 6),
                        // Pricing Section
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Pricing title
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pricing",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                                      ),
                                      SizedBox(height: 4),
                                      Text("Each item is charged separately", style: TextStyle(fontSize: 14, color: Color(0xFF4A5763))),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                // List of pricing items
                                Column(
                                  children: [
                                    _PricingCell(title: 'Tops', parts: 4),
                                    _Divider(),
                                    _PricingCell(title: 'Bottoms', parts: 12),
                                    _Divider(),
                                    _PricingCell(title: 'Undergarment', parts: 4),
                                    _Divider(),
                                    _PricingCell(title: 'Home Items', parts: 4),
                                    _Divider(),
                                    _PricingCell(title: 'Formal', parts: 4),
                                    _Divider(),
                                    _PricingCell(title: 'Others', parts: 36),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 94), // Space for bottom nav
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom NavBar
          const Align(alignment: Alignment.bottomCenter, child: _LaundryBottomNavBar()),
        ],
      ),
    );
  }
}

// ------------ Widget Components ------------

// Custom AppBar
class _LaundryAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.transparent,
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Laundry",
              style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
            ),
          ),
          Icon(Icons.notifications_none, color: Colors.white, size: 24),
        ],
      ),
    );
  }
}

// Category Tabs
class _LaundryCategoryTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 24, right: 0, top: 12, bottom: 8),
        children: [
          _CategoryTab(icon: Icons.checkroom, label: "Clothes", active: true),
          SizedBox(width: 16),
          _CategoryTab(icon: Icons.iron, label: "Iron"),
          SizedBox(width: 16),
          _CategoryTab(icon: Icons.bed_outlined, label: "Home"),
          SizedBox(width: 16),
          _CategoryTab(icon: Icons.backpack_outlined, label: "Bogs"),
          SizedBox(width: 16),
          _CategoryTab(icon: Icons.sports_esports_outlined, label: "Shoes"),
        ],
      ),
    );
  }
}

class _CategoryTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;
  const _CategoryTab({required this.icon, required this.label, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(color: Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(color: Color(0x1A101214), offset: Offset(0, 6), blurRadius: 8),
                  BoxShadow(color: Color(0x1A101214), offset: Offset(0, 18), blurRadius: 24),
                ],
              ),
              child: Icon(icon, size: 28, color: active ? Color(0xFF5856D7) : Color(0xFF161A1D)),
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: active ? Color(0xFF5856D7) : Color(0xFF161A1D)),
        ),
      ],
    );
  }
}

// Banner + Dots + Text
class _LaundryBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Banner Image (replace with your asset)
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'assets/banner_laundry.jpg', // Bạn nhớ add asset vào pubspec.yaml
            width: 382,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        // Dots
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [_Dot(active: false), _Dot(active: true), _Dot(active: false), _Dot(active: false)]),
        SizedBox(height: 8),
        // Text
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dry clean or wash?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
              ),
              SizedBox(height: 4),
              Text(
                "Leave the decision to our laundry experts as we have more than 50+ cleaning programs to choose from depending on your fabrics",
                style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  final bool active;
  const _Dot({this.active = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 24 : 12,
      height: 4,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(color: active ? Color(0xFF5856D7) : Color(0x1A101214), borderRadius: BorderRadius.circular(24)),
    );
  }
}

// Pricing Cell
class _PricingCell extends StatelessWidget {
  final String title;
  final int parts;

  const _PricingCell({required this.title, required this.parts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
            ),
          ),
          Text(
            "$parts Parts",
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
          ),
          Icon(Icons.keyboard_arrow_right_rounded, color: Color(0xFF4A5763)),
        ],
      ),
    );
  }
}

// Divider (thin line)
class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(left: 24), height: 1, color: Color(0xFFE8EBEE));
  }
}

// Bottom Navigation Bar
class _LaundryBottomNavBar extends StatelessWidget {
  const _LaundryBottomNavBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        border: Border(top: BorderSide(color: Color(0x0D101214))),
        // backdropFilter không hỗ trợ Flutter, chỉ dùng color
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _NavItem(icon: Icons.home, label: "Home"),
            _NavItem(icon: Icons.miscellaneous_services_rounded, label: "Service", active: true),
            Stack(
              children: [
                _NavItem(icon: Icons.shopping_bag_outlined, label: "Carts"),
                // Notification dot
                Positioned(
                  right: 6,
                  top: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(color: Color(0xFFFF3B30), shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
            _NavItem(icon: Icons.account_balance_wallet_outlined, label: "Wallet"),
            _NavItem(icon: Icons.person_outline, label: "Account"),
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _NavItem({required this.icon, required this.label, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 24, color: active ? Color(0xFF5856D7) : Color(0xFF161A1D)),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: active ? Color(0xFF5856D7) : Color(0xFF161A1D)),
        ),
      ],
    );
  }
}
