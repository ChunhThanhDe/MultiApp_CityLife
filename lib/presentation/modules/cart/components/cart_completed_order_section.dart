import 'package:flutter/material.dart';

class CompletedOrderSection extends StatelessWidget {
  final String date;
  final String status;
  final List<OrderListItem> orders;

  const CompletedOrderSection({super.key, required this.date, required this.status, required this.orders});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xFFF7F8F9),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(date, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              ),

              Text(status, style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
        ...orders,
      ],
    );
  }
}

class OrderListItem extends StatelessWidget {
  final ImageProvider brandLogo;
  final String brandName;
  final String subtitle;
  final String price;

  const OrderListItem({super.key, required this.brandLogo, required this.brandName, required this.subtitle, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: brandLogo, radius: 16),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brandName,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                ),
                Text(subtitle, style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
              ],
            ),
          ),
          Text(price, style: TextStyle(fontSize: 14, color: Color(0xFF4A5763))),
          Icon(Icons.chevron_right, color: Color(0xFF4A5763)),
        ],
      ),
    );
  }
}
