import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app_provider.dart';

class DependencyInjection {
  static Future<void> init() async {
    Get.put(LanguageManager());

    await Get.putAsync(() => AppStorage().sharedPreferences());

    Get.put(AppProvider());
  }
}
