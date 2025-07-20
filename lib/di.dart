import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app/localization/locale_manager.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/domain/repositories/cart_repository.dart';
import 'package:sixam_mart_user/domain/repositories/service_repository.dart';
import 'package:sixam_mart_user/domain/repositories/setting_repository.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';
import 'package:sixam_mart_user/services/auth_token_manager.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class DependencyInjection {
  static Future<void> init() async {
    // Initialize SharedPreferences first
    await Get.putAsync(() => AppStorage().sharedPreferences());

    // Initialize core services
    Get.put(LanguageManager());

    // Initialize AuthTokenManager to ensure tokens are available immediately
    await Get.putAsync(() async {
      final tokenManager = AuthTokenManager();
      await tokenManager.onInit();
      return tokenManager;
    });

    // Initialize other services
    Get.put(AppProvider());
    Get.put(AuthRepository());
    Get.put(ServiceRepository());
    Get.put(SettingRepository());
    Get.put(UserRepository());

    // Initialize CartService with permanent persistence
    Get.put(CartRepository());
    Get.put(CartService(Get.find()), permanent: true);
  }
}
