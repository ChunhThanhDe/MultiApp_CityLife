import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

Future<bool> checkPermission({required Permission permission, String? titleRestricted, String? titlePermanentlyDenied}) async {
  final PermissionStatus status = await permission.status;

  switch (status) {
    case PermissionStatus.granted || PermissionStatus.limited:
      // Have permission
      return true;
    case PermissionStatus.denied:
      // Have not permission, request permission
      final PermissionStatus tmpStatus = await permission.request();
      if (tmpStatus == PermissionStatus.granted) {
        return true;
      } else if (tmpStatus == PermissionStatus.permanentlyDenied) {
        // User denied and selected "Don't ask again"
        _showGoToAppSettingsModal(titlePermanentlyDenied);
        return false;
      } else {
        // User denied but didn't select "Don't ask again"
        return false;
      }
    case PermissionStatus.restricted:
      // Permission is restricted by the operating system and cannot be changed through normal settings
      _showModalNotifyPermissionRestricted(titleRestricted);
      return false;
    case PermissionStatus.permanentlyDenied:
      // Permission is blocked and "Don't ask again" is selected, need to go to settings to enable it again
      _showGoToAppSettingsModal(titlePermanentlyDenied);
      return false;
    default:
      return false;
  }
}

Future<void> _showModalNotifyPermissionRestricted(String? titleRestricted) async {
  Get.dialog(
    transitionDuration: const Duration(milliseconds: 100),
    transitionCurve: Curves.easeInOut,
    Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      backgroundColor: Colors.white,
      child: CustomModal(
        title: 'Permission Restricted',
        message: titleRestricted ?? 'This permission is restricted by the system and cannot be changed.',
        onConfirm: () {
          Get.back();
        },
        onCancel: () {},
      ),
    ),
  );
}

Future<void> _showGoToAppSettingsModal(String? titlePermanentlyDenied) async {
  Get.dialog(
    transitionDuration: const Duration(milliseconds: 100),
    transitionCurve: Curves.easeInOut,
    Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      backgroundColor: Colors.white,
      child: CustomModal(
        title: 'Permission Required',
        message: titlePermanentlyDenied ?? 'This permission is required for the app to function properly. Please enable it in settings.',
        onCancel: () {
          Get.back();
        },
        onConfirm: () {
          openAppSettings();
          Get.back();
        },
      ),
    ),
  );
}

class CustomModal extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;
  final String? txtCancel;
  final String? txtConfirm;

  const CustomModal({super.key, required this.title, required this.message, required this.onConfirm, required this.onCancel, this.txtCancel, this.txtConfirm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950)),
              IconButton(icon: const Icon(Icons.close), onPressed: onCancel),
            ],
          ),
          Text(message, style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyDefault500)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: onCancel,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: AppColors.stateGreyLowestHover100),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    child: Text(
                      txtCancel ?? 'Cancel',
                      style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textGreyHighest950),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: GestureDetector(
                  onTap: onConfirm,
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.stateBrandDefault500, borderRadius: BorderRadius.circular(18)),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    child: Text(
                      txtConfirm ?? 'Confirm',
                      style: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.textGreyLowestWhite),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
