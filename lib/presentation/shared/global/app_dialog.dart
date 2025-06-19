import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';

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

Future<T?> showConfirmationDialog<T>({
  bool canDismiss = true,
  Function(dynamic)? onDismiss,
  required Function() onCancel,
  required Function() onConfirm,
  required String title,
  required String message,
  required String cancelText,
  required String confirmText,
  TextStyle? titleStyle,
  TextStyle? messageStyle,
  TextStyle? cancelTextStyle,
  TextStyle? confirmTextStyle,
  Color? cancelColor,
  Color? confirmColor,
}) {
  final child = Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: titleStyle ?? AppTextStyles.typographyH10SemiBold),
      SizedBox(height: 12),
      Text(message, style: messageStyle ?? AppTextStyles.typographyH11Regular),
      SizedBox(height: 24),
      Row(
        children: [
          Expanded(
            child: AppButton(
              onTap: onCancel,
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color(0xFFE8EBEE)),
              ),
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                cancelText,
                style: cancelTextStyle ?? TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF4A5763)),
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: AppButton(
              onTap: onConfirm,
              color: confirmColor ?? Color(0xFFB80900),
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                confirmText,
                style: confirmTextStyle ?? TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ],
  );
  return Get.dialog<T>(
    Center(
      child: AppDialog(canDismiss: canDismiss, onDismiss: onDismiss, child: child),
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
