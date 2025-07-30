import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeliveryOptionTile extends StatelessWidget {

  const DeliveryOptionTile({required this.svgIcon, required this.title, required this.subtitle, required this.price, required this.isSelected, required this.onTap, super.key, this.showArrow = false});
  final String svgIcon; // Thay vì IconData
  final String title;
  final String subtitle;
  final String price;
  final bool isSelected;
  final bool showArrow;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFEFEFFB) : Colors.white,
          border: Border.all(color: isSelected ? const Color(0xFFBEBDEF) : const Color(0x11001012)),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            // Svg icon
            SvgPicture.asset(svgIcon, width: 24, height: 24, colorFilter: const ColorFilter.mode(Color(0xFF4A5763), BlendMode.srcIn)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                  ),
                  Text(subtitle, style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                ],
              ),
            ),
            if (price.isNotEmpty) Text(price, style: const TextStyle(fontSize: 16, color: Color(0xFF161A1D))),
            if (showArrow) const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
            if (isSelected) const Icon(Icons.check_circle, color: Color(0xFF5856D7), size: 24),
          ],
        ),
      ),
    );
  }
}
