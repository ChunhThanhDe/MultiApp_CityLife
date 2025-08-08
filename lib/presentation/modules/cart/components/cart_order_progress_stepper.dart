import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

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
            return Expanded(child: Container(height: 4, color: index ~/ 2 < currentStep - 1 ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.stateGreyLowestHover100));
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
        color: isActive ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.backgroundSurfacePrimaryWhite,
        border: Border.all(color: isActive ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.textGreyDefault500, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        number.toString(),
        style: TextStyle(color: isActive ? AppTheme.theme.textBaseWhite : AppTheme.theme.textGreyDefault500, fontWeight: FontWeight.w500),
      ),
    );
  }
}
