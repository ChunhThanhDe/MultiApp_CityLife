import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<T?> showAppDialog<T>({required Widget child, bool canDismiss = true, Function(dynamic)? onDismiss, EdgeInsets? padding, EdgeInsets? margin}) {
  return Get.dialog<T>(
    Center(
      child: AppDialog(canDismiss: canDismiss, onDismiss: onDismiss, padding: padding, margin: margin, child: child),
    ),
    transitionDuration: const Duration(milliseconds: 100),
    transitionCurve: Curves.easeInOut,
    barrierDismissible: canDismiss,
    barrierColor: Colors.black.withValues(alpha: 0.5),
  ).then((result) {
    onDismiss?.call(result);
    return result;
  });
}

class AppDialog extends StatelessWidget {
  final Widget child;
  final bool canDismiss;
  final Function(dynamic)? onDismiss;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const AppDialog({super.key, required this.child, this.canDismiss = true, this.onDismiss, this.padding, this.margin});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 24),
        padding: padding ?? const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.15), blurRadius: 24, offset: const Offset(0, 8))],
        ),
        child: child,
      ),
    );
  }
}
