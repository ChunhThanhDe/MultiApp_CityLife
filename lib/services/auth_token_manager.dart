import 'dart:developer';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';

/// Manages authentication tokens independently from UserAuthInfo
/// This ensures tokens are available immediately during app initialization
class AuthTokenManager extends GetxService {
  static const String _tokenKey = 'auth_token';
  static const String _refreshTokenKey = 'auth_refresh_token';

  String? _cachedToken;
  String? _cachedRefreshToken;

  /// Get current access token
  /// Returns cached token or loads from storage if not cached
  String get token {
    if (_cachedToken != null) {
      return _cachedToken!;
    }

    try {
      _cachedToken = AppStorage.getString(_tokenKey) ?? '';
      return _cachedToken!;
    } catch (e) {
      log('Error getting token: $e', name: 'AuthTokenManager');
      return '';
    }
  }

  /// Get current refresh token
  String get refreshToken {
    if (_cachedRefreshToken != null) {
      return _cachedRefreshToken!;
    }

    try {
      _cachedRefreshToken = AppStorage.getString(_refreshTokenKey) ?? '';
      return _cachedRefreshToken!;
    } catch (e) {
      log('Error getting refresh token: $e', name: 'AuthTokenManager');
      return '';
    }
  }

  /// Check if user has valid token
  bool get hasValidToken {
    return token.isNotEmpty;
  }

  /// Save access token to storage and cache
  Future<void> saveToken(String token) async {
    try {
      await AppStorage.setString(_tokenKey, token);
      _cachedToken = token;
      log('Token saved successfully', name: 'AuthTokenManager');
    } catch (e) {
      log('Error saving token: $e', name: 'AuthTokenManager');
      rethrow;
    }
  }

  /// Save refresh token to storage and cache
  Future<void> saveRefreshToken(String refreshToken) async {
    try {
      await AppStorage.setString(_refreshTokenKey, refreshToken);
      _cachedRefreshToken = refreshToken;
      log('Refresh token saved successfully', name: 'AuthTokenManager');
    } catch (e) {
      log('Error saving refresh token: $e', name: 'AuthTokenManager');
      rethrow;
    }
  }

  /// Save both tokens
  Future<void> saveTokens({required String token, required String refreshToken}) async {
    await Future.wait([saveToken(token), saveRefreshToken(refreshToken)]);
  }

  /// Clear all tokens from storage and cache
  Future<void> clearTokens() async {
    try {
      await Future.wait([AppStorage.removeSharedPrefrences(_tokenKey), AppStorage.removeSharedPrefrences(_refreshTokenKey)]);
      _cachedToken = null;
      _cachedRefreshToken = null;
      log('Tokens cleared successfully', name: 'AuthTokenManager');
    } catch (e) {
      log('Error clearing tokens: $e', name: 'AuthTokenManager');
      rethrow;
    }
  }

  /// Initialize token manager - load tokens into cache
  @override
  Future<void> onInit() async {
    super.onInit();
    await _loadTokensIntoCache();
  }

  /// Load tokens from storage into cache for immediate access
  Future<void> _loadTokensIntoCache() async {
    try {
      _cachedToken = AppStorage.getString(_tokenKey) ?? '';
      _cachedRefreshToken = AppStorage.getString(_refreshTokenKey) ?? '';
      log('Tokens loaded into cache - Token: ${_cachedToken?.isNotEmpty == true ? 'Present' : 'Empty'}', name: 'AuthTokenManager');
    } catch (e) {
      log('Error loading tokens into cache: $e', name: 'AuthTokenManager');
      _cachedToken = '';
      _cachedRefreshToken = '';
    }
  }

  /// Refresh cached tokens from storage
  Future<void> refreshCache() async {
    await _loadTokensIntoCache();
  }
}
