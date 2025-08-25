import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

class WelcomeModel {
  WelcomeModel({required this.title, required this.description, required this.image});
  final String title;
  final String description;
  final String image;
}

class WelcomeController extends BaseController {
  final PageController pageController = PageController();
  int currentPageIndex = 0;

  final List<WelcomeModel> welcomeModels = [
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step1_title), description: tr(LocaleKeys.onboarding_welcome_step1_description), image: Assets.images.imgWelcome1.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step2_title), description: tr(LocaleKeys.onboarding_welcome_step2_description), image: Assets.images.imgWelcome2.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step3_title), description: tr(LocaleKeys.onboarding_welcome_step3_description), image: Assets.images.imgWelcome3.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step4_title), description: tr(LocaleKeys.onboarding_welcome_step4_description), image: Assets.images.imgWelcome4.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step5_title), description: tr(LocaleKeys.onboarding_welcome_step5_description), image: Assets.images.imgWelcome5.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step6_title), description: tr(LocaleKeys.onboarding_welcome_step6_description), image: Assets.images.imgWelcome6.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step7_title), description: tr(LocaleKeys.onboarding_welcome_step7_description), image: Assets.images.imgWelcome7.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step8_title), description: tr(LocaleKeys.onboarding_welcome_step8_description), image: Assets.images.imgWelcome8.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step9_title), description: tr(LocaleKeys.onboarding_welcome_step9_description), image: Assets.images.imgWelcome9.path),
    WelcomeModel(title: tr(LocaleKeys.onboarding_welcome_step10_title), description: tr(LocaleKeys.onboarding_welcome_step10_description), image: Assets.images.imgWelcome10.path),
  ];

  void nextPage() {
    if (currentPageIndex < welcomeModels.length - 1) {
      currentPageIndex++;
      update();
      pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      skip();
    }
  }

  void skip() {
    AppStorage.setBool(SharedPreferencesKeys.hasSeenWelcome, true);
    Get.offAllNamed(AppRoutes.signIn);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
