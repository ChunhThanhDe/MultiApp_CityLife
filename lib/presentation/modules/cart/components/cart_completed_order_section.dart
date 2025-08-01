import 'package:flutter/material.dart';

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
          color: const Color(0xFFF7F8F9),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                  ),
                  Text(subtitle, style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                ],
              ),
            ),
            Text(price, style: const TextStyle(fontSize: 14, color: Color(0xFF4A5763))),
            const Icon(Icons.chevron_right, color: Color(0xFF4A5763)),
          ],
        ),
      ),
    );
  }
}
