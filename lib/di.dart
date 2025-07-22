import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/services/auth_token_manager.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => AppStorage().sharedPreferences());

    Get.put(LanguageManager());

    await Get.putAsync(() async {
      final tokenManager = AuthTokenManager();
      await tokenManager.onInit();
      return tokenManager;
    });

    Get.put(AppProvider());
  }
}
