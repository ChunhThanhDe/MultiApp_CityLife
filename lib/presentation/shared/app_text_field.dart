import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sixam_mart_user/theme.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final bool isRequired;
  final TextEditingController? controller;
  final String? hint;
  final String? svgPath;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
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
            style: AppTextStyles.typographyH11Regular.copyWith(color: Figma.theme.tokenColorsTextGreyHighest950),
            validator: validator,
            decoration: InputDecoration(
              hintText: hint,
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
