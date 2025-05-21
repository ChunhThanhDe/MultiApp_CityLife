import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_card_scanner/ml_card_scanner.dart';
import 'package:sixam_mart_user/app/local/app_storage.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class ScanCardController extends BaseController {
  final scannerWidgetController = ScannerWidgetController();
  final Rx<CardInfo?> cardInfo = Rx<CardInfo?>(null);
  final Rx<Uint8List?> cardImage = Rx<Uint8List?>(null);
  final RxBool isScanning = true.obs;
  final RxString scanError = ''.obs;

  @override
  void onInit() {
    super.onInit();
    scannerWidgetController
      ..setCardListener(_onCardScanned)
      ..setErrorListener(_onError);
  }

  void _onCardScanned(CardInfo? value) async {
    isScanning.value = false;
    cardInfo.value = value;
    if (value != null) {
      final cardJson = {
        'number': value.number,
        'expiry': value.expiry,
        'type': value.type,
      };
      await AppStorage.setString(
        SharedPreferencesKeys.scannedCardInfo,
        cardJson.toString(),
      );

      Get.snackbar(
        "Success",
        "Scan Done!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );

      Future.delayed(const Duration(milliseconds: 400), () {
        if (Get.isOverlaysOpen) {
          Get.back();
        } else {
          Get.back();
        }
      });
    }
  }

  void _onError(ScannerException exception) {
    scanError.value = exception.message ?? "Unknown error";
    isScanning.value = false;
    Get.snackbar(
      "Error",
      scanError.value,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );
  }

  void restartScan() {
    scanError.value = '';
    cardInfo.value = null;
    cardImage.value = null;
    isScanning.value = true;
    scannerWidgetController.enableScanning();
  }

  @override
  void onClose() {
    scannerWidgetController.dispose();
    super.onClose();
  }
}
