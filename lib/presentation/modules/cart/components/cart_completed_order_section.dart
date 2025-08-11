import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class CompletedOrderSection extends StatelessWidget {

  const CompletedOrderSection({required this.date, required this.status, required this.orders, super.key});
  final String date;
  final String status;
  final List<OrderListItem> orders;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppTheme.theme.backgroundSurfaceTertiaryGrey50,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          child: Row(
            children: [
              Expanded(
                child: Text(date, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              ),

              Text(status, style: const TextStyle(fontSize: 14)),
            ],
          ),
        ),
        ...orders,
      ],
    );
  }
}

class OrderListItem extends StatelessWidget {

  const OrderListItem({
    required this.brandLogo, required this.brandName, required this.subtitle, required this.price, super.key,
    this.onTap,
  });
  final ImageProvider brandLogo;
  final String brandName;
  final String subtitle;
  final String price;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        child: Row(
          children: [
            CircleAvatar(backgroundImage: brandLogo, radius: 16),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brandName,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.theme.textGreyHighest950),
                  ),
                  Text(subtitle, style: TextStyle(fontSize: 12, color: AppTheme.theme.textGreyHigh700)),
                ],
              ),
            ),
            Text(price, style: TextStyle(fontSize: 14, color: AppTheme.theme.textGreyHigh700)),
            Icon(Icons.chevron_right, color: AppTheme.theme.textGreyHigh700),
          ],
        ),
      ),
    );
  }
}
