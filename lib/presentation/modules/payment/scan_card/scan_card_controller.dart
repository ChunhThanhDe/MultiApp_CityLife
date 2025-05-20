import 'package:card_scanner/card_scanner.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class ScanCardController extends BaseController {
  final cardNumber = ''.obs;
  final expDate = ''.obs;
  final scanError = ''.obs;
  final isScanning = false.obs;

  Future<void> scanCard() async {
    isScanning.value = true;
    scanError.value = '';
    try {
      final CardScanOptions scanOptions = CardScanOptions(
        scanCardHolderName: false,
        scanExpiryDate: true,
      );

      final CardDetails? details = await CardScanner.scanCard(scanOptions: scanOptions);

      if (details != null) {
        cardNumber.value = details.cardNumber ?? '';
        expDate.value = details.expiryDate;
        scanError.value = '';
      } else {
        scanError.value = 'No card detected or scan cancelled.';
      }
    } catch (e) {
      scanError.value = 'Scan failed: $e';
    } finally {
      isScanning.value = false;
    }
  }
}
