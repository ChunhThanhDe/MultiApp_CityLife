import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

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
          style: TextStyle(fontSize: isLarge ? 16 : 14, color: AppColors.textGreyHighest950, fontWeight: isBold ? FontWeight.w500 : FontWeight.w400),
        ),
        if (isRequired)
          Text(
            '*',
            style: TextStyle(color: AppColors.stateDangerDefault500, fontSize: isLarge ? 18 : 14),
          ),
        if (optional)
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              '(optional)',
              style: TextStyle(fontSize: isLarge ? 16 : 14, color: AppColors.textGreyHigh700, fontWeight: FontWeight.w400),
            ),
          ),
      ],
    );
  }
}
