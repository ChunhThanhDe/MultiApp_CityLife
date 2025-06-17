import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isObscure;
  final VoidCallback onToggle;
  final String? Function(String?)? validator;

  const PasswordInput({super.key, required this.label, required this.controller, required this.isObscure, required this.onToggle, this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF161A1D)),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: isObscure,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: "Enter $label".replaceFirst("password", "password"),
            hintStyle: TextStyle(color: Color(0xFF798A9A)),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            errorStyle: TextStyle(color: Colors.red, fontSize: 12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Color(0xFFE8EBEE)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Color(0xFF5856D7)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.red),
            ),
            suffixIcon: IconButton(
              icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility, color: Color(0xFFB0BAC4), size: 24),
              onPressed: onToggle,
            ),
          ),
        ),
      ],
    );
  }
}
