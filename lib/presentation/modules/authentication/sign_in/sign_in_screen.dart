import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/auth_text_field.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';

import 'sign_in_controller.dart';

class SignInScreen extends BaseScreen<SignInController> {
  const SignInScreen({super.key});
  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          _buildHeader(),
          const SizedBox(height: 24),
          _buildInputField(),
          const SizedBox(height: 24),
          _buildLoginButton(),
          const SizedBox(height: 16),
          _buildOrDivider(),
          const SizedBox(height: 16),
          _buildSwitchLoginMethodButton(),
          const Spacer(),
          const TermOfService(),
          const SizedBox(height: 16),
          const Divider(color: Color(0xFFE8EBEE), thickness: 1),
          const SizedBox(height: 16),
          _buildGotoSignUp(),
          const SizedBox(height: 56),
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
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F8F9),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            SvgPicture.asset(
              vm.loginMethod.value == LoginMethod.email ? Assets.icons.icPhoneIcon.path : Assets.icons.icEmailIcon.path,
              width: 20,
              height: 20,
              colorFilter: const ColorFilter.mode(
                Color(0xFF161A1D),
                BlendMode.srcIn,
              ),
            ),
            Obx(() => Text(
                  vm.loginMethod.value == LoginMethod.email ? 'Log in with phone' : 'Log in with email',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s16w500,
                )),
          ],
        ),
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
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: const Color(0xFF5856D7),
          borderRadius: BorderRadius.circular(32),
        ),
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
              width: 12,
              height: 12,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
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
    return AuthTextField(
      label: 'Email address',
      isRequired: true,
      controller: vm.inputController,
      hint: 'name@example.com',
      svgPath: Assets.icons.icEmailIcon.path,
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
                padding: EdgeInsets.zero,
                showFlagMain: false,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: AuthTextField(
                controller: vm.inputController,
                hint: 'Enter phone number',
                svgPath: Assets.icons.icPhoneIcon.path,
                isRequired: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone number is required';
                  }
                  if (GetUtils.isPhoneNumber(value)) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
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

class AppTextStyle {
  static const TextStyle s28w600 = TextStyle(fontSize: 28, fontWeight: FontWeight.w600);
  static const TextStyle s16w400 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
  static const TextStyle s16w500 = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static const TextStyle s14w400 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static const TextStyle s14w500 = TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  static const TextStyle s12w400 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400);
  static const TextStyle s12w500 = TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
  static const TextStyle s10w400 = TextStyle(fontSize: 10, fontWeight: FontWeight.w400);

  static const TextStyle s16w600 = TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
}
