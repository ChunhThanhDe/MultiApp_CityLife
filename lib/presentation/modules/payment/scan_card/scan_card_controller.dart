import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:ml_card_scanner/ml_card_scanner.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class ScanCardController extends BaseController {
  final scannerWidgetController = ScannerWidgetController();
  final Rx<CardInfo?> cardInfo = Rx<CardInfo?>(null);
  final Rx<Uint8List?> cardImage = Rx<Uint8List?>(null); // <-- Lưu ảnh nếu có thể
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
    // Nếu package hỗ trợ lấy frame: cardImage.value = await ...;
  }

  void _onError(ScannerException exception) {
    scanError.value = exception.message ?? "Unknown error";
    isScanning.value = false;
  }

  void restartScan() {
    scanError.value = '';
    cardInfo.value = null;
    cardImage.value = null;
    isScanning.value = true;
  }

  @override
  void onClose() {
    scannerWidgetController.dispose();
    super.onClose();
  }
}
