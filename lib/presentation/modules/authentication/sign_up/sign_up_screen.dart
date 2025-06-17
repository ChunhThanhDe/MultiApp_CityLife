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
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

import 'sign_up_controller.dart';

class SignUpScreen extends BaseScreen<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            AuthHeader(title: tr(LocaleKeys.authentication_signUp_title), subtitle: tr(LocaleKeys.authentication_signUp_subtitle)),
            SizedBox(height: 24.h),
            _buildForm(),
            SizedBox(height: 24.h),
            _buildNextButton(),
            SizedBox(height: 16.h),
            _buildOrDivider(),
            SizedBox(height: 16.h),
            _buildToggleSignUpMethodButton(),
            SizedBox(height: 80.h),
            AuthBottomSection(isSignIn: false),
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
          SizedBox(height: 16.h),
          _buildNameInput(),
          SizedBox(height: 16.h),
          _buildPasswordInput(),
          SizedBox(height: 16.h),
          _buildBirthdayInput(),
        ],
      ),
    );
  }

  Widget _buildNameInput() {
    return AppTextField(
      label: tr(LocaleKeys.authentication_signUp_nameLabel),
      isRequired: true,
      controller: vm.nameController,
      hintText: tr(LocaleKeys.authentication_signUp_nameHint),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: Assets.icons.icPersonIcon.svg(colorFilter: ColorFilter.mode(AppColors.textGreyLow300, BlendMode.srcIn)),
      ),
      validator: _validateName,
    );
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return tr(LocaleKeys.authentication_signUp_nameRequired);
    }
    return null;
  }

  Widget _buildInput() {
    return Obx(
      () => vm.currentMethod.value == SignUpMethod.email
          ? _buildEmailInput()
          : PhonePicker(
              inputController: vm.phoneController,
              onChanged: vm.onCountryCodeChanged,
              countryDialCode: vm.countryDialCode.value,
              validator: (value) {
                if (vm.currentMethod.value == SignUpMethod.email) {
                  return null;
                }
                if (value == null || value.isEmpty) {
                  return tr(LocaleKeys.authentication_signUp_phoneRequired);
                }
                if (!GetUtils.isPhoneNumber(value)) {
                  return tr(LocaleKeys.authentication_signUp_phoneInvalid);
                }
                return null;
              },
            ),
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
        final regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*])[^\s]{10,}$');
        if (!regex.hasMatch(value)) {
          if (value.length < 10) {
            return tr(LocaleKeys.authentication_signIn_passwordMinLength);
          }
          if (value.contains(' ')) {
            return tr(LocaleKeys.authentication_signIn_passwordNoSpaces);
          }
          if (!RegExp(r'[A-Z]').hasMatch(value)) {
            return tr(LocaleKeys.authentication_signIn_passwordUppercase);
          }
          if (!RegExp(r'[a-z]').hasMatch(value)) {
            return tr(LocaleKeys.authentication_signIn_passwordLowercase);
          }
          if (!RegExp(r'\d').hasMatch(value)) {
            return tr(LocaleKeys.authentication_signIn_passwordNumber);
          }
          if (!RegExp(r'[!@#$%^&*]').hasMatch(value)) {
            return tr(LocaleKeys.authentication_signIn_passwordSpecial);
          }
        }
        return null;
      },
    );
  }

  Widget _buildEmailInput() {
    return AppTextField(
      label: tr(LocaleKeys.authentication_signIn_emailLabel),
      isRequired: true,
      controller: vm.emailController,
      hintText: tr(LocaleKeys.authentication_signIn_emailHint),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: Assets.icons.icEmailIcon.svg(colorFilter: ColorFilter.mode(AppColors.textGreyLow300, BlendMode.srcIn)),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (vm.currentMethod.value == SignUpMethod.phone) {
          return null;
        }
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
        Text(tr(LocaleKeys.authentication_signUp_birthdayQuestion), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
        Text(tr(LocaleKeys.authentication_signUp_birthdayOptional), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
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
    return _buildDropdownField(items: months, controller: vm.monthController, hint: tr(LocaleKeys.authentication_signUp_monthHint), helper: tr(LocaleKeys.authentication_signUp_monthHelper));
  }

  Widget _buildDayDropdown() {
    final days = List.generate(31, (i) => (i + 1).toString().padLeft(2, '0'));
    return _buildDropdownField(items: days, controller: vm.dayController, hint: tr(LocaleKeys.authentication_signUp_dayHint), helper: tr(LocaleKeys.authentication_signUp_dayHelper));
  }

  Widget _buildYearDropdown() {
    final currentYear = DateTime.now().year;
    final years = List.generate(100, (i) => (currentYear - i).toString());
    return _buildDropdownField(items: years, controller: vm.yearController, hint: tr(LocaleKeys.authentication_signUp_yearHint), helper: tr(LocaleKeys.authentication_signUp_yearHelper));
  }

  Widget _buildDropdownField({required List<String> items, required TextEditingController controller, required String hint, required String helper}) {
    return DropdownButtonFormField<String>(
      value: controller.text.isNotEmpty ? controller.text : null,
      style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
      items: items
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(item, style: AppTextStyles.typographyH11Regular),
            ),
          )
          .toList(),
      onChanged: (val) => controller.text = val ?? '',
      icon: Assets.icons.icDropdownArrow.svg(),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
        helperText: helper,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorner.radius6),
          borderSide: BorderSide(color: AppColors.stateGreyLowestHover100, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorner.radius6),
          borderSide: BorderSide(color: AppColors.stateGreyLowestHover100, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorner.radius6),
          borderSide: BorderSide(color: AppColors.stateGreyLowestHover100, width: 1),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      ),
    );
  }

  Widget _buildNextButton() {
    return AppButton(
      onTap: vm.onSubmit,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: _buildNextButtonContent(),
    );
  }

  Widget _buildNextButtonContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Text(tr(LocaleKeys.authentication_signUp_nextButton), style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white)),
        SvgPicture.asset(Assets.icons.icRightArrow.path, width: 12.w, height: 12.w, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
      ],
    );
  }

  Widget _buildOrDivider() {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.stateGreyLowestHover100, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(tr(LocaleKeys.authentication_signUp_or), style: AppTextStyles.typographyH12Medium.copyWith(color: AppColors.textGreyHigh700)),
        ),
        Expanded(child: Divider(color: AppColors.stateGreyLowestHover100, thickness: 1)),
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
          colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn),
        ),
        SizedBox(width: 8.w),
        Text(
          isEmail ? tr(LocaleKeys.authentication_signUp_signUpWithPhone) : tr(LocaleKeys.authentication_signUp_signUpWithEmail),
          textAlign: TextAlign.center,
          style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
        ),
      ],
    );
  }
}
