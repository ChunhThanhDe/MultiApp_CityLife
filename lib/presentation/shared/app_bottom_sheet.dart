import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import 'app_navigator.dart';

Future<T?> showAppBottomSheet<T>({required Widget child, Function(dynamic)? onClosed, bool isDismissible = true}) async {
  // FocusScope.of(AppNavigator.navigatorKey.currentContext!).unfocus();

  final modalRoute = ModalSheetRoute<T>(
    swipeDismissible: true,
    swipeDismissSensitivity: const SwipeDismissSensitivity(
      minFlingVelocityRatio: 1,
      minDragDistance: 200,
    ),
    builder: (context) => AppBottomSheet(onClosed: onClosed, child: child),
  );

  return Navigator.push<T>(AppNavigator.navigatorKey.currentContext!, modalRoute).then((value) {
    // FocusScope.of(AppNavigator.navigatorKey.currentContext!).unfocus();
    return value;
  });
}

class AppBottomSheet extends StatelessWidget {
  final Widget child;
  final Function(dynamic)? onClosed;
  final bool isDismissible;
  const AppBottomSheet({super.key, required this.child, this.onClosed, this.isDismissible = true});

  @override
  Widget build(BuildContext context) {
    return Sheet(
      decoration: MaterialSheetDecoration(
        size: SheetSize.fit,
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
      ),
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
                      color: AppColors.tokenColorsStateGreyLowestHover100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                      ),
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
