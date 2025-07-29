import 'dart:developer';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/domain/models/request/update_profile_request.dart';
import 'package:sixam_mart_user/domain/models/response/get_user_info_response.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';
import 'package:sixam_mart_user/services/auth_token_manager.dart';

/// Service class for handling user-related operations
class UserService {
  static final UserRepository _userRepository = Get.find<UserRepository>();
  static final AppProvider _appProvider = Get.find<AppProvider>();

  /// Fetch user information from API and update AppProvider
  static Future<bool> fetchAndUpdateUserInfo() async {
    try {
      log('Fetching user info from API', name: 'UserService');

      final ApiResult result = await _userRepository.getUserInfo();

      switch (result) {
        case Success(:final response):
          if (response.statusCode == 200 && response.data != null) {
            final UserInfo userInfo = UserInfo.fromJson(response.data);
            _appProvider.updateUserInfo(userInfo);

            log('Successfully fetched and updated user info', name: 'UserService');
            return true;
          } else {
            log('Failed to fetch user info: Invalid response', name: 'UserService');
            return false;
          }
        case Failure(:final error):
          log('Failed to fetch user info: $error', name: 'UserService');
          return false;
      }
    } catch (e) {
      log('Error fetching user info: $e', name: 'UserService');
      return false;
    }
  }

  /// Get current user info from AppProvider
  static UserInfo getCurrentUserInfo() {
    return _appProvider.userInfo.value;
  }

  /// Check if user info is available
  static bool hasUserInfo() {
    final userInfo = _appProvider.userInfo.value;
    return userInfo.id > 0;
  }

  /// Load user info from storage
  static Future<void> loadUserInfoFromStorage() async {
    await _appProvider.loadUserInfoFromStorage();
  }

  /// Update user profile
  static Future<bool> updateProfile(UpdateProfileRequest request, {String? imagePath}) async {
    try {
      log('Updating user profile', name: 'UserService');

      final ApiResult result = await _userRepository.updateProfile(request, imagePath: imagePath);

      switch (result) {
        case Success(:final response):
          if (response.statusCode == 200) {
            log('Successfully updated user profile', name: 'UserService');
            // Refresh user info after successful update
            await fetchAndUpdateUserInfo();
            return true;
          } else {
            log('Failed to update user profile: Invalid response', name: 'UserService');
            return false;
          }
        case Failure(:final error):
          log('Failed to update user profile: $error', name: 'UserService');
          return false;
      }
    } catch (e) {
      log('Error updating user profile: $e', name: 'UserService');
      return false;
    }
  }

  /// Clear all user data and tokens
  static Future<void> clearUserData() async {
    // Clear tokens from AuthTokenManager
    try {
      await Get.find<AuthTokenManager>().clearTokens();
    } catch (e) {
      log('Error clearing tokens: $e', name: 'UserService');
    }

    // Clear user data from AppProvider
    _appProvider.clearUserData();

    log('All user data and tokens cleared', name: 'UserService');
  }
}
