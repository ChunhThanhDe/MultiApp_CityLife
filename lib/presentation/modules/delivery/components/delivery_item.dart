import 'package:flutter/material.dart';

class DeliveryItem extends StatelessWidget {
  final String code, date, status;
  final Color? statusColor;
  const DeliveryItem({
    super.key,
    required this.code,
    required this.date,
    required this.status,
    this.statusColor,
  });
  @override
  Widget build(BuildContext context) {
    TextStyle inter(double size, [FontWeight? w, Color? c]) => TextStyle(fontSize: size, fontWeight: w, color: c);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 2),
            child: Row(
              children: [
                // Main info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(code, style: inter(16, FontWeight.w500, Color(0xFF161A1D))),
                      Text(date, style: inter(12, FontWeight.w400, Color(0xFF4A5763))),
                    ],
                  ),
                ),
                // Status
                Text(
                  status,
                  style: inter(14, FontWeight.w400, statusColor ?? Color(0xFF4A5763)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xFFE8EBEE), height: 1, indent: 24, endIndent: 24),
        ],
      ),
    );
  }
}
