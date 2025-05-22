import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/local/app_storage.dart';
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
    loadScannedCard();
    // Listen for changes in all controllers
    cardNumberController.addListener(validate);
    expDateController.addListener(validate);
    cvvController.addListener(validate);
    zipController.addListener(validate);
    // Listen for selectedCountry changes
    ever(selectedCountry, (_) => validate());
  }

  void loadScannedCard() {
    final raw = AppStorage.getString('scanned_card_info');
    if (raw != null && raw.isNotEmpty) {
      try {
        final data = jsonDecode(raw);
        cardNumberController.text = (data['number'] ?? '').replaceAllMapped(RegExp(r".{4}"), (m) => "${m.group(0)} ");
        expDateController.text = data['expiry'] ?? '';
      } catch (_) {}
    }
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
    Get.snackbar(
      "Success",
      "Your card has been added.",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
