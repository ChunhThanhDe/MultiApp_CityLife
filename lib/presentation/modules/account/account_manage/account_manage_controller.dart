import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/request/update_profile_request.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/services/user_service.dart';

class AccountManageController extends BaseController {
  // Form key for validation
  final formKey = GlobalKey<FormState>();

  // Text controllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  // Avatar path (can be local file path or network URL)
  var avatarPath = ''.obs;

  // Birthday selection observables
  final selectedDay = '01'.obs;
  final selectedMonth = '01'.obs;
  final selectedYear = DateTime.now().year.toString().obs;

  @override
  void onInit() {
    super.onInit();
    _initializeUserData();
  }

  /// Initialize form fields with current user data
  void _initializeUserData() {
    final userInfo = UserService.getCurrentUserInfo();

    // Set basic user information
    firstNameController.text = userInfo.fName;
    lastNameController.text = userInfo.lName;
    emailController.text = userInfo.email;
    phoneController.text = userInfo.phone;

    // Parse and set birthday if available
    _parseBirthday(userInfo.birthday);

    // Set avatar if available
    if (userInfo.imageFullUrl.isNotEmpty) {
      avatarPath.value = userInfo.imageFullUrl;
    }
  }

  /// Parse birthday string and set day, month, year values
  void _parseBirthday(String birthday) {
    if (birthday.isNotEmpty) {
      final parts = birthday.split('-');
      if (parts.length == 3) {
        selectedYear.value = parts[0];
        selectedMonth.value = parts[1].padLeft(2, '0');
        selectedDay.value = parts[2].padLeft(2, '0');
      }
    }
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.onClose();
  }

  /// Update user profile information
  Future<void> updateInfo() async {
    if (!_validateForm()) return;

    try {
      isLoading.value = true;

      final request = _buildUpdateRequest();
      final imagePath = _getLocalImagePath();

      final success = await UserService.updateProfile(request, imagePath: imagePath);

      if (success) {
        _showSuccessMessage();
      } else {
        _showErrorMessage('Failed to update profile. Please try again.');
      }
    } catch (e) {
      _showErrorMessage('An error occurred while updating profile.');
    } finally {
      isLoading.value = false;
    }
  }

  /// Validate the form before submission
  bool _validateForm() {
    if (!(formKey.currentState?.validate() ?? false)) {
      _showErrorMessage('Please fill in all required fields correctly.');
      return false;
    }
    return true;
  }

  /// Build the update profile request object
  UpdateProfileRequest _buildUpdateRequest() {
    final String fullName = '${firstNameController.text.trim()} ${lastNameController.text.trim()}';
    final String birthday = '${selectedYear.value}-${selectedMonth.value}-${selectedDay.value}';

    return UpdateProfileRequest(name: fullName, email: emailController.text.trim(), phone: phoneController.text.trim(), birthday: birthday.isNotEmpty && birthday != '--' ? birthday : null);
  }

  /// Get local image path if available
  String? _getLocalImagePath() {
    if (avatarPath.value.isNotEmpty && !avatarPath.value.startsWith('http') && File(avatarPath.value).existsSync()) {
      return avatarPath.value;
    }
    return null;
  }

  /// Show success message
  void _showSuccessMessage() {
    showAppSnackBar(title: 'Your profile has been updated successfully.', type: SnackBarType.success);
  }

  /// Show error message
  void _showErrorMessage(String message) {
    showAppSnackBar(title: 'Error', message: message, type: SnackBarType.error);
  }

  /// Pick avatar image from gallery
  Future<void> pickAvatar() async {
    try {
      final picker = ImagePicker();
      final XFile? picked = await picker.pickImage(source: ImageSource.gallery, maxWidth: 1024, maxHeight: 1024, imageQuality: 85);

      if (picked != null) {
        avatarPath.value = picked.path;
        showAppSnackBar(title: 'Image Selected', message: 'Profile picture has been selected successfully.', type: SnackBarType.success);
      }
    } catch (e) {
      _showErrorMessage('Failed to pick image. Please try again.');
    }
  }
}
