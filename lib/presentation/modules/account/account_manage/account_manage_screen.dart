import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'account_manage_controller.dart';

class AccountManageScreen extends BaseScreen<AccountManageController> {
  const AccountManageScreen({super.key});

  // Sample state variables (for demo purposes)
  final String firstName = "Abdulkadir";
  final String lastName = "Ali";
  final String email = "kadir@lukit.com";
  final String phone = "+1 (000) 000-0000";
  final String day = "20";
  final String month = "02";
  final String year = "1992";

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Custom AppBar (Status bar + back + title)
            BasicAppBar(
              title: "Manage account",
              onBack: () => Get.back(),
            ),
            // Avatar with edit
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
                  child: SizedBox(
                    height: 143,
                    width: 143,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 71.5,
                            backgroundColor: Color(0xFF5856D7),
                            backgroundImage: AssetImage('assets/images/img_avatar_default.png'),
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
                                BoxShadow(
                                  color: Color(0xFF101214).withOpacity(0.1),
                                  blurRadius: 16,
                                  offset: Offset(0, 6),
                                ),
                                BoxShadow(
                                  color: Color(0xFF101214).withOpacity(0.05),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
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
              ],
            ),
            // Form
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Obx(() => _InputField(
                            label: "First name",
                            value: controller.firstName.value,
                            required: true,
                            suffix: Icon(Icons.check, color: Color(0xFF4A5763)),
                          )),
                      Obx(() => _InputField(
                            label: "Last name",
                            value: controller.lastName.value,
                            required: true,
                            suffix: Icon(Icons.check, color: Color(0xFF4A5763)),
                          )),
                      // Birthday (Dropdowns for day/month/year)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "When's your birthday?",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF161A1D),
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "(optional)",
                              style: TextStyle(fontSize: 14, color: Color(0xFF798A9A)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Obx(() => Row(
                            children: [
                              _BirthdayDropdown(
                                items: List.generate(12, (i) => (i + 1).toString().padLeft(2, '0')),
                                value: controller.month.value,
                                onChanged: (v) => controller.month.value = v!,
                                width: 100,
                                hint: "MM",
                              ),
                              SizedBox(width: 10),
                              _BirthdayDropdown(
                                items: List.generate(31, (i) => (i + 1).toString().padLeft(2, '0')),
                                value: controller.day.value,
                                onChanged: (v) => controller.day.value = v!,
                                width: 100,
                                hint: "DD",
                              ),
                              SizedBox(width: 10),
                              _BirthdayDropdown(
                                items: List.generate(100, (i) => (DateTime.now().year - i).toString()),
                                value: controller.year.value,
                                onChanged: (v) => controller.year.value = v!,
                                width: 120,
                                hint: "YYYY",
                              ),
                            ],
                          )),
                      SizedBox(height: 16),
                      _InputField(
                        label: "Email address",
                        value: email,
                        required: true,
                        suffix: Icon(Icons.check, color: Color(0xFF4A5763)),
                      ),
                      _InputField(
                        label: "Phone number",
                        value: phone,
                        required: true,
                        suffix: null,
                      ),
                      const SizedBox(height: 24),
                      // Update button (disabled for UI only, enable for logic)
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: null, // Disabled, set to (){} if enabled
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF5856D7).withValues(alpha: 26),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            "Update",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
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
          ],
        ),
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  final String label;
  final String value;
  final bool required;
  final Widget? suffix;

  const _InputField({
    required this.label,
    required this.value,
    this.required = false,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF161A1D),
                ),
              ),
              if (required)
                Text(
                  ' *',
                  style: TextStyle(fontSize: 14, color: Color(0xFFFF3B30)),
                ),
            ],
          ),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF7F8F9),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 14, color: Color(0xFF161A1D)),
                    ),
                  ),
                ),
                if (suffix != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: suffix!,
                  ),
              ],
            ),
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
  final double width;
  final String hint;

  const _BirthdayDropdown({
    required this.items,
    required this.value,
    required this.onChanged,
    required this.width,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xFFF7F8F9),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: value,
          onChanged: onChanged,
          style: TextStyle(fontSize: 14, color: Color(0xFF161A1D)),
          items: items
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
