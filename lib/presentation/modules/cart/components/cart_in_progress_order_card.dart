import 'package:flutter/material.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/cart_order_progress_stepper.dart';

class InProgressOrderCard extends StatelessWidget {
  final String label;
  final String time;
  final ImageProvider brandLogo;
  final String brandName;
  final String subtitle;
  final String price;
  final int progressStep;
  final int totalStep;
  final VoidCallback? onTap;

  const InProgressOrderCard({
    super.key,
    required this.label,
    required this.time,
    required this.brandLogo,
    required this.brandName,
    required this.subtitle,
    required this.price,
    required this.progressStep,
    required this.totalStep,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Label bar
        Container(
          color: Color(0xFF5856D7),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Text(time, style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
        ),
        // Order cell
        GestureDetector(
          onTap: onTap,
          child: Padding(
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
          ),
        ),
        // Progress stepper
        OrderProgressStepper(currentStep: progressStep, totalSteps: totalStep),
      ],
    );
  }
}
