import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/services/user_service.dart';

import '../../../shared/global/app_snackbar.dart';

class AccountManageController extends BaseController {
  var avatarPath = ''.obs;

  final formKey = GlobalKey<FormState>();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  // Birthday
  var day = "20".obs;
  var month = "02".obs;
  var year = "1992".obs;

  @override
  void onInit() {
    super.onInit();
    final userInfo = UserService.getCurrentUserInfo();
    firstNameController.text = userInfo.fName;
    lastNameController.text = userInfo.lName;
    emailController.text = userInfo.email;
    phoneController.text = userInfo.phone;
    // Parse birthday if available (format: YYYY-MM-DD or similar)
    if (userInfo.birthday.isNotEmpty) {
      final parts = userInfo.birthday.split('-');
      if (parts.length == 3) {
        year.value = parts[0];
        month.value = parts[1].padLeft(2, '0');
        day.value = parts[2].padLeft(2, '0');
      }
    }
    // Avatar (if available)
    if (userInfo.imageFullUrl.isNotEmpty) {
      avatarPath.value = userInfo.imageFullUrl;
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

  void updateInfo() {
    if (formKey.currentState?.validate() ?? false) {
      showAppSnackBar(title: 'Cập nhật thông tin thành công!');
    }
  }

  Future<void> pickAvatar() async {
    final picker = ImagePicker();
    final XFile? picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      avatarPath.value = picked.path;
    }
  }
}
