import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class TrackingDeliveryController extends BaseController {
  final textController = TextEditingController();
  var hasText = false.obs;

  @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      hasText.value = textController.text.isNotEmpty;
    });
  }

  void onTextChanged(String text) {
    hasText.value = text.isNotEmpty;
  }

  void clearText() {
    textController.clear();
    hasText.value = false;
  }

  void trackReceipt() {
    debugPrint('Tracking: ${textController.text}');
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
