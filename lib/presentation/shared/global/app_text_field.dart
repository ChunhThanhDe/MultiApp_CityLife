import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

/// A customizable text field with optional label, prefix/suffix icons, and validation.
class AppTextField extends StatelessWidget {

  const AppTextField({
    super.key,
    this.label,
    this.isRequired = true,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius,
    this.textStyle,
    this.hintStyle,
    this.labelStyle,
    this.obscureText = false,
    this.contentPadding,
    this.helperText,
    this.autofocus = false,
  });
  /// The label displayed above the text field.
  final String? label;

  /// Whether the field is required (shows a red asterisk if true and label is present).
  final bool isRequired;

  /// The controller for the text field.
  final TextEditingController? controller;

  /// The hint text displayed inside the text field.
  final String? hintText;

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

  /// Custom style for the text input.
  final TextStyle? textStyle;

  /// Custom style for the hint text.
  final TextStyle? hintStyle;

  /// Custom style for the label text.
  final TextStyle? labelStyle;

  /// Whether to obscure the text (for password fields)
  final bool obscureText;

  /// Custom padding for the content of the text field.
  final EdgeInsets? contentPadding;

  /// Custom helper text for the text field.
  final String? helperText;

  /// Whether to automatically focus the text field when the widget is built.
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final double effectiveRadius = borderRadius ?? AppCorner.radius6;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            label != null ? Text(label!, style: labelStyle ?? AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)) : const SizedBox.shrink(),
            if (isRequired && label != null) ...[const SizedBox(width: 4), Text('*', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textDangerDefault500))],
            label != null ? const SizedBox(height: 8) : const SizedBox.shrink(),
          ],
        ),
        Container(
          decoration: BoxDecoration(color: AppColors.backgroundSurfacePrimaryWhite, borderRadius: BorderRadius.circular(effectiveRadius)),
          child: TextFormField(
            autofocus: autofocus,
            controller: controller,
            keyboardType: keyboardType,
            focusNode: focusNode,
            onChanged: onChanged,
            style: textStyle ?? AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
            validator: validator,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              helperText: helperText,
              hintStyle: hintStyle ?? AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
                borderSide: BorderSide(color: AppColors.stateGreyLowestHover100, width: 1),
              ),
              errorStyle: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textDangerDefault500),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
                borderSide: BorderSide(color: AppColors.stateDangerDefault500, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
                borderSide: BorderSide(color: AppColors.stateGreyLowestHover100, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(effectiveRadius),
                borderSide: BorderSide(color: AppColors.stateBrandDefault500, width: 1),
              ),
              contentPadding: contentPadding ?? const EdgeInsets.all(12),
            ),
          ),
        ),
      ],
    );
  }
}
