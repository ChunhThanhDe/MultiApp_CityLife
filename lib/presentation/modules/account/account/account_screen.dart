import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'account_controller.dart';

class _AccountMenuItem {
  final IconData icon;
  final String title;
  final Widget? trailing;
  _AccountMenuItem({required this.icon, required this.title, this.trailing});
}

class AccountScreen extends BaseScreen<AccountController> {
  const AccountScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    // Replace these icons with your custom icons as needed
    final List<_AccountMenuItem> menuItems = [
      _AccountMenuItem(icon: Icons.person_outline, title: 'Manage account'),
      _AccountMenuItem(icon: Icons.favorite_border, title: 'Favorites'),
      _AccountMenuItem(icon: Icons.lock_outline, title: 'Security'),
      _AccountMenuItem(icon: Icons.payment_outlined, title: 'Payment methods'),
      _AccountMenuItem(icon: Icons.location_on_outlined, title: 'Address'),
      _AccountMenuItem(icon: Icons.card_giftcard_outlined, title: 'Gift Cards'),
      _AccountMenuItem(icon: Icons.group_outlined, title: 'Invite friends'),
      _AccountMenuItem(icon: Icons.local_offer_outlined, title: 'Promotions'),
      _AccountMenuItem(icon: Icons.notifications_none, title: 'Notification'),
      _AccountMenuItem(icon: Icons.headphones_outlined, title: 'Help Center'),
      _AccountMenuItem(
        icon: Icons.nightlight_round_outlined,
        title: 'Dark Mode',
        trailing: Text('Auto', style: TextStyle(color: Color(0xFF4A5763))),
      ),
      _AccountMenuItem(
        icon: Icons.language_outlined,
        title: 'Language',
        trailing: Text('English (US)', style: TextStyle(color: Color(0xFF4A5763))),
      ),
      _AccountMenuItem(icon: Icons.info_outline, title: 'About App'),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF161A1D),
                      ),
                    ),
                  ),
                  // Add more widgets if you want actions/icons
                ],
              ),
            ),
            // Profile Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                color: Color(0xFFF7F8F9),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/32.jpg',
                      ),
                      backgroundColor: Color(0xFF5856D7),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abdulkadir Ali',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF161A1D),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '#SE32-4834-5037',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF4A5763),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed('/account/manage');
                      },
                      icon: Icon(Icons.edit, color: Color(0xFF4A5763)),
                    ),
                  ],
                ),
              ),
            ),
            // Menu List
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: menuItems.length,
                separatorBuilder: (context, i) => Divider(
                  color: Color(0xFFE8EBEE),
                  indent: 60,
                  height: 0,
                  thickness: 1,
                ),
                itemBuilder: (context, index) {
                  final item = menuItems[index];
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 24),
                    leading: Icon(item.icon, color: Color(0xFF4A5763)),
                    title: Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF161A1D),
                      ),
                    ),
                    trailing: item.trailing ?? Icon(Icons.chevron_right, color: Color(0xFF4A5763)),
                    onTap: () {},
                  );
                },
              ),
            ),
            // Sign Out Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFECEB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      minimumSize: Size(double.infinity, 48),
                      elevation: 0,
                      foregroundColor: Color(0xFFB80900),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign out",
                      style: TextStyle(
                        color: Color(0xFFB80900),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "v2.380",
                    style: TextStyle(
                      color: Color(0xFF161A1D),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            // Bottom Navigation Bar (mocked for this screen)
            _AccountBottomNavigationBar(selectedIndex: 4),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _AccountBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  const _AccountBottomNavigationBar({this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white.withOpacity(0.9),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF5856D7),
      unselectedItemColor: Color(0xFF161A1D),
      currentIndex: selectedIndex,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: "Service",
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.shopping_bag_outlined),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF3B30),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          label: "Carts",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          label: "Wallet",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Color(0xFF5856D7)),
          label: "Account",
        ),
      ],
      onTap: (index) {
        // Add navigation logic
      },
    );
  }
}
