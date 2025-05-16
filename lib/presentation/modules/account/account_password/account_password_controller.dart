import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class AccountPasswordController extends BaseController {
  // Rx on/off password
  final showOldPassword = false.obs;
  final showNewPassword = false.obs;
  final showConfirmPassword = false.obs;

  // input Controller
  final oldController = TextEditingController();
  final newController = TextEditingController();
  final confirmController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  //  toggle on/off  visibility
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

  void onChangePassword() {
    if (!formKey.currentState!.validate()) return;

    print("Password changed: ${oldController.text} -> ${newController.text}");
  }
}
