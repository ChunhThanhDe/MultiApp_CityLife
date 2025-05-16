import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/components/term_of_service.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';

import 'sign_up_controller.dart';

class AcceptTos extends BaseScreen<SignUpController> {
  const AcceptTos({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 16),
          AuthHeader(
            title: 'Accept SpeedEats Terms & Review Privacy Notice',
            subtitle: 'By selecting "I Agree" below, I have reviewed and agree to the Terms of Use and acknowledge the Privacy Notice. I am at least 18 years of age.',
            titleMaxLines: 2,
            subtitleMaxLines: 3,
          ),
          SizedBox(height: 24),
          _buildNextButton(),
          SizedBox(height: 24),
          _buildResendVerificationLink(),
          Spacer(),
          _buildBottomSection(),
        ],
      ),
    );
  }

  Widget _buildBottomSection() {
    return Column(
      children: [
        const Center(child: TermOfService()),
        SizedBox(height: 16.h),
        const Divider(color: Color(0xFFE8EBEE), thickness: 1),
        SizedBox(height: 16.h),
        _buildGotoSignIn(),
      ],
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

  AppButton _buildNextButton() {
    return AppButton(
      onTap: () {},
      width: double.infinity,
      color: const Color(0xFF5856D7),
      disabledColor: const Color(0xFF5856D7).withValues(alpha: 0.5),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
    );
  }

  _buildResendVerificationLink() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Didn’t receive the email?  ',
            style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHighest950),
          ),
          TextSpan(
            text: 'Click to resend',
            style: AppTextStyle.s14w600.copyWith(color: AppColors.textBrandDefault500),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
