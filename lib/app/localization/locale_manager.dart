import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';

class LanguageOption {

  LanguageOption({required this.locale, required this.displayName});
  final Locale locale;
  final String displayName;
}

class LanguageManager extends GetxController {
  List<LanguageOption> getLanguageOptions() {
    return [LanguageOption(locale: const Locale('en'), displayName: 'English'), LanguageOption(locale: const Locale('vi'), displayName: 'Tiếng Việt')];
  }

  Locale getSelectedLanguage() {
    final String localeCode = AppStorage.getString(SharedPreferencesKeys.localeCode) ?? Get.deviceLocale!.languageCode;
    return Locale(localeCode);
  }

  Future<void> changeLanguage({required Locale locale}) async {
    await Get.context!.setLocale(locale);
    Get.context!.setLocale(locale);
    Get.updateLocale(locale);
    await AppStorage.setString(SharedPreferencesKeys.localeCode, locale.languageCode);
  }
}
