import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;

  const AccountAppBar({
    super.key,
    required this.title,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        border: const Border(
          bottom: BorderSide(color: Color(0xFFE8EBEE)),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              children: [
                IconButton(
                  onPressed: onBack ?? () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF161A1D)),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFF161A1D),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
