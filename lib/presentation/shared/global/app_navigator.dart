import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/constants/api_const.dart';

/// A utility class that provides access to the global navigator key for the application.
///
/// This class serves as a centralized access point for navigation operations
/// throughout the app without requiring BuildContext. It retrieves the navigator key
/// from the Alice HTTP inspector instance, which is configured in the API constants.
///
/// This is particularly useful for:
/// - Showing dialogs, snackbars, or bottom sheets from non-widget classes
/// - Navigation operations from business logic or service layers
/// - Accessing the current route information
/// - Managing overlay entries
///
/// Example usage:
/// ```dart
/// // Navigate to a new route from anywhere in the app
/// AppNavigator.navigatorKey.currentState?.pushNamed('/new-route');
///
/// // Show a dialog without BuildContext
/// showDialog(
///   context: AppNavigator.navigatorKey.currentContext!,
///   builder: (_) => MyDialog(),
/// );
///
/// // Access current route name
/// final currentRoute = ModalRoute.of(AppNavigator.navigatorKey.currentContext!)?.settings.name;
/// ```
class AppNavigator {
  /// Gets the global navigator key from the Alice HTTP inspector instance.
  ///
  /// This navigator key is shared across the entire application and is used
  /// for navigation operations that need to be performed without a BuildContext.
  /// The key is managed by the Alice HTTP inspection tool which provides
  /// network debugging capabilities.
  ///
  /// Returns the [GlobalKey<NavigatorState>] that can be used for navigation
  /// operations throughout the application.
  ///
  /// Throws an exception if Alice is not properly configured or the navigator
  /// key is not available.
  static GlobalKey<NavigatorState> get navigatorKey => ApiConstant.alice.getNavigatorKey()!;
}
