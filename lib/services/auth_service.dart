import 'package:get/get.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/services/user_service.dart';

/// Service class for handling authentication operations
class AuthService {
  static Future<void> logout() async {
    try {
      await UserService.clearUserData();
      Get.offAllNamed(AppRoutes.signIn);
    } catch (e) {
      Get.snackbar('Error', 'Failed to logout. Please try again.');
    }
  }

  static bool isLoggedIn() {
    try {
      final userAuthInfo = Get.find<AppProvider>().userAuthInfo.value;
      return userAuthInfo.token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
