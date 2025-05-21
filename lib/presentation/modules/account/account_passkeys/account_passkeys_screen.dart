import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'account_passkeys_controller.dart';

class PasskeyItem {
  final String title;
  final String subtitle;
  PasskeyItem(this.title, this.subtitle);
}

class AccountPasskeysScreen extends BaseScreen<AccountPasskeysController> {
  const AccountPasskeysScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(
      title: "Passkeys",
      onBack: () => Get.back(),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    final List<PasskeyItem> passkeys = [
      PasskeyItem("iPhone 15 Pro Max", "Last used: May 10, 2024, San Francisco, CA, USA"),
      PasskeyItem("iCloud Keychain", "Last used: May 26, 2024, San Francisco, CA, USA"),
      PasskeyItem("iPhone 14 Pro", "Last used: May 10, 2023, San Francisco, CA, USA"),
      PasskeyItem("iPhone 11", "Last used: May 10, 2020, New York, CA, USA"),
    ];
    return Column(
      children: [
        // Passkey list
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: passkeys.length,
            separatorBuilder: (_, __) => Divider(
              color: Color(0xFFE8EBEE),
              indent: 24,
              endIndent: 24,
              height: 0,
              thickness: 1,
            ),
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
  final PasskeyItem item;
  final VoidCallback onDelete;
  const _PasskeyListItem({
    required this.item,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
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
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF161A1D),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF4A5763),
                  ),
                ),
              ],
            ),
          ),
          // Delete icon
          IconButton(
            onPressed: onDelete,
            icon: Icon(Icons.delete_outline, color: Color(0xFF4A5763)),
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
      padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0x10101214))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title & desc
          Text(
            "Create a passkey on this device",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF161A1D),
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Speed up your sign in next time by creating a passkey on this device",
            style: TextStyle(fontSize: 14, color: Color(0xFF4A5763)),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                // Xử lý tạo passkey mới ở đây
              },
              icon: Icon(Icons.add, color: Color(0xFF161A1D)),
              label: Text(
                "Create a passkey",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF161A1D),
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0xFFF7F8F9),
                padding: EdgeInsets.symmetric(vertical: 12),
                side: BorderSide(color: Colors.transparent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
