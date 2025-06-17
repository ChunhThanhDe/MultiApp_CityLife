import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import 'app_navigator.dart';

/// Displays a modal bottom sheet with smooth animations and swipe-to-dismiss functionality.
///
/// This function creates and displays a bottom sheet using the [smooth_sheets] package
/// for enhanced user experience with smooth animations and gestures. The bottom sheet
/// can be dismissed by swiping down or tapping outside the content area.
///
/// Features:
/// - Smooth slide-up animation
/// - Swipe-to-dismiss with customizable sensitivity
/// - Automatic focus management
/// - Callback support for close events
/// - Customizable dismissal behavior
///
/// Example usage:
/// ```dart
/// showAppBottomSheet<String>(
///   child: Container(
///     padding: EdgeInsets.all(16),
///     child: Text('Bottom Sheet Content'),
///   ),
///   onClosed: (result) => print('Bottom sheet closed with: $result'),
/// );
/// ```
///
/// [T] The type of data that can be returned when the bottom sheet is dismissed.
/// [child] The widget to display inside the bottom sheet.
/// [onClosed] Optional callback function called when the bottom sheet is closed.
/// [isDismissible] Whether the bottom sheet can be dismissed by user interaction.
///
/// Returns a [Future] that completes with the result when the bottom sheet is dismissed.
Future<T?> showAppBottomSheet<T>({required Widget child, Function(dynamic)? onClosed, bool isDismissible = true}) async {
  // FocusScope.of(AppNavigator.navigatorKey.currentContext!).unfocus();

  final modalRoute = ModalSheetRoute<T>(
    swipeDismissible: true,
    swipeDismissSensitivity: const SwipeDismissSensitivity(minFlingVelocityRatio: 1, minDragDistance: 200),
    builder: (context) => AppBottomSheet(onClosed: onClosed, child: child),
  );

  return Navigator.push<T>(AppNavigator.navigatorKey.currentContext!, modalRoute).then((value) {
    // FocusScope.of(AppNavigator.navigatorKey.currentContext!).unfocus();
    return value;
  });
}

/// A customizable bottom sheet widget with rounded corners and drag handle.
///
/// This widget provides a consistent bottom sheet design with:
/// - Rounded top corners for modern appearance
/// - Drag handle indicator at the top
/// - White background with proper clipping
/// - Automatic height adjustment based on content
/// - Pop scope handling for navigation
///
/// The bottom sheet automatically adjusts its height to fit the content
/// and includes proper accessibility semantics and focus management.
///
/// Example usage:
/// ```dart
/// AppBottomSheet(
///   child: Column(
///     children: [
///       ListTile(title: Text('Option 1')),
///       ListTile(title: Text('Option 2')),
///     ],
///   ),
///   onClosed: (result) => print('Closed with: $result'),
/// )
/// ```
class AppBottomSheet extends StatelessWidget {
  /// The main content widget to display inside the bottom sheet.
  final Widget child;

  /// Optional callback function called when the bottom sheet is closed.
  /// Receives the result data if any was provided during dismissal.
  final Function(dynamic)? onClosed;

  /// Whether the bottom sheet can be dismissed by user interaction.
  /// When false, prevents back gesture and system back button dismissal.
  final bool isDismissible;

  /// Creates an [AppBottomSheet] with the specified content and behavior.
  ///
  /// The [child] parameter is required and represents the main content.
  /// The [onClosed] callback is optional and will be called when dismissed.
  /// The [isDismissible] parameter defaults to true.
  const AppBottomSheet({super.key, required this.child, this.onClosed, this.isDismissible = true});

  @override
  Widget build(BuildContext context) {
    return Sheet(
      decoration: MaterialSheetDecoration(size: SheetSize.fit, borderRadius: BorderRadius.circular(20), clipBehavior: Clip.antiAlias),
      child: PopScope(
        canPop: isDismissible,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            FocusScope.of(AppNavigator.navigatorKey.currentContext!).unfocus();
            onClosed?.call(result);
          }
        },
        child: IntrinsicHeight(
          child: ColoredBox(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 12),
                    width: 48,
                    height: 4,
                    decoration: ShapeDecoration(
                      color: AppColors.stateGreyLowestHover100,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)),
                    ),
                  ),
                ),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
