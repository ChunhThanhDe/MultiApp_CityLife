import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/services/auth_service.dart';

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
    final isLoggedIn = AuthService.isLoggedIn();
    return isLoggedIn;
  }

  /// Determines if a route is PUBLIC (doesn't require authentication)
  bool _isPublicRoute(String? route) {
    const publicRoutes = [AppRoutes.signIn, AppRoutes.signUp, AppRoutes.verification, AppRoutes.welcome];

    return publicRoutes.contains(route);
  }

  /// Determines if a route is an authentication route (login/signup)
  bool _isAuthRoute(String? route) {
    const authRoutes = [AppRoutes.signIn, AppRoutes.signUp, AppRoutes.verification];

    return authRoutes.contains(route);
  }
}
