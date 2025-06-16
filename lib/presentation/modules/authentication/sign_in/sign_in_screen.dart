import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_bottom_section.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/phone_picker.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
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
            title: tr(LocaleKeys.authentication_signIn_title),
            subtitle: tr(LocaleKeys.authentication_signIn_subtitle),
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
          AuthBottomSection(
            isSignIn: true,
            onTapChange: () => Get.toNamed(AppRoutes.signUp),
          ),
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
                  AppColors.textGreyHighest950,
                  BlendMode.srcIn,
                ),
              )),
          SizedBox(width: 8.w),
          Obx(() => Text(
                vm.loginMethod.value == LoginMethod.email ? tr(LocaleKeys.authentication_signIn_loginWithPhone) : tr(LocaleKeys.authentication_signIn_loginWithEmail),
                textAlign: TextAlign.center,
                style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
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
            tr(LocaleKeys.authentication_signIn_or),
            style: AppTextStyles.typographyH12Medium.copyWith(color: AppColors.textGreyHigh700),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.stateBrandLowestHover100,
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
              tr(LocaleKeys.authentication_signIn_loginButton),
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
        ));
  }

  _buildInputField() {
    return Form(
      key: vm.formKey,
      child: Obx(
        () => Column(
          children: [
            vm.loginMethod.value == LoginMethod.email
                ? _buildEmailInput()
                : PhonePicker(inputController: vm.inputController, onChanged: vm.onCountryCodeChanged, countryDialCode: vm.countryDialCode.value),
            SizedBox(height: 24),
            _buildPasswordInput(),
          ],
        ),
      ),
    );
  }

  _buildEmailInput() {
    return AppTextField(
      label: tr(LocaleKeys.authentication_signIn_emailLabel),
      isRequired: true,
      controller: vm.inputController,
      hintText: tr(LocaleKeys.authentication_signIn_emailHint),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: Assets.icons.icEmailIcon.svg(
          colorFilter: ColorFilter.mode(
            AppColors.textGreyLow300,
            BlendMode.srcIn,
          ),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return tr(LocaleKeys.authentication_signIn_emailRequired);
        }
        if (!GetUtils.isEmail(value)) {
          return tr(LocaleKeys.authentication_signIn_emailInvalid);
        }
        return null;
      },
    );
  }

  _buildPasswordInput() {
    return AppTextField(
      label: tr(LocaleKeys.authentication_signIn_passwordLabel),
      isRequired: true,
      controller: vm.passwordController,
      hintText: tr(LocaleKeys.authentication_signIn_passwordHint),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: Assets.icons.icLock.svg(
          colorFilter: ColorFilter.mode(AppColors.textGreyLow300, BlendMode.srcIn),
        ),
      ),
      obscureText: true,
      // validator: (value) {
      //   if (value == null || value.trim().isEmpty) {
      //     return tr(LocaleKeys.authentication_signIn_passwordRequired);
      //   }
      //   final regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*])[^\s]{10,}$');
      //   if (!regex.hasMatch(value)) {
      //     if (value.length < 10) {
      //       return tr(LocaleKeys.authentication_signIn_passwordMinLength);
      //     }
      //     if (value.contains(' ')) {
      //       return tr(LocaleKeys.authentication_signIn_passwordNoSpaces);
      //     }
      //     if (!RegExp(r'[A-Z]').hasMatch(value)) {
      //       return tr(LocaleKeys.authentication_signIn_passwordUppercase);
      //     }
      //     if (!RegExp(r'[a-z]').hasMatch(value)) {
      //       return tr(LocaleKeys.authentication_signIn_passwordLowercase);
      //     }
      //     if (!RegExp(r'\d').hasMatch(value)) {
      //       return tr(LocaleKeys.authentication_signIn_passwordNumber);
      //     }
      //     if (!RegExp(r'[!@#$%^&*]').hasMatch(value)) {
      //       return tr(LocaleKeys.authentication_signIn_passwordSpecial);
      //     }
      //   }
      //   return null;
      // },
    );
  }
}
