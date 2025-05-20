import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class PaymentController extends BaseController {
  // Card form controllers
  final cardNumberController = TextEditingController();
  final expDateController = TextEditingController();
  final cvvController = TextEditingController();
  final zipController = TextEditingController();
  final nicknameController = TextEditingController();

  final selectedCountry = RxnString();

  // Show/hide CVV
  final obscureCvv = true.obs;

  // Button enable/disable
  final isValid = false.obs;

  PaymentController() {
    // Listen for changes in all controllers
    cardNumberController.addListener(validate);
    expDateController.addListener(validate);
    cvvController.addListener(validate);
    zipController.addListener(validate);
    // Listen for selectedCountry changes
    ever(selectedCountry, (_) => validate());
  }

  // Realtime validation logic
  void validate() {
    isValid.value = cardNumberController.text.trim().isNotEmpty &&
        expDateController.text.trim().isNotEmpty &&
        cvvController.text.trim().isNotEmpty &&
        zipController.text.trim().isNotEmpty &&
        selectedCountry.value != null;
  }

  @override
  void onClose() {
    cardNumberController.dispose();
    expDateController.dispose();
    cvvController.dispose();
    zipController.dispose();
    nicknameController.dispose();
    super.onClose();
  }

  void onSave() {
    // Thực hiện lưu thông tin thẻ ở đây, có thể gọi API
    // Hiển thị snackbar thông báo thành công
    Get.snackbar(
      "Success",
      "Your card has been added.",
      snackPosition: SnackPosition.BOTTOM,
    );
    // Xử lý reset form hoặc navigate nếu cần
  }
}
