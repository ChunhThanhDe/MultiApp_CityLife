import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

/// Defines the type of snackbar to be displayed.
enum SnackBarType { error, success }

/// Displays a customized snackbar with the given title and message.
///
/// [title] The title of the snackbar.
/// [message] The main message of the snackbar.
/// [position] The position of the snackbar on the screen (default is TOP).
/// [type] The type of snackbar (success or error, default is success).
void showAppSnackBar({required String title, String? message, SnackPosition position = SnackPosition.TOP, SnackBarType type = SnackBarType.success}) {
  Get.showSnackbar(
    GetSnackBar(
      messageText: _buildSnackbarContent(type, title, message),
      snackPosition: position,
      backgroundColor: AppColors.backgroundSurfacePrimaryWhite.withValues(alpha: 0),
      barBlur: 1,
      borderRadius: 10,
      margin: const EdgeInsets.only(bottom: 30),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 350),
      forwardAnimationCurve: Curves.fastEaseInToSlowEaseOut,
      borderWidth: 1,
      snackStyle: SnackStyle.FLOATING,
    ),
  );
}

/// Builds the content of the snackbar based on the given type, title, and message.
///
/// [type] The type of snackbar (success or error).
/// [title] The title of the snackbar.
/// [message] The main message of the snackbar.
///
/// Returns a Widget representing the snackbar content.
Widget _buildSnackbarContent(SnackBarType type, String title, String? message) {
  final isSuccess = type == SnackBarType.success;
  final color = isSuccess ? AppColors.stateSuccessDefault500 : AppColors.stateDangerDefault500;
  final icon = isSuccess ? Assets.icons.icSuccess.path : Assets.icons.icError.path;

  return Container(
    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
    decoration: BoxDecoration(
      color: AppColors.backgroundSurfacePrimaryWhite,
      borderRadius: BorderRadius.circular(12),
      border: isSuccess ? Border(left: BorderSide(width: 5, color: color)) : null,
      boxShadow: [BoxShadow(color: isSuccess ? AppColors.stateSuccessDefault500.withValues(alpha: 0.12) : AppColors.textGreyHighest950.withValues(alpha: 0.1), blurRadius: isSuccess ? 12 : 20, offset: const Offset(0, 4), spreadRadius: 0)],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Icon container
        Container(
          width: 39,
          height: 39,
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: SvgPicture.asset(icon),
        ),
        const SizedBox(width: 12),
        // Title and message column
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: message != null && message.isNotEmpty ? MainAxisAlignment.start : MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Visibility(
                visible: title.isNotEmpty,
                child: AutoSizeText(title, maxLines: 2, style: AppTextStyles.typographyH10SemiBold.copyWith(color: color)),
              ),
              // Message
              Visibility(
                visible: message != null && message.isNotEmpty,
                child: AutoSizeText(message ?? '', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHighest950), maxLines: 2),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
