import 'package:flutter/material.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import 'app_overlay_navigator.dart';

showAppBottomSheet({required Widget child}) {
  final modalRoute = ModalSheetRoute(
    swipeDismissible: true,
    swipeDismissSensitivity: const SwipeDismissSensitivity(
      minFlingVelocityRatio: 1,
      minDragDistance: 200,
    ),
    builder: (context) => AppBottomSheet(child: child),
  );

  Navigator.push(AppNavigator.navigatorKey.currentContext!, modalRoute);
}

class AppBottomSheet extends StatelessWidget {
  final Widget child;
  const AppBottomSheet({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Sheet(
      decoration: MaterialSheetDecoration(
        size: SheetSize.fit,
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
      ),
      child: IntrinsicHeight(
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
    );
  }
}
