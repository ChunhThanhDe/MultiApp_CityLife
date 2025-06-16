import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    super.onInit();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      isLoading.value = true;

      await _loadStoredAuthInfo();

      await Future.delayed(const Duration(milliseconds: 1500));

      final initialRoute = _getInitialRoute();
      await Get.offAllNamed(initialRoute);
    } catch (e) {
      log('Error during app initialization: $e', name: 'SplashController');
      await Get.offAllNamed(AppRoutes.signIn);
    } finally {
      isLoading.value = false;
    }
  }

  String _getInitialRoute() {
    try {
      final hasSeenWelcome = AppStorage.getBool(SharedPreferencesKeys.hasSeenWelcome) ?? false;
      if (!hasSeenWelcome) {
        return AppRoutes.welcome;
      }

      if (_isUserAuthenticated()) {
        return AppRoutes.root;
      }

      return AppRoutes.signIn;
    } catch (e) {
      log('Error determining initial route: $e', name: 'SplashController');
      return AppRoutes.signIn;
    }
  }

  bool _isUserAuthenticated() {
    try {
      final userAuthInfoJson = AppStorage.getString(SharedPreferencesKeys.userAuthInfo);

      if (userAuthInfoJson == null || userAuthInfoJson.isEmpty) {
        return false;
      }

      final Map<String, dynamic> userAuthInfoMap = jsonDecode(userAuthInfoJson);
      return userAuthInfoMap.isNotEmpty;
    } catch (e) {
      log('Error checking authentication: $e', name: 'SplashController');
      AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userAuthInfo);
      return false;
    }
  }

  Future<void> _loadStoredAuthInfo() async {
    try {
      final String? userAuthInfoJson = AppStorage.getString(SharedPreferencesKeys.userAuthInfo);

      if (userAuthInfoJson == null || userAuthInfoJson.isEmpty) {
        log('No stored auth info found', name: 'SplashController');
        return;
      }

      final Map<String, dynamic> userAuthInfoMap = jsonDecode(userAuthInfoJson);
      final UserAuthInfo userAuthInfo = UserAuthInfo.fromJson(userAuthInfoMap);

      // Update app provider with auth info
      Get.find<AppProvider>().updateUserAuthInfo(userAuthInfo);

      log('Successfully loaded stored auth info', name: 'SplashController');
    } catch (e) {
      log('Error loading stored auth info: $e', name: 'SplashController');
      // Clear corrupted data
      AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userAuthInfo);
    }
  }
}
