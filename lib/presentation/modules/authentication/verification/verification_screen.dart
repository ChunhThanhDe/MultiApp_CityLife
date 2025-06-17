import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/page_param/verification_page_param.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/accept_tos.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';

import 'verification_controller.dart';

class VerificationScreen extends BaseScreen<VerificationController> {
  const VerificationScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          AuthHeader(
            title: vm.param.method == VerificationMethod.email ? tr(LocaleKeys.authentication_verification_checkEmailTitle) : tr(LocaleKeys.authentication_verification_verifyPhoneTitle),
            subtitle: vm.param.method == VerificationMethod.email
                ? tr(LocaleKeys.authentication_verification_emailSubtitle)
                : tr(LocaleKeys.authentication_verification_phoneSubtitle, namedArgs: {'verificationId': vm.param.verificationId}),
          ),
          SizedBox(height: 24.h),
          _buildInput(context),
          _buildExpiredText(),
          SizedBox(height: 24.h),
          AppButton(
            onTap: () => Get.to(() => AcceptTos()),
            width: double.infinity,
            color: AppColors.stateBrandDefault500,
            disabledColor: AppColors.stateBrandDefault500.withValues(alpha: 0.5),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            child: Text(tr(LocaleKeys.authentication_verification_verifyButton), style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white)),
          ),
          SizedBox(height: 24.h),
          AppButton(
            onTap: Get.back,
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.icBackArrow.svg(width: 16.w, height: 16.w, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
                SizedBox(width: 8.w),
                Text(
                  vm.param.type == VerificationType.signIn ? tr(LocaleKeys.authentication_verification_backToLogin) : tr(LocaleKeys.authentication_verification_backToSignUp),
                  style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          Spacer(),
          Center(child: const TermOfService()),
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
        child: AutoSizeText.rich(
          maxLines: 1,
          TextSpan(
            children: [
              TextSpan(
                text: tr(LocaleKeys.authentication_verification_dontHaveAccount),
                style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
              ),
              TextSpan(
                text: tr(LocaleKeys.authentication_verification_createAccount),
                style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBrandDefault500),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Text _buildExpiredText() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: tr(LocaleKeys.authentication_verification_codeExpires),
            style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
          ),
          TextSpan(
            text: tr(LocaleKeys.authentication_verification_thirtyMins),
            style: AppTextStyles.typographyH11SemiBold.copyWith(color: AppColors.textGreyHighest950),
          ),
        ],
      ),
    );
  }

  PinCodeTextField _buildInput(BuildContext context) {
    return PinCodeTextField(
      length: 5,
      autoFocus: false,
      appContext: context,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: 56,
        fieldWidth: 56,
        borderWidth: 1,
        borderRadius: BorderRadius.circular(6),
        selectedColor: AppColors.textBrandDefault500,
        selectedFillColor: AppColors.stateBrandLowestHover100,
        inactiveFillColor: Colors.white,
        inactiveColor: AppColors.stateBrandDefault500,
        activeColor: AppColors.stateBrandDefault500,
        activeFillColor: AppColors.stateBrandLowestHover100,
        errorBorderColor: AppColors.stateDangerDefault500,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      onChanged: vm.updateVerificationCode,
      beforeTextPaste: (text) => true,
      textStyle: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
    );
  }
}
