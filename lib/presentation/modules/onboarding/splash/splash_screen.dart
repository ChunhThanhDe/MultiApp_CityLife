import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/onboarding/splash/splash_controller.dart';

class SplashScreen extends BaseScreen<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),

          // Loading indicator
          const CircularProgressIndicator(),

          const SizedBox(height: 16),

          Text(tr(LocaleKeys.onboarding_preparingExperience), style: AppTextStyles.typographyH11Regular),
        ],
      ),
    );
  }
}
