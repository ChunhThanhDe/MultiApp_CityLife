import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/page_param/verification_page_param.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';

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
            title: vm.param.type == VerificationType.email ? 'Check your email' : 'Verify your phone number',
            subtitle: vm.param.type == VerificationType.email
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
            color: AppColors.brand500,
            disabledColor: AppColors.brand500.withValues(alpha: 0.5),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            child: Text('Verify code', style: AppTextStyle.s16w500.copyWith(color: Colors.white)),
          ),
          SizedBox(height: 24.h),
          AppButton(
            onTap: () {},
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.icBackArrow.svg(width: 16.w, height: 16.w, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
                SizedBox(width: 8.w),
                Text('Back to log in', style: AppTextStyle.s16w500.copyWith(color: Colors.black)),
              ],
            ),
          ),
          Spacer(),
          TermOfService(),
          _buildGotoSignUp(),
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

  Text _buildExpiredText() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'This code expires in ',
            style: AppTextStyle.s14w400.copyWith(color: const Color(0xFF4A5763)),
          ),
          TextSpan(
            text: '30 mins.',
            style: AppTextStyle.s14w600.copyWith(color: const Color(0xFF161A1D)),
          ),
        ],
      ),
    );
  }

  _buildInput(BuildContext context) {
    return PinCodeTextField(
      length: 5,
      appContext: context,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: 56,
        fieldWidth: 56,
        borderWidth: 1,
        borderRadius: BorderRadius.circular(6),
        selectedColor: const Color(0xFF5856D7),
        selectedFillColor: const Color(0xFFEFEFFB),
        inactiveFillColor: Colors.white,
        inactiveColor: const Color(0xFFE8EBEE),
        activeColor: const Color(0xFFBEBDEF),
        activeFillColor: const Color(0xFFEFEFFB),
        errorBorderColor: const Color(0xFFFF3B30),
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      onChanged: vm.updateVerificationCode,
      beforeTextPaste: (text) => true,
      textStyle: AppTextStyle.s16w500.copyWith(
        color: const Color(0xFF161A1D),
      ),
    );
  }
}
