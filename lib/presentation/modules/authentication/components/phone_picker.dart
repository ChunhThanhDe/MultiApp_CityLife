import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';
import 'package:sixam_mart_user/theme.dart';

class PhonePicker extends StatelessWidget {
  const PhonePicker({
    super.key,
    required this.inputController,
    required this.onChanged,
    required this.countryDialCode,
  });

  final TextEditingController inputController;
  final Function(CountryCode) onChanged;
  final String countryDialCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Phone', style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950)),
              TextSpan(text: ' *', style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextDangerDefault500)),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: const Color(0xFFE8EBEE)),
              ),
              child: CountryCodePicker(
                onChanged: (CountryCode countryCode) {
                  onChanged(countryCode);
                },
                textStyle: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
                initialSelection: countryDialCode,
                favorite: const ['+1', '+91'],
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
                          style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyDefault500),
                        ),
                        SizedBox(width: 8.w),
                        SvgPicture.asset(
                          Assets.icons.icDropdownArrow.path,
                          width: 8.w,
                          height: 8.w,
                          colorFilter: ColorFilter.mode(
                            Figma.theme.tokenColorsTextGreyDefault500,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 75.h,
                child: AppTextField(
                  keyboardType: TextInputType.phone,
                  controller: inputController,
                  hintText: 'Enter phone number',
                  svgPath: Assets.icons.icPhoneIcon.path,
                  isRequired: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone number is required';
                    }
                    if (!GetUtils.isPhoneNumber(value)) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
