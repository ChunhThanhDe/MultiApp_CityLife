import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/services/auth_service.dart';

import 'account_controller.dart';

class AccountMenuItem {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onClick;

  const AccountMenuItem({
    required this.icon,
    required this.title,
    this.trailing,
    this.onClick,
  });
}

class AccountScreen extends BaseScreen<AccountController> {
  const AccountScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(
      title: "Account",
      onBack: () => Get.back(),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    final List<AccountMenuItem> menuItems = [
      AccountMenuItem(
        icon: Icons.person_outline,
        title: 'Manage account',
        onClick: () => Get.toNamed(AppRoutes.accountManage),
      ),
      AccountMenuItem(
        icon: Icons.favorite_border,
        title: 'Favorites',
        onClick: () => Get.toNamed(AppRoutes.favorites),
      ),
      AccountMenuItem(
        icon: Icons.lock_outline,
        title: 'Security',
        onClick: () => Get.toNamed(AppRoutes.accountSecurity),
      ),
      AccountMenuItem(
        icon: Icons.payment_outlined,
        title: 'Payment methods',
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.location_on_outlined,
        title: 'Address',
        onClick: () {
          Get.toNamed(AppRoutes.address);
        },
      ),
      AccountMenuItem(
        icon: Icons.card_giftcard_outlined,
        title: 'Gift Cards',
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.group_outlined,
        title: 'Invite friends',
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.local_offer_outlined,
        title: 'Promotions',
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.notifications_none,
        title: 'Notification',
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.headphones_outlined,
        title: 'Help Center',
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.nightlight_round_outlined,
        title: 'Dark Mode',
        trailing: Text('Auto', style: TextStyle(color: Color(0xFF4A5763))),
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.language_outlined,
        title: 'Language',
        trailing: Text('English (US)', style: TextStyle(color: Color(0xFF4A5763))),
        onClick: () {},
      ),
      AccountMenuItem(
        icon: Icons.info_outline,
        title: 'About App',
        onClick: () {},
      ),
    ];

    return Column(
      children: [
        _ProfileCard(),
        // Menu
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
                onTap: item.onClick,
              );
            },
          ),
        ),
        // Sign Out & App version
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                onPressed: () => AuthService.logout(),
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
        SizedBox(height: 8),
      ],
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F8F9),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/img_avatar_default.png'),
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
              Get.toNamed(AppRoutes.accountManage);
            },
            icon: Icon(Icons.edit, color: Color(0xFF4A5763)),
          ),
        ],
      ),
    );
  }
}
