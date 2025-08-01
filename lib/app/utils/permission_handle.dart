import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_dialog.dart';

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
  showAppDialog(
    child: Column(
      children: [
        const Text('Permission Restricted'),
        Text(titleRestricted ?? 'This permission is restricted by the system and cannot be changed.'),
        AppButton(
          child: const Text('OK'),
          onTap: () {
            Get.back();
          },
        ),
      ],
    ),
  );
}

Future<void> _showGoToAppSettingsModal(String? titlePermanentlyDenied) async {
  showAppDialog(
    child: Column(
      children: [
        const Text('Permission Required'),
        Text(titlePermanentlyDenied ?? 'This permission is required for the app to function properly. Please enable it in settings.'),
        AppButton(
          child: const Text('Open Settings'),
          onTap: () {
            openAppSettings();
            Get.back();
          },
        ),
        AppButton(
          child: const Text('Cancel'),
          onTap: () {
            Get.back();
          },
        ),
      ],
    ),
  );
}
