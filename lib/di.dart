import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app_provider.dart';

class DependencyInjection {
  static Future<void> init() async {
    Get.put(LanguageManager());
    Get.put(AppProvider());
  }
}
