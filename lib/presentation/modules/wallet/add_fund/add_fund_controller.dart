import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class AddFundController extends BaseController {
  final TextEditingController amountController = TextEditingController();
  var isShowClearButton = false.obs;

  onAmountChanged(String value) {
    isShowClearButton.value = value.isNotEmpty;
  }

  onClearAmount() {
    amountController.clear();
    isShowClearButton.value = false;
  }
}
