import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class AccountPasswordController extends BaseController {
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
  void onChangePassword() {
    if (formKey.currentState?.validate() ?? false) {
      // Call your API or logic here
      Get.snackbar(
        "Success",
        "Your password has been changed.",
        snackPosition: SnackPosition.BOTTOM,
      );
      // Optionally, clear the fields
      oldController.clear();
      newController.clear();
      confirmController.clear();
    }
  }

  // Validation logic
  String? validateOldPassword(String? value) {
    if (value == null || value.isEmpty) return "Old password is required";
    // Optionally, check with current password if you have the logic
    return null;
  }

  String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) return "New password is required";
    if (value.length < 8) return "Password must be at least 8 characters";
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) return "Must include uppercase letter";
    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) return "Must include lowercase letter";
    if (!RegExp(r'(?=.*[0-9])').hasMatch(value)) return "Must include number";
    if (!RegExp(r'(?=.*[!@#\$&*~])').hasMatch(value)) return "Must include symbol (!@#\$&*~)";
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) return "Please confirm your new password";
    if (value != newController.text) return "Passwords do not match";
    return null;
  }
}
