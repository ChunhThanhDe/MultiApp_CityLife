import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bottom_sheet.dart';

class AccountController extends BaseController {
  final LanguageManager _languageManager = Get.find<LanguageManager>();

  String get currentLanguageDisplayName {
    final currentLocale = _languageManager.getSelectedLanguage();
    final options = _languageManager.getLanguageOptions();
    return options.firstWhere((option) => option.locale.languageCode == currentLocale.languageCode).displayName;
  }

  void showLanguageSelection() {
    showAppBottomSheet(
      child: _LanguageSelectionBottomSheet(
        onLanguageSelected: (locale) {
          _languageManager.changeLanguage(locale: locale);
          Get.back();
          update(); // Update UI to reflect new language
        },
      ),
    );
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
