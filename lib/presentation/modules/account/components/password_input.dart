// Password input field widget
import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isObscure;
  final VoidCallback onToggle;
  final String? Function(String?)? validator;

  const PasswordInput({
    required this.label,
    required this.controller,
    required this.isObscure,
    required this.onToggle,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF161A1D))),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE8EBEE)),
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller,
                  obscureText: isObscure,
                  validator: validator,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter $label".replaceFirst("password", "password"),
                    hintStyle: TextStyle(color: Color(0xFF798A9A)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                  color: Color(0xFFB0BAC4),
                  size: 24,
                ),
                onPressed: onToggle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
