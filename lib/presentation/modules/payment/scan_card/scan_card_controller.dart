import 'package:get/get.dart';

class ScanCardController extends GetxController {
  // Lưu thông tin thẻ sau khi quét
  final cardNumber = ''.obs;
  final cardHolder = ''.obs;
  final expiryDate = ''.obs;
  final isScanning = false.obs;
  final scanError = ''.obs;

  void onCardScanned(String number, String holder, String expiry) {
    cardNumber.value = number;
    cardHolder.value = holder;
    expiryDate.value = expiry;
    isScanning.value = false;
  }

  void onStartScanning() {
    cardNumber.value = '';
    cardHolder.value = '';
    expiryDate.value = '';
    scanError.value = '';
    isScanning.value = true;
  }

  void onError(String error) {
    scanError.value = error;
    isScanning.value = false;
  }
}
