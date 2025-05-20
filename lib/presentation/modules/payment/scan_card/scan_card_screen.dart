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
    return BasicAppBar(title: "Scan your card");
  }

  @override
  Widget buildScreen(BuildContext context) {
    final controller = Get.find<ScanCardController>();
    return Stack(
      children: [
        // Overlay tối ngoài vùng scan
        _ScanOverlay(),
        // Camera scan ở giữa (ẩn khi đã quét xong để show preview)
        Obx(() {
          if (controller.isScanning.value) {
            return ScannerWidget(
              controller: controller.scannerWidgetController,
              overlayOrientation: CardOrientation.landscape,
              cameraResolution: CameraResolution.high,
              oneShotScanning: true,
              overlayBuilder: (context) => Container(), // không overlay thêm
            );
          }
          return const SizedBox.shrink();
        }),
        // Khi scan xong, show preview (dummy image hoặc snapshot nếu capture được)
        Obx(() {
          if (!controller.isScanning.value && controller.cardInfo.value != null) {
            return Center(
              child: Container(
                width: 278,
                height: 413,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1.5),
                  color: Colors.white,
                  image: controller.cardImage.value != null
                      ? DecorationImage(
                          image: MemoryImage(controller.cardImage.value!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: controller.cardImage.value == null
                    ? Image.asset('assets/images/your_demo_card.png', fit: BoxFit.cover) // fallback minh họa nếu chưa có ảnh thật
                    : null,
              ),
            );
          }
          return const SizedBox.shrink();
        }),
        // Bottom panel
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
            ),
            child: Obx(() {
              final card = controller.cardInfo.value;
              return Column(
                mainAxisSize: MainAxisSize.min,
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
                          "please the card number is visible.",
                          style: TextStyle(fontSize: 14, color: Color(0xFF4A5763), fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        // Hiển thị kết quả quét hoặc lỗi
                        if (controller.scanError.value.isNotEmpty) Text(controller.scanError.value, style: const TextStyle(color: Colors.red)),
                        if (card != null)
                          Column(
                            children: [
                              Text("Card: ${card.numberFormatted()}", style: const TextStyle(fontWeight: FontWeight.w500)),
                              if ((card.expiry ?? '').isNotEmpty) Text("Exp: ${card.expiry}", style: const TextStyle(fontWeight: FontWeight.w500)),
                              if ((card.type ?? '').isNotEmpty) Text("Type: ${card.type}", style: const TextStyle(fontWeight: FontWeight.w500)),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  // Home Indicator (iOS style)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8, top: 16),
                    width: 134,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFF161A1D),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  if (!controller.isScanning.value)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton.icon(
                        onPressed: controller.restartScan,
                        icon: const Icon(Icons.refresh, color: Colors.white),
                        label: const Text("Scan again", style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5856D7),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                        ),
                      ),
                    ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}

// Overlay tối 4 cạnh ngoài, KHÔNG che vùng giữa màn hình scan
class _ScanOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const scanWidth = 278.0;
    const scanHeight = 413.0;
    final centerY = (size.height - scanHeight) / 2;
    final centerX = (size.width - scanWidth) / 2;

    return Stack(
      children: [
        // TOP
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          height: centerY,
          child: Container(color: Colors.black.withOpacity(0.7)),
        ),
        // BOTTOM
        Positioned(
          left: 0,
          top: centerY + scanHeight,
          right: 0,
          bottom: 0,
          child: Container(color: Colors.black.withOpacity(0.7)),
        ),
        // LEFT
        Positioned(
          left: 0,
          top: centerY,
          width: centerX,
          height: scanHeight,
          child: Container(color: Colors.black.withOpacity(0.7)),
        ),
        // RIGHT
        Positioned(
          left: centerX + scanWidth,
          top: centerY,
          right: 0,
          height: scanHeight,
          child: Container(color: Colors.black.withOpacity(0.7)),
        ),
        // KHUNG SCAN (không mờ, chỉ border trắng bo góc)
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
