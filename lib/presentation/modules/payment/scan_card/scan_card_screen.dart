import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'scan_card_controller.dart';

class ScanCardScreen extends BaseScreen<ScanCardController> {
  const ScanCardScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(
      title: "Scan your card",
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        _ScanOverlay(),

        Center(
          child: Obx(() => controller.isScanning.value
              ? const CircularProgressIndicator()
              : ElevatedButton.icon(
                  onPressed: controller.scanCard,
                  icon: const Icon(Icons.camera_alt, color: Colors.white),
                  label: const Text("Scan card", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5856D7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    elevation: 2,
                  ),
                )),
        ),

        // Bottom panel (hướng dẫn + kết quả quét)
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 146,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    child: Column(
                      children: [
                        const Text(
                          "Scan your card",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xFF161A1D),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Please make sure the card number is visible.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF4A5763),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Obx(() {
                          if (controller.cardNumber.value.isEmpty) {
                            if (controller.scanError.value.isNotEmpty) {
                              return Text(
                                controller.scanError.value,
                                style: const TextStyle(color: Colors.red),
                              );
                            }
                            return const SizedBox();
                          }
                          return Column(
                            children: [
                              Text(
                                "Card: ${controller.cardNumber.value}",
                                style: const TextStyle(fontWeight: FontWeight.w500),
                              ),
                              if (controller.expDate.value.isNotEmpty)
                                Text(
                                  "Exp: ${controller.expDate.value}",
                                  style: const TextStyle(fontWeight: FontWeight.w500),
                                ),
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ScanOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scanWidth = 278.0;
    final scanHeight = 413.0;
    final centerY = size.height / 2 - scanHeight / 2;
    final centerX = size.width / 2 - scanWidth / 2;

    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: const Color(0xFF101214).withOpacity(0.7),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: const SizedBox.expand(),
            ),
          ),
        ),
        Positioned(
          left: centerX,
          top: centerY,
          width: scanWidth,
          height: scanHeight,
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
