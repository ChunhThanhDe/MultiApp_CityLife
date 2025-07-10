import 'dart:developer';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/services/auth_token_manager.dart';
import 'package:sixam_mart_user/services/user_service.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    super.onInit();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      isLoading.value = true;

      // Load user info from storage if tokens exist
      await _loadUserDataIfAuthenticated();

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
      // Check authentication status from AuthTokenManager
      final authTokenManager = Get.find<AuthTokenManager>();
      return authTokenManager.hasValidToken;
    } catch (e) {
      log('Error checking authentication: $e', name: 'SplashController');
      return false;
    }
  }

  Future<void> _loadUserDataIfAuthenticated() async {
    try {
      // Only load user data if user is authenticated
      if (_isUserAuthenticated()) {
        // Load user info from storage
        await UserService.loadUserInfoFromStorage();

        // Try to fetch fresh user info from API
        await UserService.fetchAndUpdateUserInfo();

        log('Successfully loaded user data for authenticated user', name: 'SplashController');
      } else {
        log('User not authenticated, skipping user data loading', name: 'SplashController');
      }
    } catch (e) {
      log('Error loading user data: $e', name: 'SplashController');
    }
  }
}
