import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceCard extends StatelessWidget {

  const ServiceCard({required this.svgAsset, required this.title, required this.description, this.onTap, super.key});
  final String svgAsset;
  final String title;
  final String description;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 170,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        decoration: BoxDecoration(color: const Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            SvgPicture.asset(svgAsset, width: 44, height: 44, colorFilter: const ColorFilter.mode(Color(0xFF5856D7), BlendMode.srcIn)),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF161A1D)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              description,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
