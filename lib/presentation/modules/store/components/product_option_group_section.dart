import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class OptionGroupSection extends StatelessWidget {
  const OptionGroupSection({
    required this.title,
    required this.options,
    required this.selectedValue,
    required this.onSelected,
    super.key,
    this.requiredField = false,
    this.singleChoice = true,
    this.min = 0,
    this.max = 0,
  });
  final String title;
  final bool requiredField;
  final bool singleChoice;
  final int min;
  final int max;
  final List<OptionItem> options;
  final dynamic selectedValue; // String for single choice, List<String> for multi choice
  final Function(String, {bool singleChoice, int min, int max}) onSelected;

  bool _isOptionChecked(String value) {
    if (singleChoice) {
      return selectedValue == value;
    } else {
      return selectedValue is List<String> && (selectedValue as List<String>).contains(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: Color(0xFFB3C6FF),
        //   width: 1,
        // ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Group label
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            color: AppColors.stateGreyLowest50,
            child: Row(
              children: [
                Text(title, style: AppTextStyles.typographyH10Medium.tint(AppColors.textGreyHighest950)),
                if (requiredField) Text('  ${tr(LocaleKeys.store_required)}', style: AppTextStyles.typographyH11Regular.tint(AppColors.stateBrandDefault500)),
                const Spacer(),
                Text(tr(LocaleKeys.store_required), style: AppTextStyles.typographyH11Regular.tint(AppColors.textGreyHigh700)),
              ],
            ),
          ),
          const SizedBox(height: 6),
          // Danh sách options
          ...options.asMap().entries.map((entry) {
            final opt = entry.value;
            final isLast = entry.key == options.length - 1;
            return Column(
              children: [
                _OptionItemCheckboxTile(
                  label: opt.label,
                  subLabel: opt.subLabel,
                  checked: _isOptionChecked(opt.value),
                  onTap: () => onSelected(opt.value, singleChoice: singleChoice, min: min, max: max),
                ),
                if (!isLast) const SizedBox(height: 6),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class OptionItem {
  OptionItem({required this.label, required this.value, this.subLabel});
  final String label;
  final String value;
  final String? subLabel;
}

class _OptionItemCheckboxTile extends StatelessWidget {
  const _OptionItemCheckboxTile({required this.label, required this.checked, required this.onTap, this.subLabel});
  final String label;
  final String? subLabel;
  final bool checked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        height: 36,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Expanded(child: Text(label, style: AppTextStyles.typographyH11Regular.tint(AppColors.textGreyHighest950))),
            if (subLabel != null && subLabel!.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(right: 12.0.w),
                child: Text(subLabel!, style: AppTextStyles.typographyH11Regular.tint(AppColors.textGreyHigh700)),
              ),
            _CustomCheckbox(checked: checked),
          ],
        ),
      ),
    );
  }
}

class _CustomCheckbox extends StatelessWidget {
  const _CustomCheckbox({required this.checked});
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        border: Border.all(color: checked ? AppColors.stateBrandDefault500 : AppColors.stateGreyDefault500, width: 1.5),
        borderRadius: BorderRadius.circular(4),
        color: checked ? AppColors.stateBrandDefault500 : Colors.transparent,
      ),
      child: checked ? const Icon(Icons.check, color: Colors.white, size: 18) : null,
    );
  }
}
