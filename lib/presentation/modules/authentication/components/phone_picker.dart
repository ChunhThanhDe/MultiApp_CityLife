import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

class PhonePicker extends StatelessWidget {
  const PhonePicker({
    super.key,
    required this.inputController,
    required this.onChanged,
    required this.countryDialCode,
    this.errorText,
    this.validator,
  });

  final TextEditingController inputController;
  final Function(CountryCode) onChanged;
  final String countryDialCode;
  final String? errorText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: tr(LocaleKeys.authentication_phonePicker_phoneLabel), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
              TextSpan(text: ' *', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textDangerDefault500)),
            ],
          ),
        ),
        const SizedBox(height: 2),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 49,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xFFE8EBEE)),
                ),
                child: CountryCodePicker(
                  onChanged: (CountryCode countryCode) {
                    onChanged(countryCode);
                  },
                  textStyle: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
                  initialSelection: countryDialCode,
                  favorite: ['+1', '+91'],
                  showDropDownButton: true,
                  showFlagMain: false,
                  builder: (CountryCode? countryCode) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            countryCode?.dialCode ?? '+1',
                            style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
                          ),
                          SizedBox(width: 8.w),
                          SvgPicture.asset(
                            Assets.icons.icDropdownArrow.path,
                            width: 8.w,
                            height: 8.w,
                            colorFilter: ColorFilter.mode(
                              AppColors.textGreyDefault500,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  // height: 75.h,
                  child: AppTextField(
                    keyboardType: TextInputType.phone,
                    controller: inputController,
                    hintText: tr(LocaleKeys.authentication_phonePicker_phoneHint),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Assets.icons.icPhoneIcon.svg(
                        colorFilter: ColorFilter.mode(AppColors.textGreyLow300, BlendMode.srcIn),
                      ),
                    ),
                    isRequired: true,
                    validator: validator ??
                        (value) {
                          if (value == null || value.isEmpty) {
                            return tr(LocaleKeys.authentication_phonePicker_phoneRequired);
                          }
                          if (!GetUtils.isPhoneNumber(value)) {
                            return tr(LocaleKeys.authentication_phonePicker_phoneInvalid);
                          }
                          return null;
                        },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
