import 'package:flutter/material.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/cart_order_progress_stepper.dart';

class InProgressOrderCard extends StatelessWidget {

  const InProgressOrderCard({
    required this.label, required this.time, required this.brandLogo, required this.brandName, required this.subtitle, required this.price, required this.progressStep, required this.totalStep, super.key,
    this.onTap,
  });
  final String label;
  final String time;
  final ImageProvider brandLogo;
  final String brandName;
  final String subtitle;
  final String price;
  final int progressStep;
  final int totalStep;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Label bar
        Container(
          color: const Color(0xFF5856D7),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Text(time, style: const TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
        ),
        // Order cell
        GestureDetector(
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
        ),
        // Progress stepper
        OrderProgressStepper(currentStep: progressStep, totalSteps: totalStep),
      ],
    );
  }
}
