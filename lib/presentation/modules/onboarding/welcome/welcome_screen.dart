import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/onboarding/welcome/welcome_controller.dart';
import 'package:sixam_mart_user/presentation/shared/animation/animated_step_indicator.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

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
                    Flexible(child: AppImage.asset(controller.welcomeModels[index].image, fit: BoxFit.contain)),
                    const SizedBox(height: 54),
                    AutoSizeText(controller.welcomeModels[index].title, style: AppTextStyles.typographyH6SemiBold, textAlign: TextAlign.center, maxLines: 1),
                    AutoSizeText(
                      controller.welcomeModels[index].description,
                      style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHigh700),
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
                controller.currentPageIndex == controller.welcomeModels.length - 1 ? tr(LocaleKeys.onboarding_getStarted) : tr(LocaleKeys.onboarding_next),
                style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBaseWhite),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AppButton(
            onTap: controller.skip,
            width: double.infinity,
            color: AppColors.stateGreyLowest50,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(tr(LocaleKeys.onboarding_skip), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
