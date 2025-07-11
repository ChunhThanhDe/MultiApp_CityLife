import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/components/auth_header.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';

import 'sign_up_controller.dart';

class AcceptTos extends BaseScreen<SignUpController> {
  const AcceptTos({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          AuthHeader(title: tr(LocaleKeys.authentication_acceptTos_title), subtitle: tr(LocaleKeys.authentication_acceptTos_subtitle)),
          SizedBox(height: 32.h),
          AppButton(
            onTap: () => Get.offAllNamed(AppRoutes.root),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Text(tr(LocaleKeys.authentication_acceptTos_nextButton), style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white)),
                SvgPicture.asset(Assets.icons.icRightArrow.path, width: 12.w, height: 12.w, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(tr(LocaleKeys.authentication_acceptTos_didntReceiveEmail), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
              GestureDetector(
                onTap: () {},
                child: Text(tr(LocaleKeys.authentication_acceptTos_clickResend), style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBrandDefault500)),
              ),
            ],
          ),
          SizedBox(height: 56.h),
        ],
      ),
    );
  }
}
