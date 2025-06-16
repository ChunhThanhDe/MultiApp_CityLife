import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/theme.dart';

import '../../../shared/animated_step_indicator.dart';
import 'welcome_controller.dart';

class WelcomeScreen extends BaseScreen<WelcomeController> {
  const WelcomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: controller.pageController,
            itemCount: controller.welcomeModels.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.welcomeModels[index].image),
                    const SizedBox(height: 54),
                    Text(
                      controller.welcomeModels[index].title,
                      style: AppTextStyles.typographyH6SemiBold,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      controller.welcomeModels[index].description,
                      style: AppTextStyles.typographyH10Regular.copyWith(
                        color: AppColors.textGreyHigh700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        // Step Indicator
        GetBuilder<WelcomeController>(
          builder: (controller) => AnimatedStepIndicator(
            totalSteps: controller.welcomeModels.length,
            currentStep: controller.currentPageIndex,
            activeColor: AppColors.stateBrandDefault500,
            inactiveColor: AppColors.textGreyLow300,
            activeDotWidth: 32,
            dotWidth: 12,
            dotHeight: 4,
          ),
        ),
        const SizedBox(height: 32),
        // Next Button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AppButton(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            onTap: () {
              controller.nextPage();
            },
            child: GetBuilder<WelcomeController>(
              builder: (controller) => Text(
                controller.currentPageIndex == controller.welcomeModels.length - 1 ? 'Get Started' : 'Next',
                style: AppTextStyles.typographyH10Medium.copyWith(
                  color: AppColors.textBaseWhite,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
