import 'package:flutter/material.dart';

class OrderProgressStepper extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const OrderProgressStepper({super.key, required this.currentStep, required this.totalSteps});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        children: List.generate(totalSteps, (index) {
          final isActive = index + 1 == currentStep;
          return Row(
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: isActive ? Color(0xFF5856D7) : Colors.white,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: isActive ? Colors.white : Color(0xFF798A9A), fontWeight: FontWeight.w500),
                ),
                // border handled via BoxDecoration in Container if you want a colored outline
              ),
              if (index != totalSteps - 1) Container(width: 70, height: 3, color: isActive ? Color(0xFF5856D7) : Color(0xFFE8EBEE)),
            ],
          );
        }),
      ),
    );
  }
}
