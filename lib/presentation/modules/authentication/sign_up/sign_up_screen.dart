import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_bottom_section.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/phone_picker.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';

import 'sign_up_controller.dart';

class SignUpScreen extends BaseScreen<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return AuthBottomSection(isSignIn: false);
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
            AuthHeader(
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
      hint: 'Enter your name',
      svgPath: Assets.icons.icPersonIcon.path,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Full name is required';
        }
        return null;
      },
    );
  }

  Widget _buildInput() {
    return Obx(() => vm.currentMethod.value == SignUpMethod.email
        ? AppTextField(
            label: 'Email address',
            isRequired: true,
            controller: vm.emailController,
            hint: 'name@example.com',
            svgPath: Assets.icons.icEmailIcon.path,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!GetUtils.isEmail(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          )
        : PhonePicker(inputController: vm.phoneController, onChanged: vm.onCountryCodeChanged, countryDialCode: vm.countryDialCode.value));
  }

  Widget _buildBirthdayInput() {
    final months = List.generate(12, (i) => (i + 1).toString().padLeft(2, '0'));
    final days = List.generate(31, (i) => (i + 1).toString().padLeft(2, '0'));
    final currentYear = DateTime.now().year;
    final years = List.generate(100, (i) => (currentYear - i).toString());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "When's your birthday?",
              style: AppTextStyle.s14w400.copyWith(color: const Color(0xFF161A1D)),
            ),
            Text(
              " (optional)",
              style: AppTextStyle.s14w400.copyWith(color: const Color(0xFF798A9A)),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Expanded(
              child: DropdownButtonFormField<String>(
                value: vm.monthController.text.isNotEmpty ? vm.monthController.text : null,
                items: months.map((m) => DropdownMenuItem(value: m, child: Text(m))).toList(),
                onChanged: (val) {
                  vm.monthController.text = val ?? '';
                },
                decoration: InputDecoration(
                  hintText: 'Month',
                  helperText: 'MM',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      color: AppColors.stateGreyLowestHover100,
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: DropdownButtonFormField<String>(
                value: vm.dayController.text.isNotEmpty ? vm.dayController.text : null,
                items: days.map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
                onChanged: (val) {
                  vm.dayController.text = val ?? '';
                },
                decoration: InputDecoration(
                  hintText: 'Day',
                  helperText: 'DD',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      color: AppColors.stateGreyLowestHover100,
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: DropdownButtonFormField<String>(
                value: vm.yearController.text.isNotEmpty ? vm.yearController.text : null,
                items: years.map((y) => DropdownMenuItem(value: y, child: Text(y))).toList(),
                onChanged: (val) {
                  vm.yearController.text = val ?? '';
                },
                decoration: InputDecoration(
                  hintText: 'Year',
                  helperText: 'YYYY',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      color: AppColors.stateGreyLowestHover100,
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNextButton() {
    return Obx(() => AppButton(
          onTap: vm.onSubmit,
          enabled: !vm.isLoading.value,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                'Next',
                style: AppTextStyle.s16w500.copyWith(
                  color: Colors.white,
                ),
              ),
              SvgPicture.asset(
                Assets.icons.icRightArrow.path,
                width: 12.w,
                height: 12.w,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildOrDivider() {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'OR',
            style: AppTextStyle.s12w500.copyWith(
              color: const Color(0xFF4A5763),
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildToggleSignUpMethodButton() {
    return AppButton(
      onTap: vm.toggleMethod,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Obx(() => Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                vm.currentMethod.value == SignUpMethod.email ? Assets.icons.icPhoneIcon.path : Assets.icons.icEmailIcon.path,
                width: 20.w,
                height: 20.w,
                colorFilter: const ColorFilter.mode(
                  AppColors.textGreyHighest950,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                vm.currentMethod.value == SignUpMethod.email ? 'Sign up with phone' : 'Sign up with email',
                textAlign: TextAlign.center,
                style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
              ),
            ],
          )),
    );
  }
}
