import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/request/change_password_request.dart';
import 'package:sixam_mart_user/domain/repositories/user_repository.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';

class AccountPasswordController extends BaseController {
  final UserRepository _userRepository = Get.find<UserRepository>();

  // Password visibility toggles
  final showOldPassword = false.obs;
  final showNewPassword = false.obs;
  final showConfirmPassword = false.obs;

  // Text controllers
  final oldController = TextEditingController();
  final newController = TextEditingController();
  final confirmController = TextEditingController();

  // Form key for validation
  final formKey = GlobalKey<FormState>();

  // Toggle visibility
  void toggleOld() => showOldPassword.value = !showOldPassword.value;
  void toggleNew() => showNewPassword.value = !showNewPassword.value;
  void toggleConfirm() => showConfirmPassword.value = !showConfirmPassword.value;

  @override
  void onClose() {
    oldController.dispose();
    newController.dispose();
    confirmController.dispose();
    super.onClose();
  }

  // Change password handler
  void onChangePassword() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }

    try {
      isLoading.value = true;

      final request = ChangePasswordRequest(
        oldPassword: oldController.text.trim(),
        password: newController.text.trim(),
        confirmPassword: confirmController.text.trim(),
      );

      final ApiResult result = await _userRepository.changePassword(request);

      switch (result) {
        case Success(:final response):
          if (response.statusCode == 200) {
            showAppSnackBar(
              title: 'Success',
              message: 'Your password has been changed successfully.',
              type: SnackBarType.success,
            );
            // Clear the fields after successful change
            oldController.clear();
            newController.clear();
            confirmController.clear();
            // Navigate back to previous screen
            Get.back();
          } else {
            showAppSnackBar(
              title: 'Error',
              message: 'Failed to change password. Please try again.',
              type: SnackBarType.error,
            );
          }
          break;

        case Failure(:final error):
          String errorMessage = 'Failed to change password. Please try again.';
          
          // Handle specific error cases
          if (error.toString().contains('old_password')) {
            errorMessage = 'Current password is incorrect.';
          } else if (error.toString().contains('password')) {
            errorMessage = 'New password does not meet requirements.';
          }

          showAppSnackBar(
            title: 'Error',
            message: errorMessage,
            type: SnackBarType.error,
          );
          break;
      }
    } catch (e) {
      showAppSnackBar(
        title: 'Error',
        message: 'An unexpected error occurred. Please try again.',
        type: SnackBarType.error,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // Validation logic
  String? validateOldPassword(String? value) {
    if (value == null || value.isEmpty) return 'Old password is required';
    // Optionally, check with current password if you have the logic
    return null;
  }

  String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) return 'New password is required';
    if (value.length < 8) return 'Password must be at least 8 characters';
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) return 'Must include uppercase letter';
    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) return 'Must include lowercase letter';
    if (!RegExp(r'(?=.*[0-9])').hasMatch(value)) return 'Must include number';
    if (!RegExp(r'(?=.*[!@#\$&*~])').hasMatch(value)) return 'Must include symbol (!@#\$&*~)';
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) return 'Please confirm your new password';
    if (value != newController.text) return 'Passwords do not match';
    return null;
  }
}
