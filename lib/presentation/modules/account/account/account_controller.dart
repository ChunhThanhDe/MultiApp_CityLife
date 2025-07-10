import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/request/update_appearance_request.dart';
import 'package:sixam_mart_user/domain/models/response/get_user_info_response.dart';
import 'package:sixam_mart_user/domain/repositories/setting_repository.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/services/user_service.dart';

class AccountController extends BaseController {
  final LanguageManager _languageManager = Get.find<LanguageManager>();
  final SettingRepository _settingRepository = Get.find<SettingRepository>();

  // User info getters - examples of how to use user information
  UserInfo get currentUserInfo => UserService.getCurrentUserInfo();

  String get userName => currentUserInfo.fName.isNotEmpty ? '${currentUserInfo.fName} ${currentUserInfo.lName}'.trim() : 'User';

  String get userEmail => currentUserInfo.email;

  String get userPhone => currentUserInfo.phone;

  int get loyaltyPoints => currentUserInfo.loyaltyPoint;

  int get walletBalance => currentUserInfo.walletBalance;

  bool get hasUserInfo => UserService.hasUserInfo();

  // Refresh user info from API
  Future<void> refreshUserInfo() async {
    await safeExecute(() async {
      final success = await UserService.fetchAndUpdateUserInfo();
      if (success) {
        update(); // Update UI
        showAppSnackBar(title: 'User info refreshed', type: SnackBarType.success);
      } else {
        showAppSnackBar(title: 'Failed to refresh user info', type: SnackBarType.error);
      }
    });
  }

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
          await showAppOverlayLoading(future: _changeTheme(themeType));
          Get.back();
          update();
        },
      ),
    );
  }

  Future<void> _changeTheme(ThemeTypes themeType) async {
    await safeExecute(() async {
      // Update local theme first
      SixMartTheme.modifyTheme(themeType);
      await AppStorage.setString(SharedPreferencesKeys.themeMode, themeType.name);

      // Update theme on server
      final String appearanceValue = themeType == ThemeTypes.dark ? 'dark' : 'light';
      final UpdateAppearanceRequest request = UpdateAppearanceRequest(appearance: appearanceValue);

      final ApiResult result = await _settingRepository.updateAppearance(request);

      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          // Success - theme updated on server
          showAppSnackBar(title: 'Theme updated successfully', type: SnackBarType.success);
        case Failure(:final error):
          // API failed but local theme is already changed, show warning
          showAppSnackBar(title: 'Theme changed locally. ${NetworkExceptions.getErrorMessage(error)}', type: SnackBarType.error);
      }
    });
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
