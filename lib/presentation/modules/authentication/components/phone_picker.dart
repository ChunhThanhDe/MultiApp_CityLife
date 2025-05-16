import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';

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
              const TextSpan(text: 'Phone'),
              TextSpan(text: ' *', style: AppTextStyle.s14w400.copyWith(color: const Color(0xFFFF3B30))),
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
                textStyle: AppTextStyle.s14w400.copyWith(color: const Color(0xFF161A1D)),
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
                          style: AppTextStyle.s14w400.copyWith(color: const Color(0xFF161A1D)),
                        ),
                        SizedBox(width: 8.w),
                        SvgPicture.asset(
                          Assets.icons.icDropdownArrow.path,
                          width: 8.w,
                          height: 8.w,
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF161A1D),
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
                  hint: 'Enter phone number',
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
