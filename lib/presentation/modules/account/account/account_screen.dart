import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_dialog.dart';
import 'package:sixam_mart_user/services/auth_service.dart';

import 'account_controller.dart';

class AccountMenuItem {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onClick;

  const AccountMenuItem({required this.icon, required this.title, this.trailing, this.onClick});
}

class AccountScreen extends BaseScreen<AccountController> {
  const AccountScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: "Account", onBack: () => Get.back());
  }

  void _showLogoutConfirmation() {
    showConfirmationDialog(
      onCancel: () => Get.back(),
      onConfirm: () {
        Get.back();
        AuthService.logout();
      },
      title: 'Sign Out',
      message: 'Are you sure you want to sign out of your account?',
      cancelText: 'Cancel',
      confirmText: 'Sign Out',
      cancelColor: AppColors.textGreyDefault500,
      confirmColor: AppColors.textDangerDefault500,
      cancelTextStyle: AppTextStyles.typographyH10SemiBold,
      confirmTextStyle: AppTextStyles.typographyH10SemiBold.copyWith(color: Colors.white),
      titleStyle: AppTextStyles.typographyH10SemiBold,
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    final List<AccountMenuItem> menuItems = [
      AccountMenuItem(icon: Icons.person_outline, title: 'Manage account', onClick: () => Get.toNamed(AppRoutes.accountManage)),
      AccountMenuItem(icon: Icons.favorite_border, title: 'Favorites', onClick: () => Get.toNamed(AppRoutes.favorites)),
      AccountMenuItem(icon: Icons.lock_outline, title: 'Security', onClick: () => Get.toNamed(AppRoutes.accountSecurity)),
      AccountMenuItem(icon: Icons.payment_outlined, title: 'Payment methods', onClick: () {}),
      AccountMenuItem(
        icon: Icons.location_on_outlined,
        title: 'Address',
        onClick: () {
          Get.toNamed(AppRoutes.address);
        },
      ),
      AccountMenuItem(icon: Icons.card_giftcard_outlined, title: 'Gift Cards', onClick: () {}),
      AccountMenuItem(icon: Icons.group_outlined, title: 'Invite friends', onClick: () {}),
      AccountMenuItem(icon: Icons.local_offer_outlined, title: 'Promotions', onClick: () {}),
      AccountMenuItem(icon: Icons.notifications_none, title: 'Notification', onClick: () {}),
      AccountMenuItem(icon: Icons.headphones_outlined, title: 'Help Center', onClick: () {}),
      AccountMenuItem(
        icon: Icons.nightlight_round_outlined,
        title: 'Dark Mode',
        trailing: GetBuilder<AccountController>(
          builder: (controller) => Text(controller.currentThemeDisplayName, style: TextStyle(color: Color(0xFF4A5763))),
        ),
        onClick: () => controller.showThemeSelection(),
      ),
      AccountMenuItem(
        icon: Icons.language_outlined,
        title: 'Language',
        trailing: GetBuilder<AccountController>(
          builder: (controller) => Text(controller.currentLanguageDisplayName, style: TextStyle(color: Color(0xFF4A5763))),
        ),
        onClick: () => controller.showLanguageSelection(),
      ),
      AccountMenuItem(icon: Icons.info_outline, title: 'About App', onClick: () {}),
    ];

    // Total items: 1 profile card + menu items + 1 sign out section
    final totalItems = 1 + menuItems.length + 1;

    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: totalItems,
      itemBuilder: (context, index) {
        // Profile card at index 0
        if (index == 0) {
          return _ProfileCard();
        }
        // Menu items
        else if (index <= menuItems.length) {
          final menuIndex = index - 1;
          final item = menuItems[menuIndex];
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 24),
                leading: Icon(item.icon, color: Color(0xFF4A5763)),
                title: Text(
                  item.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                ),
                trailing: item.trailing ?? Icon(Icons.chevron_right, color: Color(0xFF4A5763)),
                onTap: item.onClick,
              ),
              if (menuIndex < menuItems.length - 1) Divider(color: Color(0xFFE8EBEE), indent: 60, height: 0, thickness: 1),
            ],
          );
        }
        // Sign out section at the last index
        else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFECEB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                    minimumSize: Size(double.infinity, 48),
                    elevation: 0,
                    foregroundColor: Color(0xFFB80900),
                  ),
                  onPressed: _showLogoutConfirmation,
                  child: Text(
                    "Sign out",
                    style: TextStyle(color: Color(0xFFB80900), fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 8),
                Text("v2.380", style: TextStyle(color: Color(0xFF161A1D), fontSize: 12)),
                SizedBox(height: 8),
              ],
            ),
          );
        }
      },
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
          CircleAvatar(radius: 24, backgroundImage: AssetImage('assets/images/img_avatar_default.png'), backgroundColor: Color(0xFF5856D7)),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abdulkadir Ali',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                ),
                SizedBox(height: 4),
                Text('#SE32-4834-5037', style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
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
