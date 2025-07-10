import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/domain/repositories/service_repository.dart';
import 'package:sixam_mart_user/domain/repositories/setting_repository.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => AppStorage().sharedPreferences());
    Get.put(LanguageManager());
    Get.put(AppProvider());
    Get.put(AuthRepository());
    Get.put(ServiceRepository());
    Get.put(SettingRepository());
    Get.put(UserRepository());
  }
}
