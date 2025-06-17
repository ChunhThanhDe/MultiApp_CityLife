import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeliveryOptionTile extends StatelessWidget {
  final String svgIcon; // Thay vì IconData
  final String title;
  final String subtitle;
  final String price;
  final bool isSelected;
  final bool showArrow;
  final VoidCallback onTap;

  const DeliveryOptionTile({
    super.key,
    required this.svgIcon,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isSelected,
    required this.onTap,
    this.showArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFEFEFFB) : Colors.white,
          border: Border.all(
            color: isSelected ? Color(0xFFBEBDEF) : Color(0x11001012),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            // Svg icon
            SvgPicture.asset(
              svgIcon,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(Color(0xFF4A5763), BlendMode.srcIn),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF161A1D),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
                  ),
                ],
              ),
            ),
            if (price.isNotEmpty)
              Text(
                price,
                style: TextStyle(fontSize: 16, color: Color(0xFF161A1D)),
              ),
            if (showArrow)
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: Color(0xFF4A5763),
              ),
            if (isSelected)
              Icon(Icons.check_circle, color: Color(0xFF5856D7), size: 24),
          ],
        ),
      ),
    );
  }
}
