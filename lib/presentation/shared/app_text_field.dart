import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sixam_mart_user/theme.dart';

/// A customizable text field with optional label, prefix/suffix icons, and validation.
class AppTextField extends StatelessWidget {
  /// The label displayed above the text field.
  final String? label;

  /// Whether the field is required (shows a red asterisk if true and label is present).
  final bool isRequired;

  /// The controller for the text field.
  final TextEditingController? controller;

  /// The hint text displayed inside the text field.
  final String? hintText;

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
    this.hintText,
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
        Row(
          children: [
            label != null
                ? Text(
                    label!,
                    style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
                  )
                : const SizedBox.shrink(),
            if (isRequired && label != null) ...[
              const SizedBox(width: 4),
              Text(
                '*',
                style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextDangerDefault500),
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
            style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              helperText: '',
              hintStyle: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyDefault500),
              suffixIcon: svgPath != null
                  ? Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(svgPath!, colorFilter: const ColorFilter.mode(Color(0xFF798A9A), BlendMode.srcIn)),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: Figma.theme.tokenColorsStateGreyLowestHover100,
                  width: 1,
                ),
              ),
              errorStyle: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextDangerDefault500),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Figma.corner.radius6),
                borderSide: BorderSide(
                  color: Figma.theme.tokenColorsStateDangerDefault500,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Figma.corner.radius6),
                borderSide: BorderSide(
                  color: Figma.theme.tokenColorsStateGreyLowestHover100,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Figma.corner.radius6),
                borderSide: BorderSide(
                  color: Figma.theme.tokenColorsStateBrandDefault500,
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
