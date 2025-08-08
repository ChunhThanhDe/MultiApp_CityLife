import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class AnimatedStepIndicator extends StatelessWidget {

  const AnimatedStepIndicator({
    required this.totalSteps, required this.currentStep, super.key,
    this.dotWidth = 8.0,
    this.dotHeight = 8.0,
    this.activeDotWidth = 24.0,
    this.spacing = 8.0,
    this.activeColor,
    this.inactiveColor,
    this.animationDuration = const Duration(milliseconds: 300),
  });
  final int totalSteps;
  final int currentStep;
  final double dotWidth;
  final double dotHeight;
  final double activeDotWidth;
  final double spacing;
  final Color? activeColor;
  final Color? inactiveColor;
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    final Color effectiveActiveColor = activeColor ?? AppColors.stateBrandDefault500;
    final Color effectiveInactiveColor = inactiveColor ?? AppColors.stateGreyLowest50;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalSteps,
        (index) => AnimatedContainer(
          duration: animationDuration,
          curve: Curves.easeInOut,
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          width: index == currentStep ? activeDotWidth : dotWidth,
          height: dotHeight,
          decoration: BoxDecoration(color: index == currentStep ? effectiveActiveColor : effectiveInactiveColor, borderRadius: BorderRadius.circular(dotHeight / 2)),
        ),
      ),
    );
  }
}
