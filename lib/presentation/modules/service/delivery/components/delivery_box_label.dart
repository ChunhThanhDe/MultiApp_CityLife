import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {

  const LabelWidget(this.text, {super.key, this.isRequired = false, this.optional = false, this.isBold = false, this.isLarge = false});
  final String text;
  final bool isRequired;
  final bool optional;
  final bool isBold;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: isLarge ? 16 : 14, color: const Color(0xFF161A1D), fontWeight: isBold ? FontWeight.w500 : FontWeight.w400),
        ),
        if (isRequired)
          Text(
            '*',
            style: TextStyle(color: const Color(0xFFFF3B30), fontSize: isLarge ? 18 : 14),
          ),
        if (optional)
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              '(optional)',
              style: TextStyle(fontSize: isLarge ? 16 : 14, color: const Color(0xFF4A4C4F), fontWeight: FontWeight.w400),
            ),
          ),
      ],
    );
  }
}
