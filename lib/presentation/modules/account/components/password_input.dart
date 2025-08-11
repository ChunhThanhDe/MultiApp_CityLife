import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({required this.label, required this.controller, required this.isObscure, required this.onToggle, super.key, this.validator});
  final String label;
  final TextEditingController controller;
  final bool isObscure;
  final VoidCallback onToggle;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: isObscure,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: 'Enter $label'.replaceFirst('password', 'password'),
            hintStyle: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            errorStyle: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.stateDangerDefault500),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: AppColors.stateGreyLowestHover100),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: AppColors.stateBrandDefault500),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: AppColors.stateDangerDefault500),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: AppColors.stateDangerDefault500),
            ),
            suffixIcon: IconButton(
              icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility, color: AppColors.textGreyLow300, size: 24),
              onPressed: onToggle,
            ),
          ),
        ),
      ],
    );
  }
}
