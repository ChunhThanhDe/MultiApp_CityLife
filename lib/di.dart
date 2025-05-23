import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';

class DependencyInjection {
  static Future<void> init() async {
    Get.put(LanguageManager());

    final appProvider = Get.put(AppProvider());

    await _loadStoredAuthInfo(appProvider);
  }

  static Future<void> _loadStoredAuthInfo(AppProvider appProvider) async {
    try {
      final String? userAuthInfoJson = AppStorage.getString(SharedPreferencesKeys.userAuthInfo);

      if (userAuthInfoJson != null && userAuthInfoJson.isNotEmpty) {
        final Map<String, dynamic> userAuthInfoMap = jsonDecode(userAuthInfoJson);
        final UserAuthInfo userAuthInfo = UserAuthInfo.fromJson(userAuthInfoMap);
        appProvider.updateUserAuthInfo(userAuthInfo);
      }
    } catch (e) {
      log('Error loading stored auth info: $e', name: 'DependencyInjection');
    }
  }
}
