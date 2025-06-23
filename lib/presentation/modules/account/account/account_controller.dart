import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';

class AccountController extends BaseController {
  final LanguageManager _languageManager = Get.find<LanguageManager>();

  String get currentLanguageDisplayName {
    final currentLocale = _languageManager.getSelectedLanguage();
    final options = _languageManager.getLanguageOptions();
    return options.firstWhere((option) => option.locale.languageCode == currentLocale.languageCode).displayName;
  }

  String get currentThemeDisplayName {
    return SixMartTheme.themetypes == ThemeTypes.light ? 'Light' : 'Dark';
  }

  void showLanguageSelection() {
    showAppBottomSheet(
      child: _LanguageSelectionBottomSheet(
        onLanguageSelected: (locale) async {
          await showAppOverlayLoading(future: _languageManager.changeLanguage(locale: locale));
          Get.back();
          update();
        },
      ),
    );
  }

  void showThemeSelection() {
    showAppBottomSheet(
      child: _ThemeSelectionBottomSheet(
        onThemeSelected: (themeType) async {
          await _changeTheme(themeType);
          Get.back();
          update();
        },
      ),
    );
  }

  Future<void> _changeTheme(ThemeTypes themeType) async {
    SixMartTheme.modifyTheme(themeType);
    await AppStorage.setString(SharedPreferencesKeys.themeMode, themeType.name);
  }
}

class _LanguageSelectionBottomSheet extends StatelessWidget {
  final Function(Locale) onLanguageSelected;

  const _LanguageSelectionBottomSheet({required this.onLanguageSelected});

  @override
  Widget build(BuildContext context) {
    final languageManager = Get.find<LanguageManager>();
    final currentLocale = languageManager.getSelectedLanguage();
    final languageOptions = languageManager.getLanguageOptions();

    // Get localized title based on current locale
    final title = currentLocale.languageCode == 'vi' ? 'Chọn ngôn ngữ' : 'Select Language';

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
          ),
          SizedBox(height: 16),
          ...languageOptions.map((option) {
            final isSelected = option.locale.languageCode == currentLocale.languageCode;
            return InkWell(
              onTap: () => onLanguageSelected(option.locale),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        option.displayName,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                      ),
                    ),
                    if (isSelected) Icon(Icons.check, color: Color(0xFF007AFF), size: 20),
                  ],
                ),
              ),
            );
          }),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _ThemeSelectionBottomSheet extends StatelessWidget {
  final Function(ThemeTypes) onThemeSelected;

  const _ThemeSelectionBottomSheet({required this.onThemeSelected});

  @override
  Widget build(BuildContext context) {
    final currentTheme = SixMartTheme.themetypes;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Select Theme',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
          ),
          SizedBox(height: 16),
          ...ThemeTypes.values.map((themeType) {
            final isSelected = themeType == currentTheme;
            final displayName = themeType == ThemeTypes.light ? 'Light' : 'Dark';

            return InkWell(
              onTap: () => onThemeSelected(themeType),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        displayName,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                      ),
                    ),
                    if (isSelected) Icon(Icons.check, color: Color(0xFF007AFF), size: 20),
                  ],
                ),
              ),
            );
          }),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
