import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_card_scanner/ml_card_scanner.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'scan_card_controller.dart';

class ScanCardScreen extends BaseScreen<ScanCardController> {
  const ScanCardScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Scan your card');
  }

  @override
  Widget buildScreen(BuildContext context) {
    final controller = Get.find<ScanCardController>();
    final size = MediaQuery.of(context).size;

    const scanWidth = 278.0;
    const scanHeight = 413.0;
    const bottomPanelHeight = 146.0;
    final scanLeft = (size.width - scanWidth) / 2;
    final scanTop = (size.height - scanHeight - bottomPanelHeight) / 3;

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
        // 4. BOTTOM PANEL
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
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Color(0xFF161A1D)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "please make sure the card number is visible.",
                          style: TextStyle(fontSize: 14, color: Color(0xFF4A5763), fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Obx(() {
                          if (controller.isScanning.value) {
                            return const Text(
                              "Scanning...",
                              style: TextStyle(
                                color: Color(0xFF5856D7),
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          }
                          if (controller.scanError.value.isNotEmpty) {
                            return Text(
                              controller.scanError.value,
                              style: const TextStyle(color: Colors.red),
                            );
                          }

                          return const SizedBox();
                        }),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Obx(() {
                    if (!controller.isScanning.value) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: GestureDetector(
                          onTap: controller.restartScan,
                          child: const Text(
                            "Scan again",
                            style: TextStyle(
                              color: Color(0xFF5856D7),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  }),
                ],
              ),
            ),
          ),
        ),

        // 2. KHUNG CAMERA
        Positioned(
          // left: scanLeft,
          // top: scanTop,
          // width: scanWidth,
          // bottom: scanTop + 146.0,
          top: 3,
          bottom: 146,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Obx(() {
              if (controller.isScanning.value) {
                return ScannerWidget(
                  controller: controller.scannerWidgetController,
                  overlayOrientation: CardOrientation.landscape,
                  cameraResolution: CameraResolution.high,
                  oneShotScanning: true,
                  overlayBuilder: (context) => Container(),
                );
              }
              return Container(color: Colors.black);
            }),
          ),
        ),

        // 3. border
        Positioned(
          left: scanLeft,
          top: scanTop,
          width: scanWidth,
          bottom: scanTop + 146.0,
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
