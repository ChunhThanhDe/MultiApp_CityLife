import 'package:flutter/material.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/cart_order_progress_stepper.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

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
          color: AppTheme.theme.stateBrandDefault500,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(color: AppTheme.theme.textBaseWhite, fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Text(time, style: TextStyle(color: AppTheme.theme.textBaseWhite, fontSize: 14)),
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
        ),
        // Progress stepper
        OrderProgressStepper(currentStep: progressStep, totalSteps: totalStep),
      ],
    );
  }
}
