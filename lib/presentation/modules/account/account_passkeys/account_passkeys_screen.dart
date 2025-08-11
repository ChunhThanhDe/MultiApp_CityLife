import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'package:sixam_mart_user/presentation/modules/account/account_passkeys/account_passkeys_controller.dart';

class PasskeyItem {
  PasskeyItem(this.title, this.subtitle);
  final String title;
  final String subtitle;
}

class AccountPasskeysScreen extends BaseScreen<AccountPasskeysController> {
  const AccountPasskeysScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Passkeys', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    final List<PasskeyItem> passkeys = [
      PasskeyItem('iPhone 15 Pro Max', 'Last used: May 10, 2024, San Francisco, CA, USA'),
      PasskeyItem('iCloud Keychain', 'Last used: May 26, 2024, San Francisco, CA, USA'),
      PasskeyItem('iPhone 14 Pro', 'Last used: May 10, 2023, San Francisco, CA, USA'),
      PasskeyItem('iPhone 11', 'Last used: May 10, 2020, New York, CA, USA'),
    ];
    return Column(
      children: [
        // Passkey list
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: passkeys.length,
            separatorBuilder: (_, _) => Divider(color: AppColors.stateGreyLow300, indent: 24, endIndent: 24, height: 0, thickness: 1),
            itemBuilder: (context, index) => _PasskeyListItem(
              item: passkeys[index],
              onDelete: () {
                // Xử lý xóa passkey ở đây
              },
            ),
          ),
        ),
        // Bottom create passkey section
        _BottomSection(),
      ],
    );
  }
}

class _PasskeyListItem extends StatelessWidget {
  const _PasskeyListItem({required this.item, required this.onDelete});
  final PasskeyItem item;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title & Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
                ),
                const SizedBox(height: 2),
                Text(item.subtitle, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)),
              ],
            ),
          ),
          // Delete icon
          IconButton(
            onPressed: onDelete,
            icon: Icon(Icons.delete_outline, color: AppColors.textGreyHigh700),
            tooltip: 'Delete',
          ),
        ],
      ),
    );
  }
}

class _BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24.w, top: 24.h, right: 24.w, bottom: 24.h),
      decoration: BoxDecoration(
        color: AppColors.backgroundSurfacePrimaryWhite,
        border: Border(top: BorderSide(color: AppColors.alphaGrey10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title & desc
          Text(
            'Create a passkey on this device',
            style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950),
          ),
          const SizedBox(height: 4),
          Text('Speed up your sign in next time by creating a passkey on this device', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                // Xử lý tạo passkey mới ở đây
              },
              icon: Icon(Icons.add, color: AppColors.textGreyHighest950),
              label: Text(
                'Create a passkey',
                style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.backgroundSurfaceTertiaryGrey50,
                padding: EdgeInsets.symmetric(vertical: 12.h),
                side: BorderSide(color: AppColors.backgroundSurfacePrimaryWhite.withValues(alpha: 0)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
