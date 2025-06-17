import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A basic app bar widget that provides a simple title and back navigation.
///
/// This widget implements [PreferredSizeWidget] to be used as an AppBar.
/// It features a consistent design with a back button and title text.
/// The back button uses iOS-style arrow and can be customized with a callback.
///
/// Example usage:
/// ```dart
/// BasicAppBar(
///   title: 'My Page',
///   onBack: () => Get.back(),
/// )
/// ```
class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The title text to display in the app bar.
  final String title;

  /// Optional callback function to handle back button presses.
  /// If not provided, defaults to calling Get.back().
  final VoidCallback? onBack;

  /// Creates a [BasicAppBar] with the specified [title] and optional [onBack] callback.
  ///
  /// The [title] parameter is required and will be displayed as the app bar title.
  /// The [onBack] parameter is optional and defaults to Get.back() if not provided.
  const BasicAppBar({super.key, required this.title, this.onBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xFF161A1D)),
      title: Text(
        title,
        style: const TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 18),
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
