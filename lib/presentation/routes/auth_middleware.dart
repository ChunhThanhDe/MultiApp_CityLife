import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

/// Authentication middleware that handles route protection and automatic redirects.
class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    final bool isAuthenticated = _checkAuthentication();

    if (isAuthenticated && _isAuthRoute(route)) {
      return const RouteSettings(name: AppRoutes.root);
    }

    if (!isAuthenticated && !_isPublicRoute(route)) {
      return const RouteSettings(name: AppRoutes.signIn);
    }

    return null;
  }

  /// Checks if the user is currently authenticated by examining stored token
  bool _checkAuthentication() {
    try {
      final String? userAuthInfoJson = AppStorage.getString(SharedPreferencesKeys.userAuthInfo);

      if (userAuthInfoJson == null || userAuthInfoJson.isEmpty) {
        return false;
      }

      final Map<String, dynamic> userAuthInfoMap = jsonDecode(userAuthInfoJson);
      final UserAuthInfo userAuthInfo = UserAuthInfo.fromJson(userAuthInfoMap);

      Get.find<AppProvider>().updateUserAuthInfo(userAuthInfo);

      return userAuthInfo.token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  /// Determines if a route is PUBLIC (doesn't require authentication)
  bool _isPublicRoute(String? route) {
    const publicRoutes = [
      AppRoutes.signIn,
      AppRoutes.signUp,
      AppRoutes.verification,
    ];

    return publicRoutes.contains(route);
  }

  /// Determines if a route is an authentication route (login/signup)
  bool _isAuthRoute(String? route) {
    const authRoutes = [
      AppRoutes.signIn,
      AppRoutes.signUp,
      AppRoutes.verification,
    ];

    return authRoutes.contains(route);
  }
}
