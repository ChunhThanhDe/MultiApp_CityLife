import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_navigator.dart';

/// Displays a loading overlay while executing an asynchronous operation.
///
/// This function creates a full-screen overlay with a loading indicator
/// while an API call or other async operation is in progress. The overlay
/// prevents user interaction and provides visual feedback that work is being done.
///
/// Features:
/// - Full-screen transparent overlay to block user interaction
/// - Customizable loading widget (defaults to activity indicator)
/// - Minimum display duration to prevent flickering
/// - Automatic cleanup when operation completes
/// - Optional loading state management
///
/// The overlay ensures a minimum display time of 300ms if the API call
/// completes in less than 200ms to prevent flickering effects.
///
/// Example usage:
/// ```dart
/// final result = await showLoadingOverlay(
///   api: apiService.fetchData(),
///   child: Text('Loading...'), // Optional custom loading widget
///   isShowLoading: true,
/// );
/// ```
///
/// [future] The Future to execute while showing the loading overlay.
/// [child] Optional custom loading widget.
/// [isShowLoading] Whether to show the loading overlay. Defaults to true.
///
/// Returns the result of the [future] Future when it completes.
Future<dynamic> showAppOverlayLoading({required Future<dynamic> future, Widget? child, bool isShowLoading = true}) {
  return AppLoadingOverlay.show(future: future, child: child, isShowLoading: isShowLoading);
}

/// Private class that manages the loading overlay display and lifecycle.
///
/// This class handles the creation, display, and removal of loading overlays
/// with proper timing controls to ensure smooth user experience.
/// It uses the Flutter Overlay system to display the loading indicator
/// above all other content.
class AppLoadingOverlay {
  /// The current overlay entry being displayed, if any.
  static OverlayEntry? overlayEntry;

  /// Shows a loading overlay while executing the provided API call.
  ///
  /// This method manages the complete lifecycle of the loading overlay:
  /// 1. Creates and displays the overlay (if enabled)
  /// 2. Executes the provided API call
  /// 3. Enforces minimum display duration to prevent flickering
  /// 4. Removes the overlay when complete
  ///
  /// [future] The Future to execute while showing the loading overlay.
  /// [child] Optional custom loading widget.
  /// [isShowLoading] Whether to show the loading overlay.
  ///
  /// Returns the result of the API call.
  static Future<dynamic> show({required Future<dynamic> future, Widget? child, bool isShowLoading = true}) async {
    if (isShowLoading) {
      createHighlightOverlay(child: child);
    }
    final Stopwatch stopwatch = Stopwatch()..start();
    final result = await future;
    stopwatch.stop();
    if (stopwatch.elapsedMilliseconds < 200) {
      await Future.delayed(const Duration(milliseconds: 300));
    }
    if (isShowLoading) {
      removeHighlightOverlay();
    }
    return result;
  }

  /// Removes the current loading overlay from the screen.
  ///
  /// This method safely removes and disposes of the overlay entry
  /// if one is currently being displayed. It performs proper cleanup
  /// to prevent memory leaks.
  static void removeHighlightOverlay() {
    overlayEntry?.remove();
    overlayEntry?.dispose();
    overlayEntry = null;
  }

  /// Creates and displays a new loading overlay on the screen.
  ///
  /// This method creates a full-screen overlay with the specified
  /// loading widget (or default activity indicator). The overlay
  /// covers the entire screen and prevents user interaction.
  ///
  /// [child] Optional custom loading widget. If not provided,
  /// defaults to a dark rounded container with activity indicator.
  static void createHighlightOverlay({Widget? child}) {
    removeHighlightOverlay();
    final overlayState = AppNavigator.navigatorKey.currentState?.overlay;
    assert(overlayEntry == null);
    if (overlayState == null) return;

    overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return AnimatedPositioned(
          width: Get.width,
          height: Get.height,
          duration: Duration.zero,
          child: GestureDetector(
            child: Container(
              color: AppColors.backgroundSurfacePrimaryWhite.withValues(alpha: 0),
              child: Center(
                child:
                    child ??
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(color: AppColors.textGreyHighest950.withValues(alpha: 0.54), borderRadius: BorderRadius.circular(12)),
                      child: CupertinoActivityIndicator(color: AppColors.backgroundSurfacePrimaryWhite),
                    ),
              ),
            ),
            onTap: () {},
          ),
        );
      },
    );

    overlayState.insert(overlayEntry!);
  }
}
