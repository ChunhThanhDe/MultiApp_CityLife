import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceCard extends StatelessWidget {
  final String svgAsset; // <-- đổi từ IconData sang String
  final String title;
  final String description;

  const ServiceCard({
    required this.svgAsset,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      decoration: BoxDecoration(
        color: Color(0xFFF7F8F9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            svgAsset,
            width: 44,
            height: 44,
            color: Color(0xFF5856D7), // Nếu muốn tô màu (icon phải là svg dạng stroke, không phải fill)
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF161A1D)),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 6),
          Text(
            description,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
