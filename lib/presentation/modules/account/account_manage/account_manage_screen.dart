import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

class AccountManageScreen extends BaseScreen<AccountManageController> {
  const AccountManageScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Manage account', onBack: () => Get.back());
  }

  @override
  bool get wrapWithSafeArea => true;

  @override
  bool get resizeToAvoidBottomInset => true;

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        children: [
          // Avatar
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
                child: SizedBox(
                  height: 143,
                  width: 143,
                  child: Obx(
                    () => GestureDetector(
                      onTap: controller.pickAvatar,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                            child: CircleAvatar(
                              radius: 71.5,
                              backgroundColor: AppColors.stateBrandDefault500,
                              backgroundImage: controller.avatarPath.value.isEmpty ? Assets.images.imgAvatarDefault.provider() : FileImage(File(controller.avatarPath.value)) as ImageProvider,
                            ),
                          ),
                          Positioned(
                            right: 8,
                            bottom: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.backgroundSurfaceTertiaryGrey50,
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(color: AppColors.alphaGrey10, blurRadius: 16, offset: const Offset(0, 6)),
                                  BoxShadow(color: AppColors.alphaGrey5, blurRadius: 4, offset: const Offset(0, 2)),
                                ],
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                              child: Icon(Icons.edit, size: 24, color: AppColors.textGreyHighest950),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  // First name
                  _InputTextField(
                    label: 'First name',
                    controller: controller.firstNameController,
                    required: true,
                    validator: (v) => (v == null || v.isEmpty) ? 'Please enter your first name' : null,
                    suffix: Icon(Icons.check, color: AppColors.textGreyHigh700),
                  ),
                  // Last name
                  _InputTextField(
                    label: 'Last name',
                    controller: controller.lastNameController,
                    required: true,
                    validator: (v) => (v == null || v.isEmpty) ? 'Please enter your last name' : null,
                    suffix: Icon(Icons.check, color: AppColors.textGreyHigh700),
                  ),
                  // Birthday
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("When's your birthday?", style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
                        const SizedBox(width: 4),
                        Text('(optional)', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
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
                            hint: 'MM',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _BirthdayDropdown(
                            items: List.generate(31, (i) => (i + 1).toString().padLeft(2, '0')),
                            value: controller.selectedDay.value,
                            onChanged: (v) => controller.selectedDay.value = v!,
                            hint: 'DD',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _BirthdayDropdown(
                            items: List.generate(100, (i) => (DateTime.now().year - i).toString()),
                            value: controller.selectedYear.value,
                            onChanged: (v) => controller.selectedYear.value = v!,
                            hint: 'YYYY',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Divider(color: AppColors.stateGreyLowestHover100, thickness: 1),
                  const SizedBox(height: 16),

                  // Email
                  _InputTextField(
                    label: 'Email address',
                    controller: controller.emailController,
                    required: true,
                    validator: (v) {
                      if (v == null || v.isEmpty) return 'Please enter your email';
                      if (!GetUtils.isEmail(v)) return 'Please enter a valid email address';
                      return null;
                    },
                    suffix: Icon(Icons.check, color: AppColors.textGreyHigh700),
                  ),
                  // Phone
                  _InputTextField(
                    label: 'Phone number',
                    controller: controller.phoneController,
                    required: true,
                    validator: (v) {
                      if (v == null || v.isEmpty) return 'Please enter your phone number';
                      if (!GetUtils.isPhoneNumber(v)) return 'Please enter a valid phone number';
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
                          backgroundColor: AppColors.stateBrandDefault500,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                          elevation: 0,
                          disabledBackgroundColor: AppColors.stateBrandDefault500.withValues(alpha: 0.6),
                        ),
                        child: controller.isLoading.value
                            ? SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(AppColors.stateBaseWhite)))
                            : Text('Update', style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.backgroundSurfacePrimaryWhite)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InputTextField extends StatelessWidget {
  const _InputTextField({required this.label, required this.controller, this.required = false, this.suffix, this.validator});
  final String label;
  final TextEditingController controller;
  final bool required;
  final Widget? suffix;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(label, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
              if (required) Text(' *', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textDangerDefault500)),
            ],
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller,
            style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.stateGreyLowest50,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
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
  const _BirthdayDropdown({required this.items, required this.value, required this.onChanged, required this.hint});
  final List<String> items;
  final String value;
  final void Function(String?)? onChanged;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(color: AppColors.stateGreyLowest50, borderRadius: BorderRadius.circular(6)),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              value: value,
              onChanged: onChanged,
              style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
              items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(hint, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyDefault500)),
      ],
    );
  }
}
