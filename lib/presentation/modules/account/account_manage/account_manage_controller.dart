import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class AccountManageController extends BaseController {
  final formKey = GlobalKey<FormState>();

  // Controllers cho từng trường
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
    // Gán giá trị mặc định
    firstNameController.text = "Abdulkadir";
    lastNameController.text = "Ali";
    emailController.text = "kadir@lukit.com";
    phoneController.text = "+1 (000) 000-0000";
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
      // Gọi API lưu thông tin (mock)
      Get.snackbar(
        "Success",
        "Cập nhật thông tin thành công!",
        snackPosition: SnackPosition.BOTTOM,
      );
      // Nếu có backend thì truyền controller.text về backend tại đây
    }
  }
}
