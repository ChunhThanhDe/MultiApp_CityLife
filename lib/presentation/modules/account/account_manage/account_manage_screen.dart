import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'account_manage_controller.dart';

class AccountManageScreen extends BaseScreen<AccountManageController> {
  const AccountManageScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: "Manage account", onBack: () => Get.back());
  }

  @override
  bool get wrapWithSafeArea => true;

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      children: [
        // Avatar
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
              child: SizedBox(
                height: 143,
                width: 143,
                child: Obx(
                  () => GestureDetector(
                    onTap: controller.pickAvatar,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 71.5,
                            backgroundColor: Color(0xFF5856D7),
                            backgroundImage: controller.avatarPath.value.isEmpty ? Assets.images.imgAvatarDefault.provider() : FileImage(File(controller.avatarPath.value)) as ImageProvider,
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8F9),
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(color: Color(0xFF101214).withValues(alpha: 0.1), blurRadius: 16, offset: Offset(0, 6)),
                                BoxShadow(color: Color(0xFF101214).withValues(alpha: 0.05), blurRadius: 4, offset: Offset(0, 2)),
                              ],
                            ),
                            padding: EdgeInsets.all(6),
                            child: Icon(Icons.edit, size: 24, color: Color(0xFF161A1D)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Form
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    // First name
                    _InputTextField(
                      label: "First name",
                      controller: controller.firstNameController,
                      required: true,
                      validator: (v) => (v == null || v.isEmpty) ? "Please enter your first name" : null,
                      suffix: Icon(Icons.check, color: Color(0xFF4A5763)),
                    ),
                    // Last name
                    _InputTextField(
                      label: "Last name",
                      controller: controller.lastNameController,
                      required: true,
                      validator: (v) => (v == null || v.isEmpty) ? "Please enter your last name" : null,
                      suffix: Icon(Icons.check, color: Color(0xFF4A5763)),
                    ),
                    // Birthday
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("When's your birthday?", style: TextStyle(fontSize: 14, color: Color(0xFF161A1D))),
                          SizedBox(width: 4),
                          Text("(optional)", style: TextStyle(fontSize: 14, color: Color(0xFF798A9A))),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Obx(
                      () => Row(
                        children: [
                          Expanded(
                            child: _BirthdayDropdown(
                              items: List.generate(12, (i) => (i + 1).toString().padLeft(2, '0')),
                              value: controller.selectedMonth.value,
                              onChanged: (v) => controller.selectedMonth.value = v!,
                              hint: "MM",
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: _BirthdayDropdown(
                              items: List.generate(31, (i) => (i + 1).toString().padLeft(2, '0')),
                              value: controller.selectedDay.value,
                              onChanged: (v) => controller.selectedDay.value = v!,
                              hint: "DD",
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: _BirthdayDropdown(
                              items: List.generate(100, (i) => (DateTime.now().year - i).toString()),
                              value: controller.selectedYear.value,
                              onChanged: (v) => controller.selectedYear.value = v!,
                              hint: "YYYY",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Divider(color: Color(0xFFE8EBEE), thickness: 1),
                    const SizedBox(height: 16),

                    // Email
                    _InputTextField(
                      label: "Email address",
                      controller: controller.emailController,
                      required: true,
                      validator: (v) {
                        if (v == null || v.isEmpty) return "Please enter your email";
                        if (!GetUtils.isEmail(v)) return "Please enter a valid email address";
                        return null;
                      },
                      suffix: Icon(Icons.check, color: Color(0xFF4A5763)),
                    ),
                    // Phone
                    _InputTextField(
                      label: "Phone number",
                      controller: controller.phoneController,
                      required: true,
                      validator: (v) {
                        if (v == null || v.isEmpty) return "Please enter your phone number";
                        if (!GetUtils.isPhoneNumber(v)) return "Please enter a valid phone number";
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    // Update button
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: Obx(
                        () => ElevatedButton(
                          onPressed: controller.isLoading.value ? null : controller.updateInfo,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF5856D7),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                            elevation: 0,
                            disabledBackgroundColor: Color(0xFF5856D7).withOpacity(0.6),
                          ),
                          child: controller.isLoading.value
                              ? SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                  ),
                                )
                              : Text(
                                  "Update",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _InputTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool required;
  final Widget? suffix;
  final String? Function(String?)? validator;

  const _InputTextField({required this.label, required this.controller, this.required = false, this.suffix, this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(label, style: TextStyle(fontSize: 14, color: Color(0xFF161A1D))),
              if (required) Text(' *', style: TextStyle(fontSize: 14, color: Color(0xFFFF3B30))),
            ],
          ),
          SizedBox(height: 8),
          TextFormField(
            controller: controller,
            style: TextStyle(fontSize: 14, color: Color(0xFF161A1D)),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF7F8F9),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              suffixIcon: suffix,
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}

class _BirthdayDropdown extends StatelessWidget {
  final List<String> items;
  final String value;
  final void Function(String?)? onChanged;
  final String hint;

  const _BirthdayDropdown({required this.items, required this.value, required this.onChanged, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(6)),
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              value: value,
              onChanged: onChanged,
              style: TextStyle(fontSize: 14, color: Color(0xFF161A1D)),
              items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(hint, style: TextStyle(fontSize: 12, color: Color(0xFF798A9A))),
      ],
    );
  }
}
