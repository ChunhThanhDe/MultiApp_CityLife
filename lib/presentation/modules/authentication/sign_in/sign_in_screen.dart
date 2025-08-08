import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_bottom_section.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/phone_picker.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_controller.dart';

class SignInScreen extends BaseScreen<SignInController> {
  const SignInScreen({super.key});

  @override
  bool get setBottomSafeArea => false;
  @override
  Widget buildScreen(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  AuthHeader(title: tr(LocaleKeys.authentication_signIn_title), subtitle: tr(LocaleKeys.authentication_signIn_subtitle)),
                  SizedBox(height: 24.h),
                  _buildInputField(),
                  SizedBox(height: 24.h),
                  _buildLoginButton(),
                  SizedBox(height: 16.h),
                  _buildOrDivider(),
                  SizedBox(height: 16.h),
                  _buildSwitchLoginMethodButton(),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AuthBottomSection(isSignIn: true, onTapChange: () => Get.toNamed(AppRoutes.signUp)),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  AppButton _buildSwitchLoginMethodButton() {
    return AppButton(
      onTap: vm.toggleLoginMethod,
      width: double.infinity,
      color: AppColors.backgroundSurfaceTertiaryGrey50,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => SvgPicture.asset(
              vm.loginMethod.value == LoginMethod.email ? Assets.icons.icPhoneIcon.path : Assets.icons.icEmailIcon.path,
              width: 20.w,
              height: 20.w,
              colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 8.w),
          Obx(
            () => Text(
              vm.loginMethod.value == LoginMethod.email ? tr(LocaleKeys.authentication_signIn_loginWithPhone) : tr(LocaleKeys.authentication_signIn_loginWithEmail),
              textAlign: TextAlign.center,
              style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildOrDivider() {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.backgroundSurfaceTertiaryGrey50, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(tr(LocaleKeys.authentication_signIn_or), style: AppTextStyles.typographyH12Medium.copyWith(color: AppColors.textGreyHigh700)),
        ),
        Expanded(child: Divider(color: AppColors.stateBrandLowestHover100, thickness: 1)),
      ],
    );
  }

  AppButton _buildLoginButton() {
    return AppButton(
      onTap: vm.onSubmit,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text(tr(LocaleKeys.authentication_signIn_loginButton), style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white)),
          SvgPicture.asset(Assets.icons.icRightArrow.path, width: 12.w, height: 12.w, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
        ],
      ),
    );
  }

  Form _buildInputField() {
    return Form(
      key: vm.formKey,
      child: Obx(
        () => Column(
          children: [
            vm.loginMethod.value == LoginMethod.email
                ? _buildEmailInput()
                : PhonePicker(inputController: vm.inputController, onChanged: vm.onCountryCodeChanged, countryDialCode: vm.countryDialCode.value),
            const SizedBox(height: 24),
            _buildPasswordInput(),
          ],
        ),
      ),
    );
  }

  AppTextField _buildEmailInput() {
    return AppTextField(
      label: tr(LocaleKeys.authentication_signIn_emailLabel),
      isRequired: true,
      controller: vm.inputController,
      hintText: tr(LocaleKeys.authentication_signIn_emailHint),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: Assets.icons.icEmailIcon.svg(colorFilter: ColorFilter.mode(AppColors.textGreyLow300, BlendMode.srcIn)),
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

  AppTextField _buildPasswordInput() {
    return AppTextField(
      label: tr(LocaleKeys.authentication_signIn_passwordLabel),
      isRequired: true,
      controller: vm.passwordController,
      hintText: tr(LocaleKeys.authentication_signIn_passwordHint),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: Assets.icons.icLock.svg(colorFilter: ColorFilter.mode(AppColors.textGreyLow300, BlendMode.srcIn)),
      ),
      obscureText: true,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return tr(LocaleKeys.authentication_signIn_passwordRequired);
        }
        if (value.length < 6) {
          return tr(LocaleKeys.authentication_signIn_passwordMinLength);
        }
        return null;
      },
    );
  }
}
