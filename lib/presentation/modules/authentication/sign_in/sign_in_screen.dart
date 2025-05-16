import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';

import 'sign_in_controller.dart';

class SignInScreen extends BaseScreen<SignInController> {
  const SignInScreen({super.key});
  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          _buildHeader(),
          SizedBox(height: 24.h),
          _buildInputField(),
          SizedBox(height: 24.h),
          _buildLoginButton(),
          SizedBox(height: 16.h),
          _buildOrDivider(),
          SizedBox(height: 16.h),
          _buildSwitchLoginMethodButton(),
          const Spacer(),
          const TermOfService(),
          SizedBox(height: 16.h),
          const Divider(color: Color(0xFFE8EBEE), thickness: 1),
          SizedBox(height: 16.h),
          _buildGotoSignUp(),
          SizedBox(height: 56.h),
        ],
      ),
    );
  }

  GestureDetector _buildGotoSignUp() {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account? ',
                style: AppTextStyle.s16w500.copyWith(
                  color: const Color(0xFF161A1D),
                ),
              ),
              TextSpan(
                text: 'Create one now!',
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

  _buildSwitchLoginMethodButton() {
    return AppButton(
      onTap: vm.toggleLoginMethod,
      width: double.infinity,
      color: const Color(0xFFF7F8F9),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => SvgPicture.asset(
                vm.loginMethod.value == LoginMethod.email ? Assets.icons.icPhoneIcon.path : Assets.icons.icEmailIcon.path,
                width: 20.w,
                height: 20.w,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF161A1D),
                  BlendMode.srcIn,
                ),
              )),
          SizedBox(width: 8.w),
          Obx(() => Text(
                vm.loginMethod.value == LoginMethod.email ? 'Log in with phone' : 'Log in with email',
                textAlign: TextAlign.center,
                style: AppTextStyle.s16w500,
              )),
        ],
      ),
    );
  }

  Row _buildOrDivider() {
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

  _buildLoginButton() {
    return AppButton(
      onTap: vm.onSubmit,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text(
            'Log in',
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
    );
  }

  _buildInputField() {
    return Form(
      key: vm.formKey,
      child: Obx(
        () => vm.loginMethod.value == LoginMethod.email ? _buildEmailInput() : _buildPhoneInput(),
      ),
    );
  }

  _buildEmailInput() {
    return AppTextField(
      label: 'Email address',
      isRequired: true,
      controller: vm.inputController,
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
    );
  }

  _buildPhoneInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: 'Phone'),
              TextSpan(text: ' *', style: AppTextStyle.s14w400.copyWith(color: const Color(0xFFFF3B30))),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: const Color(0xFFE8EBEE)),
              ),
              child: CountryCodePicker(
                onChanged: (CountryCode countryCode) {
                  vm.countryDialCode.value = countryCode.dialCode ?? '+1';
                },
                textStyle: AppTextStyle.s14w400.copyWith(color: const Color(0xFF161A1D)),
                initialSelection: vm.countryDialCode.value,
                favorite: const ['+1', '+91'],
                showDropDownButton: true,
                showFlagMain: false,
                builder: (CountryCode? countryCode) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          countryCode?.dialCode ?? '+1',
                          style: AppTextStyle.s14w400.copyWith(color: const Color(0xFF161A1D)),
                        ),
                        SizedBox(width: 8.w),
                        SvgPicture.asset(
                          Assets.icons.icDropdownArrow.path,
                          width: 8.w,
                          height: 8.w,
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF161A1D),
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 75.h,
                child: AppTextField(
                  keyboardType: TextInputType.phone,
                  controller: vm.inputController,
                  hint: 'Enter phone number',
                  svgPath: Assets.icons.icPhoneIcon.path,
                  isRequired: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone number is required';
                    }
                    if (!GetUtils.isPhoneNumber(value)) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Log in to your account',
          style: AppTextStyle.s28w600,
        ),
        Text(
          'Welcome back! Kindly log in with your credentials',
          style: AppTextStyle.s16w400,
        ),
      ],
    );
  }
}
