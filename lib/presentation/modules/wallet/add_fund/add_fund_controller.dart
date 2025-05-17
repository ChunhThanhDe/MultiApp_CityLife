import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class AddFundController extends BaseController {
  final TextEditingController amountController = TextEditingController();
  var isShowClearButton = false.obs;

  final recommendedAmounts = [15, 30, 50, 100, 200, 500];
  var selectedRecommendedAmount = 0.obs;

  onAmountChanged(String value) {
    isShowClearButton.value = value.isNotEmpty;
    if (recommendedAmounts.contains(int.parse(value))) {
      selectedRecommendedAmount.value = int.parse(value);
    }
  }

  onClearAmount() {
    amountController.clear();
    isShowClearButton.value = false;
    selectedRecommendedAmount.value = 0;
  }

  onSelectRecommendedAmount(int amount) {
    amountController.text = amount.toString();
    selectedRecommendedAmount.value = amount;
    isShowClearButton.value = true;
  }
}
