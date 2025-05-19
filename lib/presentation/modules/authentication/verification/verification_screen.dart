import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/page_param/verification_page_param.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/theme.dart';

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
            title: vm.param.method == VerificationMethod.email ? 'Check your email' : 'Verify your phone number',
            subtitle: vm.param.method == VerificationMethod.email
                ? 'Please enter the verification code you received in your email to proceed.'
                : 'Please enter the 5-digit code we sent to ${vm.param.verificationId}',
          ),
          SizedBox(height: 24.h),
          _buildInput(context),
          _buildExpiredText(),
          SizedBox(height: 24.h),
          AppButton(
            onTap: () {},
            width: double.infinity,
            color: Figma.theme.tokenColorsStateBrandDefault500,
            disabledColor: Figma.theme.tokenColorsStateBrandDefault500.withValues(alpha: 0.5),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            child: Text('Verify code', style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white)),
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
                Text(vm.param.type == VerificationType.signIn ? 'Back to log in' : 'Back to sign up', style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.black)),
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
                text: 'Don\'t have an account? ',
                style: AppTextStyles.typographyH10Medium.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
              ),
              TextSpan(
                text: 'Create one now!',
                style: AppTextStyles.typographyH10Medium.copyWith(color: Figma.theme.tokenColorsTextBrandDefault500),
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
            text: 'This code expires in ',
            style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHigh700),
          ),
          TextSpan(
            text: '30 mins.',
            style: AppTextStyles.typographyH11SemiBold.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
          ),
        ],
      ),
    );
  }

  _buildInput(BuildContext context) {
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
        selectedColor: Figma.theme.tokenColorsTextBrandDefault500,
        selectedFillColor: Figma.theme.tokenColorsStateBrandLowestHover100,
        inactiveFillColor: Colors.white,
        inactiveColor: Figma.theme.tokenColorsStateBrandDefault500,
        activeColor: Figma.theme.tokenColorsStateBrandDefault500,
        activeFillColor: Figma.theme.tokenColorsStateBrandLowestHover100,
        errorBorderColor: Figma.theme.tokenColorsStateDangerDefault500,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      onChanged: vm.updateVerificationCode,
      beforeTextPaste: (text) => true,
      textStyle: AppTextStyles.typographyH11Regular.copyWith(
        color: Figma.theme.tokenColorsTextGreyHighest950,
      ),
    );
  }
}
