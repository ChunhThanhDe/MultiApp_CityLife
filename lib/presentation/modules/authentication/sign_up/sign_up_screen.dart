import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_bottom_section.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/phone_picker.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';
import 'package:sixam_mart_user/theme.dart';

import 'sign_up_controller.dart';

class SignUpScreen extends BaseScreen<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return const AuthBottomSection(isSignIn: false);
  }

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            const AuthHeader(
              title: 'Create an account',
              subtitle: 'Enter Your Account Details',
            ),
            SizedBox(height: 24.h),
            _buildForm(),
            SizedBox(height: 24.h),
            _buildNextButton(),
            SizedBox(height: 16.h),
            _buildOrDivider(),
            SizedBox(height: 16.h),
            _buildToggleSignUpMethodButton(),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: vm.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInput(),
          _buildNameInput(),
          SizedBox(height: 16.h),
          _buildBirthdayInput(),
        ],
      ),
    );
  }

  Widget _buildNameInput() {
    return AppTextField(
      label: 'Your name',
      isRequired: true,
      controller: vm.nameController,
      hintText: 'Enter your name',
      prefixIcon: Assets.icons.icPersonIcon.svg(),
      validator: _validateName,
    );
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full name is required';
    }
    return null;
  }

  Widget _buildInput() {
    return Obx(() => vm.currentMethod.value == SignUpMethod.email
        ? _buildEmailInput()
        : PhonePicker(
            inputController: vm.phoneController,
            onChanged: vm.onCountryCodeChanged,
            countryDialCode: vm.countryDialCode.value,
          ));
  }

  Widget _buildEmailInput() {
    return AppTextField(
      label: 'Email address',
      isRequired: true,
      controller: vm.emailController,
      hintText: 'name@example.com',
      prefixIcon: Assets.icons.icEmailIcon.svg(),
      keyboardType: TextInputType.emailAddress,
      validator: _validateEmail,
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  Widget _buildBirthdayInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBirthdayHeader(),
        SizedBox(height: 8.h),
        _buildBirthdayFields(),
      ],
    );
  }

  Widget _buildBirthdayHeader() {
    return Row(
      children: [
        Text(
          "When's your birthday?",
          style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
        ),
        Text(
          " (optional)",
          style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyDefault500),
        ),
      ],
    );
  }

  Widget _buildBirthdayFields() {
    return Row(
      children: [
        Expanded(child: _buildMonthDropdown()),
        SizedBox(width: 10.w),
        Expanded(child: _buildDayDropdown()),
        SizedBox(width: 10.w),
        Expanded(child: _buildYearDropdown()),
      ],
    );
  }

  Widget _buildMonthDropdown() {
    final months = List.generate(12, (i) => (i + 1).toString().padLeft(2, '0'));
    return _buildDropdownField(
      items: months,
      controller: vm.monthController,
      hint: 'Month',
      helper: 'MM',
    );
  }

  Widget _buildDayDropdown() {
    final days = List.generate(31, (i) => (i + 1).toString().padLeft(2, '0'));
    return _buildDropdownField(
      items: days,
      controller: vm.dayController,
      hint: 'Day',
      helper: 'DD',
    );
  }

  Widget _buildYearDropdown() {
    final currentYear = DateTime.now().year;
    final years = List.generate(100, (i) => (currentYear - i).toString());
    return _buildDropdownField(
      items: years,
      controller: vm.yearController,
      hint: 'Year',
      helper: 'YYYY',
    );
  }

  Widget _buildDropdownField({
    required List<String> items,
    required TextEditingController controller,
    required String hint,
    required String helper,
  }) {
    return DropdownButtonFormField<String>(
      value: controller.text.isNotEmpty ? controller.text : null,
      style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
      items: items.map((item) => DropdownMenuItem(value: item, child: Text(item, style: AppTextStyles.typographyH11Regular))).toList(),
      onChanged: (val) => controller.text = val ?? '',
      icon: Assets.icons.icDropdownArrow.svg(),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyDefault500),
        helperText: helper,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Figma.corner.radius6),
          borderSide: BorderSide(
            color: Figma.theme.tokenColorsStateGreyLowestHover100,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Figma.corner.radius6),
          borderSide: BorderSide(
            color: Figma.theme.tokenColorsStateGreyLowestHover100,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Figma.corner.radius6),
          borderSide: BorderSide(
            color: Figma.theme.tokenColorsStateGreyLowestHover100,
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      ),
    );
  }

  Widget _buildNextButton() {
    return Obx(() => AppButton(
          onTap: vm.onSubmit,
          enabled: !vm.isLoading.value,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: _buildNextButtonContent(),
        ));
  }

  Widget _buildNextButtonContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Text(
          'Next',
          style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white),
        ),
        SvgPicture.asset(
          Assets.icons.icRightArrow.path,
          width: 12.w,
          height: 12.w,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ],
    );
  }

  Widget _buildOrDivider() {
    return Row(
      children: [
        Expanded(child: Divider(color: Figma.theme.tokenColorsStateGreyLowestHover100, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'OR',
            style: AppTextStyles.typographyH12Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHigh700),
          ),
        ),
        Expanded(child: Divider(color: Figma.theme.tokenColorsStateGreyLowestHover100, thickness: 1)),
      ],
    );
  }

  Widget _buildToggleSignUpMethodButton() {
    return AppButton(
      onTap: vm.toggleMethod,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Obx(() => _buildToggleMethodContent()),
    );
  }

  Widget _buildToggleMethodContent() {
    final bool isEmail = vm.currentMethod.value == SignUpMethod.email;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          isEmail ? Assets.icons.icPhoneIcon.path : Assets.icons.icEmailIcon.path,
          width: 20.w,
          height: 20.w,
          colorFilter: ColorFilter.mode(
            Figma.theme.tokenColorsTextGreyHighest950,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          isEmail ? 'Sign up with phone' : 'Sign up with email',
          textAlign: TextAlign.center,
          style: AppTextStyles.typographyH10Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
        ),
      ],
    );
  }
}
