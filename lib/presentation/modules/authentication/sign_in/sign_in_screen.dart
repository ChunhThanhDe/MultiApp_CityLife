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
          AuthHeader(
            title: 'Log in to your account',
            subtitle: 'Welcome back! Kindly log in with your credentials',
          ),
          SizedBox(height: 24.h),
          _buildInputField(),
          SizedBox(height: 24.h),
          _buildLoginButton(),
          SizedBox(height: 16.h),
          _buildOrDivider(),
          SizedBox(height: 16.h),
          _buildSwitchLoginMethodButton(),
          const Spacer(),
          AuthBottomSection(isSignIn: true),
        ],
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
                colorFilter: ColorFilter.mode(
                  Figma.theme.tokenColorsTextGreyHighest950,
                  BlendMode.srcIn,
                ),
              )),
          SizedBox(width: 8.w),
          Obx(() => Text(
                vm.loginMethod.value == LoginMethod.email ? 'Log in with phone' : 'Log in with email',
                textAlign: TextAlign.center,
                style: AppTextStyles.typographyH10Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
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
            style: AppTextStyles.typographyH12Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHigh700),
          ),
        ),
        Expanded(
          child: Divider(
            color: Figma.theme.tokenColorsStateBrandLowestHover100,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  _buildLoginButton() {
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
                'Log in',
                style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white),
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

  _buildInputField() {
    return Form(
      key: vm.formKey,
      child: Obx(
        () => vm.loginMethod.value == LoginMethod.email
            ? _buildEmailInput()
            : PhonePicker(inputController: vm.inputController, onChanged: vm.onCountryCodeChanged, countryDialCode: vm.countryDialCode.value),
      ),
    );
  }

  _buildEmailInput() {
    return AppTextField(
      label: 'Email address',
      isRequired: true,
      controller: vm.inputController,
      hintText: 'name@example.com',
      prefixIcon: Assets.icons.icEmailIcon.svg(),
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
}
