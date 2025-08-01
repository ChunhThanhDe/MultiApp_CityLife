import 'dart:io';

import 'package:flutter/material.dart';

void showProductImageDialog(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (_) => Dialog(
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Add Product image',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  borderRadius: BorderRadius.circular(99),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.close, size: 24, color: Color(0xFF161A1D)),
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
            const Align(
              alignment: Alignment.centerRight,
              child: Text('Date image', style: TextStyle(color: Color(0xFFFF3B30), fontSize: 14)),
            ),
          ],
        ),
      ),
    ),
  );
}
