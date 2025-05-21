import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;

  const BasicAppBar({
    super.key,
    required this.title,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xFF161A1D)),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF161A1D),
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      centerTitle: false,
      toolbarHeight: 56,
      leading: IconButton(
        onPressed: onBack ?? () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF161A1D)),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
