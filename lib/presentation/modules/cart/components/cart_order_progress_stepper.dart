import 'package:flutter/material.dart';

class OrderProgressStepper extends StatelessWidget {
  const OrderProgressStepper({required this.currentStep, required this.totalSteps, super.key});
  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        children: List.generate(totalSteps * 2 - 1, (index) {
          if (index.isEven) {
            final int step = (index ~/ 2) + 1;
            return _StepCircle(number: step, isActive: step <= currentStep);
          } else {
            // divider between steps
            return Expanded(child: Container(height: 4, color: index ~/ 2 < currentStep - 1 ? const Color(0xFF5856D7) : const Color(0xFFE8EBEE)));
          }
        }),
      ),
    );
  }
}

class _StepCircle extends StatelessWidget {
  const _StepCircle({required this.number, required this.isActive});
  final int number;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF5856D7) : Colors.white,
        border: Border.all(color: isActive ? const Color(0xFF5856D7) : const Color(0xFF798A9A), width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        number.toString(),
        style: TextStyle(color: isActive ? Colors.white : const Color(0xFF798A9A), fontWeight: FontWeight.w500),
      ),
    );
  }
}
