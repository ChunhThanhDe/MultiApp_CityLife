import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_bottom_section.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/theme.dart';

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
          AuthBottomSection(isSignIn: false),
        ],
      ),
    );
  }

  AppButton _buildNextButton() {
    return AppButton(
      onTap: () {},
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text(
            'Next',
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
    );
  }

  _buildResendVerificationLink() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Didn’t receive the email?  ',
            style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
          ),
          TextSpan(
            text: 'Click to resend',
            style: AppTextStyles.typographyH11SemiBold.copyWith(color: Figma.theme.tokenColorsTextBrandDefault500),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
