import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class DeliveryItem extends StatelessWidget {
  const DeliveryItem({required this.code, required this.date, required this.status, super.key, this.statusColor});
  final String code, date, status;
  final Color? statusColor;
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
                      Text(code, style: inter(16, FontWeight.w500, AppColors.textBaseGrey950)),
                      Text(date, style: inter(12, FontWeight.w400, AppColors.textGreyDefault500)),
                    ],
                  ),
                ),
                // Status
                Text(status, style: inter(14, FontWeight.w400, statusColor ?? AppColors.textGreyDefault500)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Divider(color: AppColors.stateGreyLow300, height: 1, indent: 24, endIndent: 24),
        ],
      ),
    );
  }
}
