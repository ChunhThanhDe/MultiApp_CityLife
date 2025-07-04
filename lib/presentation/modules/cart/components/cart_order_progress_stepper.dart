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
        children: List.generate(totalSteps * 2 - 1, (index) {
          if (index.isEven) {
            int step = (index ~/ 2) + 1;
            return _StepCircle(number: step, isActive: step <= currentStep);
          } else {
            // divider between steps
            return Expanded(child: Container(height: 4, color: index ~/ 2 < currentStep - 1 ? Color(0xFF5856D7) : Color(0xFFE8EBEE)));
          }
        }),
      ),
    );
  }
}

class _StepCircle extends StatelessWidget {
  final int number;
  final bool isActive;
  const _StepCircle({required this.number, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF5856D7) : Colors.white,
        border: Border.all(color: isActive ? Color(0xFF5856D7) : Color(0xFF798A9A), width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        number.toString(),
        style: TextStyle(color: isActive ? Colors.white : Color(0xFF798A9A), fontWeight: FontWeight.w500),
      ),
    );
  }
}
