import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_dialog.dart';

class AccountManageScreen extends BaseScreen<AccountManageController> {
  const AccountManageScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: tr(LocaleKeys.account_manageAccount), onBack: () => Get.back());
  }

  @override
  bool get wrapWithSafeArea => true;

  @override
  bool get resizeToAvoidBottomInset => true;

  void _showDeleteAccountConfirmation() {
    showConfirmationDialog(
      onCancel: () => Get.back(),
      onConfirm: () {
        Get.back();
        controller.deleteAccount();
      },
      title: tr(LocaleKeys.account_deleteAccountTitle),
      message: tr(LocaleKeys.account_deleteAccountMessage),
      cancelText: tr(LocaleKeys.account_cancel),
      confirmText: tr(LocaleKeys.account_deleteAccount),
      cancelColor: AppColors.textGreyDefault500,
      confirmColor: AppColors.textDangerDefault500,
      cancelTextStyle: AppTextStyles.typographyH10SemiBold,
      confirmTextStyle: AppTextStyles.typographyH10SemiBold.copyWith(color: AppColors.stateBaseWhite),
      titleStyle: AppTextStyles.typographyH10SemiBold,
    );
  }

  /// Get the appropriate image provider for avatar display
  ImageProvider _getAvatarImageProvider() {
    if (controller.avatarPath.value.isEmpty) {
      return Assets.images.imgAvatarDefault.provider();
    }

    // Check if it's a network URL
    if (controller.avatarPath.value.startsWith('http')) {
      return NetworkImage(controller.avatarPath.value);
    }

    // Check if it's a local file and exists
    final file = File(controller.avatarPath.value);
    if (file.existsSync()) {
      return FileImage(file);
    }

    // Fallback to default avatar
    return Assets.images.imgAvatarDefault.provider();
  }

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                            child: CircleAvatar(radius: 71.5, backgroundColor: AppColors.stateBrandDefault500, backgroundImage: _getAvatarImageProvider()),
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
                        Text(tr(LocaleKeys.account_birthdayQuestion), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
                        const SizedBox(width: 4),
                        Text(tr(LocaleKeys.account_optional), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
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
                            : Text(tr(LocaleKeys.account_update), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.backgroundSurfacePrimaryWhite)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Delete Account Button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: Obx(
                      () => ElevatedButton(
                        onPressed: controller.isLoading.value ? null : _showDeleteAccountConfirmation,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.stateDangerLowest50,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                          elevation: 0,
                          disabledBackgroundColor: AppColors.stateDangerLowest50.withValues(alpha: 0.6),
                          foregroundColor: AppColors.stateDangerHigh700,
                        ),
                        child: controller.isLoading.value
                            ? SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(AppColors.stateDangerHigh700)))
                            : Text(tr(LocaleKeys.account_deleteAccount), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textDangerDefault500)),
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
