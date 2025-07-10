import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/services/auth_token_manager.dart';
import 'package:sixam_mart_user/services/user_service.dart';

/// Service class for handling authentication operations
class AuthService {
  static Future<void> logout() async {
    try {
      // Clear all user data and tokens
      await UserService.clearUserData();

      Get.offAllNamed(AppRoutes.signIn);
    } catch (e) {
      Get.snackbar('Error', 'Failed to logout. Please try again.');
    }
  }

  static bool isLoggedIn() {
    try {
      // Check token from AuthTokenManager
      final authTokenManager = Get.find<AuthTokenManager>();
      return authTokenManager.hasValidToken;
    } catch (e) {
      return false;
    }
  }
}
