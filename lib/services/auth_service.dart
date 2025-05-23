import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

/// Service class for handling authentication operations
///
/// Provides static methods for common authentication tasks:
/// - Logout functionality with complete session cleanup
/// - Authentication status checking
/// - Current user information retrieval
class AuthService {
  /// Logs out the current user by clearing all stored authentication data
  /// and redirecting to the sign-in screen
  static Future<void> logout() async {
    try {
      // Clear the stored user auth info
      await AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userAuthInfo);

      // Reset the user auth info in AppProvider
      Get.find<AppProvider>().updateUserAuthInfo(const UserAuthInfo());

      // Navigate to sign in screen and clear all previous routes
      Get.offAllNamed(AppRoutes.signIn);
    } catch (e) {
      // Handle logout error
      Get.snackbar('Error', 'Failed to logout. Please try again.');
    }
  }

  /// Checks if the user is currently logged in
  ///
  /// Returns true if user has a valid authentication token, false otherwise
  static bool isLoggedIn() {
    try {
      final userAuthInfo = Get.find<AppProvider>().userAuthInfo.value;
      return userAuthInfo.token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  /// Returns the current user's authentication information
  ///
  /// Returns UserAuthInfo if user is logged in, null otherwise
  static UserAuthInfo? getCurrentUser() {
    try {
      final userAuthInfo = Get.find<AppProvider>().userAuthInfo.value;
      return userAuthInfo.token.isNotEmpty ? userAuthInfo : null;
    } catch (e) {
      return null;
    }
  }
}
