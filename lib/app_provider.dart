import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/domain/models/response/get_user_info_response.dart';

class AppProvider {
  static final AppProvider _instance = AppProvider._internal();

  factory AppProvider() {
    return _instance;
  }

  AppProvider._internal();

  final Rx<UserInfo> userInfo = UserInfo().obs;

  void updateUserInfo(UserInfo userInfo) {
    this.userInfo.value = userInfo;
    _saveUserInfoToStorage(userInfo);
  }

  Future<void> _saveUserInfoToStorage(UserInfo userInfo) async {
    try {
      await AppStorage.setString(SharedPreferencesKeys.userInfo, jsonEncode(userInfo.toJson()));
    } catch (e) {
      log('Error saving user info: $e', name: 'AppProvider');
    }
  }

  Future<void> loadUserInfoFromStorage() async {
    try {
      final String? userInfoJson = AppStorage.getString(SharedPreferencesKeys.userInfo);
      if (userInfoJson != null && userInfoJson.isNotEmpty) {
        final Map<String, dynamic> userInfoMap = jsonDecode(userInfoJson);
        final UserInfo userInfo = UserInfo.fromJson(userInfoMap);
        this.userInfo.value = userInfo;
      }
    } catch (e) {
      log('Error loading user info: $e', name: 'AppProvider');
      AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userInfo);
    }
  }

  void clearUserData() {
    userInfo.value = const UserInfo();
    AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userInfo);
    log('User data cleared from AppProvider', name: 'AppProvider');
  }
}
