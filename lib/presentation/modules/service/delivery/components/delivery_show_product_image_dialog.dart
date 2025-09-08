import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

void showProductImageDialog(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (_) => Dialog(
      backgroundColor: AppColors.stateBaseWhite,
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close
            Row(
              children: [
                Expanded(
                  child: Text(
                    tr(LocaleKeys.service_addProductImage),
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.textBaseGrey950),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  borderRadius: BorderRadius.circular(99),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 4.0.h),
                    child: Icon(Icons.close, size: 24, color: AppColors.textBaseGrey950),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(File(imagePath), width: 240, height: 320, fit: BoxFit.cover),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: Text(tr(LocaleKeys.service_dateImage), style: TextStyle(color: AppColors.stateDangerDefault500, fontSize: 14)),
            ),
          ],
        ),
      ),
    ),
  );
}
