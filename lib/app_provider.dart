import 'dart:convert';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';
import 'package:sixam_mart_user/domain/models/response/get_user_info_response.dart';

class AppProvider {
  static final AppProvider _instance = AppProvider._internal();

  factory AppProvider() {
    return _instance;
  }

  AppProvider._internal();

  final Rx<UserAuthInfo> userAuthInfo = UserAuthInfo().obs;
  final Rx<UserInfo> userInfo = UserInfo().obs;

  void updateUserAuthInfo(UserAuthInfo userAuthInfo) {
    this.userAuthInfo.value = userAuthInfo;
  }

  void updateUserInfo(UserInfo userInfo) {
    this.userInfo.value = userInfo;
    _saveUserInfoToStorage(userInfo);
  }

  Future<void> _saveUserInfoToStorage(UserInfo userInfo) async {
    try {
      await AppStorage.setString(SharedPreferencesKeys.userInfo, jsonEncode(userInfo.toJson()));
    } catch (e) {
      // Handle error silently or log it
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
      // Handle error silently or clear corrupted data
      AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userInfo);
    }
  }

  void clearUserData() {
    userAuthInfo.value = const UserAuthInfo();
    userInfo.value = const UserInfo();
    AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userAuthInfo);
    AppStorage.removeSharedPrefrences(SharedPreferencesKeys.userInfo);
  }
}
