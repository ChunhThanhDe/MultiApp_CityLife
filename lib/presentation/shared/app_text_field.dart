import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';

/// A customizable text field with optional label, prefix/suffix icons, and validation.
class AppTextField extends StatelessWidget {
  /// The label displayed above the text field.
  final String? label;

  /// Whether the field is required (shows a red asterisk if true and label is present).
  final bool isRequired;

  /// The controller for the text field.
  final TextEditingController? controller;

  /// The hint text displayed inside the text field.
  final String? hint;

  /// The SVG path for a custom icon (not used directly, use [prefixIcon] for widgets).
  final String? svgPath;

  /// The keyboard type for the text field.
  final TextInputType? keyboardType;

  /// Callback for when the text changes.
  final Function(String)? onChanged;

  /// Validator for the text field.
  final String? Function(String?)? validator;

  /// Focus node for the text field.
  final FocusNode? focusNode;

  /// Widget to display as a prefix icon.
  final Widget? prefixIcon;

  /// Widget to display as a suffix icon.
  final Widget? suffixIcon;

  /// Custom border radius for the text field. Defaults to 6.
  final double? borderRadius;

  const AppTextField({
    super.key,
    this.label,
    this.isRequired = true,
    this.controller,
    this.hint,
    this.svgPath,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final double effectiveRadius = borderRadius ?? 6;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Row(
            children: [
              Text(
                label!,
                style: AppTextStyle.s14w400.copyWith(
                  color: const Color(0xFF161A1D),
                ),
              ),
              if (isRequired) const SizedBox(width: 4),
              if (isRequired)
                const Text(
                  '*',
                  style: TextStyle(
                    color: Color(0xFFFF3B30),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
        ],
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(effectiveRadius),
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
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
                borderSide: const BorderSide(
                  color: Color(0xFFE8EBEE),
                  width: 1,
                ),
              ),
              errorStyle: AppTextStyle.s12w400.copyWith(
                color: const Color(0xFFFF3B30),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
                borderSide: const BorderSide(
                  color: Color(0xFFFF3B30),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
                borderSide: const BorderSide(
                  color: Color(0xFFE8EBEE),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
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
