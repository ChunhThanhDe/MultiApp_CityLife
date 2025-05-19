import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/components/password_input.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'account_password_controller.dart';

class AccountPasswordScreen extends BaseScreen<AccountPasswordController> {
  const AccountPasswordScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BasicAppBar(title: "Password", onBack: () => Get.back()),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      "Change My Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF161A1D),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "In order to best protect your account, please select a password that is at least 8 characters long and contains a combination of uppercase and lowercase letters, numbers and/or symbols.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4A5763),
                        height: 1.42,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Old Password
                    Obx(() => PasswordInput(
                          label: "Old Password",
                          controller: controller.oldController,
                          isObscure: !controller.showOldPassword.value,
                          onToggle: controller.toggleOld,
                          validator: controller.validateOldPassword,
                        )),
                    const SizedBox(height: 16),

                    // New Password
                    Obx(() => PasswordInput(
                          label: "New password",
                          controller: controller.newController,
                          isObscure: !controller.showNewPassword.value,
                          onToggle: controller.toggleNew,
                          validator: controller.validateNewPassword,
                        )),
                    const SizedBox(height: 16),

                    // Confirm New Password
                    Obx(() => PasswordInput(
                          label: "Confirm new password",
                          controller: controller.confirmController,
                          isObscure: !controller.showConfirmPassword.value,
                          onToggle: controller.toggleConfirm,
                          validator: controller.validateConfirmPassword,
                        )),
                    const SizedBox(height: 24),
                    Text(
                      "We recommend choosing a password that:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF161A1D),
                      ),
                    ),
                    const SizedBox(height: 8),
                    _recommendationText(),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
          // Bottom actions
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Color(0x10101214))),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.onChangePassword,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5856D7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      elevation: 0,
                    ),
                    child: const Text(
                      "Change password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    "Don't use the same password on different services, especially if you are using the same Username.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Color(0xFF798A9A)),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Recommendations widget
  Widget _recommendationText() {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Icon(Icons.circle, size: 6, color: Color(0xFF4A5763)),
            ),
          ),
          TextSpan(
            text: "Is unique and not used for another service.\n",
            style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Icon(Icons.circle, size: 6, color: Color(0xFF4A5763)),
            ),
          ),
          TextSpan(
            text: "Is at least 8 characters long.\n",
            style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Icon(Icons.circle, size: 6, color: Color(0xFF4A5763)),
            ),
          ),
          TextSpan(
            text: "Includes uppercase/lowercase letters, numbers, and symbols.\n",
            style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Icon(Icons.circle, size: 6, color: Color(0xFF4A5763)),
            ),
          ),
          TextSpan(
            text: "Is not your company ID or special character (q!@#\$...).",
            style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
          ),
        ],
      ),
    );
  }
}
