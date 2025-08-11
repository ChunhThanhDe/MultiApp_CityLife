import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_dialog.dart';
import 'package:sixam_mart_user/services/auth_service.dart';

class AccountMenuItem {
  const AccountMenuItem({required this.icon, required this.title, this.trailing, this.onClick});
  final String icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onClick;
}

class AccountScreen extends BaseScreen<AccountController> {
  const AccountScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const BasicAppBar(title: 'Account', isShowBackButton: false);
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
      confirmTextStyle: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.stateBaseWhite),
      titleStyle: AppTextStyles.typographyH10SemiBold,
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    final List<AccountMenuItem> menuItems = [
      AccountMenuItem(icon: Assets.icons.icPersonOutlined.path, title: 'Manage account', onClick: () => Get.toNamed(AppRoutes.accountManage)),
      AccountMenuItem(icon: Assets.icons.icHeartOutlined.path, title: 'Favorites', onClick: () => Get.toNamed(AppRoutes.favorites)),
      AccountMenuItem(icon: Assets.icons.icLockRounded.path, title: 'Security', onClick: () => Get.toNamed(AppRoutes.accountSecurity)),
      AccountMenuItem(icon: Assets.icons.icWalletOutlined.path, title: 'Payment methods', onClick: () {}),
      AccountMenuItem(
        icon: Assets.icons.icLocation.path,
        title: 'Address',
        onClick: () {
          Get.toNamed(AppRoutes.address);
        },
      ),
      AccountMenuItem(icon: Assets.icons.icGift.path, title: 'Gift Cards', onClick: () {}),
      AccountMenuItem(icon: Assets.icons.icGroup.path, title: 'Invite friends', onClick: () {}),
      AccountMenuItem(icon: Assets.icons.icPromotion.path, title: 'Promotions', onClick: () {}),
      AccountMenuItem(icon: Assets.icons.icBell.path, title: 'Notification', onClick: () {}),
      AccountMenuItem(icon: Assets.icons.icHeadphone.path, title: 'Help Center', onClick: () {}),
      AccountMenuItem(
        icon: Assets.icons.icMoon.path,
        title: 'Dark Mode',
        trailing: GetBuilder<AccountController>(
          builder: (controller) => Text(controller.currentThemeDisplayName, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
        ),
        onClick: () => controller.showThemeSelection(),
      ),
      AccountMenuItem(
        icon: Assets.icons.icLanguage.path,
        title: 'Language',
        trailing: GetBuilder<AccountController>(
          builder: (controller) => Text(controller.currentLanguageDisplayName, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
        ),
        onClick: () => controller.showLanguageSelection(),
      ),
      AccountMenuItem(icon: Assets.icons.icInfo.path, title: 'About App', onClick: () {}),
    ];

    // Total items: 1 profile card + menu items + 1 sign out section
    final totalItems = 1 + menuItems.length + 1;

    return RefreshIndicator(
      onRefresh: controller.refreshUserInfo,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: totalItems,
        itemBuilder: (context, index) {
          // Profile card at index 0
          if (index == 0) {
            return const _ProfileCard();
          }
          // Menu items
          else if (index <= menuItems.length) {
            final menuIndex = index - 1;
            final item = menuItems[menuIndex];
            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
                  leading: SvgPicture.asset(item.icon, colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
                  title: Text(
                    item.title,
                    style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
                  ),
                  trailing: item.trailing ?? Icon(Icons.chevron_right, color: AppColors.textGreyHigh700),
                  onTap: item.onClick,
                ),
                if (menuIndex < menuItems.length - 1) Divider(color: AppColors.stateGreyLowestHover100, indent: 60, height: 0, thickness: 1),
              ],
            );
          }
          // Sign out section at the last index
          else {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.stateDangerLowest50,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      minimumSize: const Size(double.infinity, 48),
                      elevation: 0,
                      foregroundColor: AppColors.stateDangerHigh700,
                    ),
                    onPressed: _showLogoutConfirmation,
                    child: Text(
                      'Sign out',
                      style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textDangerDefault500),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text('v2.380', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHighest950)),
                  const SizedBox(height: 8),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (controller) {
        final userName = controller.hasUserInfo ? controller.userName : 'User';
        final userRefId = controller.hasUserInfo && controller.currentUserInfo.refCode.isNotEmpty ? '#${controller.currentUserInfo.refCode}' : '#Unknown';
        final userImage = controller.hasUserInfo && controller.currentUserInfo.imageFullUrl.isNotEmpty ? controller.currentUserInfo.imageFullUrl : 'assets/images/img_avatar_default.png';

        return Container(
          color: AppColors.stateGreyLowest50,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: controller.hasUserInfo && controller.currentUserInfo.imageFullUrl.isNotEmpty ? NetworkImage(userImage) : AssetImage(userImage) as ImageProvider,
                backgroundColor: AppColors.stateBrandDefault500,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950),
                    ),
                    const SizedBox(height: 4),
                    Text(userRefId, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.accountManage);
                },
                icon: SvgPicture.asset(Assets.icons.icPencil.path),
              ),
            ],
          ),
        );
      },
    );
  }
}
