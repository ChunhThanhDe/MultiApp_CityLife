import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final bool isRequired;
  final TextEditingController controller;
  final String hint;
  final String svgPath;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  const AppTextField({
    super.key,
    this.label,
    this.isRequired = true,
    required this.controller,
    required this.hint,
    required this.svgPath,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            label != null
                ? Text(
                    label!,
                    style: AppTextStyle.s14w400.copyWith(
                      color: const Color(0xFF161A1D),
                    ),
                  )
                : const SizedBox.shrink(),
            if (isRequired && label != null) ...[
              const SizedBox(width: 4),
              Text(
                '*',
                style: AppTextStyle.s14w400.copyWith(
                  color: const Color(0xFFFF3B30),
                ),
              ),
            ],
          ],
        ),
        label != null ? const SizedBox(height: 8) : const SizedBox.shrink(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            focusNode: focusNode,
            onChanged: onChanged,
            style: AppTextStyle.s14w400.copyWith(
              color: const Color(0xFF161A1D),
            ),
            validator: validator,
            decoration: InputDecoration(
              hintText: hint,
              helperText: '',
              hintStyle: AppTextStyle.s14w400.copyWith(
                color: const Color(0xFF798A9A),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(svgPath, colorFilter: const ColorFilter.mode(Color(0xFF798A9A), BlendMode.srcIn)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  color: Color(0xFFE8EBEE),
                  width: 1,
                ),
              ),
              errorStyle: AppTextStyle.s12w400.copyWith(
                color: const Color(0xFFFF3B30),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  color: Color(0xFFFF3B30),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  color: Color(0xFFE8EBEE),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  color: Color(0xFF5856D7),
                  width: 1,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
