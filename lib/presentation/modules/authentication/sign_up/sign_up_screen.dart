import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/phone_picker.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';

import 'sign_up_controller.dart';

class SignUpScreen extends BaseScreen<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
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
          _buildBottomSection(),
        ],
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
              child: _buildDropdownField(
                hint: 'Month',
                helperText: 'MM',
                onTap: () => vm.selectMonth(Get.context!),
                controller: vm.monthController,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: _buildDropdownField(
                hint: 'Day',
                helperText: 'DD',
                onTap: () => vm.selectDay(Get.context!),
                controller: vm.dayController,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: _buildDropdownField(
                hint: 'Year',
                helperText: 'YYYY',
                onTap: () => vm.selectYear(Get.context!),
                controller: vm.yearController,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDropdownField({
    required String hint,
    required String helperText,
    required VoidCallback onTap,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: const Color(0xFFE8EBEE)),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(6.r),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        controller.text.isEmpty ? hint : controller.text,
                        style: AppTextStyle.s14w400.copyWith(
                          color: controller.text.isEmpty ? const Color(0xFF798A9A) : const Color(0xFF161A1D),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.icons.icDropdownArrow.path,
                      width: 12.w,
                      height: 12.w,
                      colorFilter: const ColorFilter.mode(
                        Color(0xFFB0BAC4),
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          helperText,
          style: AppTextStyle.s12w400.copyWith(color: const Color(0xFF798A9A)),
        ),
      ],
    );
  }

  Widget _buildNextButton() {
    return Obx(() => AppButton(
          onTap: vm.onSubmit,
          enabled: !vm.isLoading.value,
          width: double.infinity,
          color: const Color(0xFF5856D7),
          disabledColor: const Color(0xFF5856D7).withValues(alpha: 0.5),
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
            color: Color(0xFFE8EBEE),
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
            color: Color(0xFFE8EBEE),
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
      color: const Color(0xFFF7F8F9),
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
                  Color(0xFF161A1D),
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                vm.currentMethod.value == SignUpMethod.email ? 'Sign up with phone' : 'Sign up with email',
                textAlign: TextAlign.center,
                style: AppTextStyle.s16w500.copyWith(
                  color: const Color(0xFF161A1D),
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildBottomSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
      child: Column(
        children: [
          const Center(child: TermOfService()),
          SizedBox(height: 16.h),
          const Divider(color: Color(0xFFE8EBEE), thickness: 1),
          SizedBox(height: 16.h),
          _buildGotoSignIn(),
        ],
      ),
    );
  }

  GestureDetector _buildGotoSignIn() {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Center(
        child: AutoSizeText.rich(
          maxLines: 1,
          TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account? ',
                style: AppTextStyle.s16w500.copyWith(
                  color: const Color(0xFF161A1D),
                ),
              ),
              TextSpan(
                text: 'Log in',
                style: AppTextStyle.s16w500.copyWith(
                  color: const Color(0xFF5856D7),
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
