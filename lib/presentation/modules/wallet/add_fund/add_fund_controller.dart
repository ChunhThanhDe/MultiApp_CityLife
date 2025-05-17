import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

import 'add_fund_screen.dart';

class AddFundController extends BaseController {
  final TextEditingController amountController = TextEditingController();
  var isShowClearButton = false.obs;

  final recommendedAmounts = [15, 30, 50, 100, 200, 500];
  var selectedRecommendedAmount = 0.obs;

  final RxList<PaymentMethod> paymentMethods = <PaymentMethod>[
    PaymentMethod(name: 'Apple', last4: '5290', type: PaymentMethodType.applePay, iconAsset: Assets.icons.icApplePay.path),
    PaymentMethod(name: 'Visa', last4: '5290', type: PaymentMethodType.visa, iconAsset: Assets.icons.icVisa.path),
    PaymentMethod(name: 'Mastercard', last4: '9270', type: PaymentMethodType.mastercard, iconAsset: Assets.icons.icMastercard.path),
    PaymentMethod(name: 'EVC', last4: '9270', type: PaymentMethodType.evc, iconAsset: Assets.icons.icEvcPlus.path),
  ].obs;

  late final Rx<PaymentMethod?> selectedPaymentMethod;

  @override
  void onInit() {
    super.onInit();
    selectedPaymentMethod = Rx<PaymentMethod?>(paymentMethods.first);
  }

  onAmountChanged(String value) {
    isShowClearButton.value = value.isNotEmpty;
    final amount = int.tryParse(value);
    if (amount != null && recommendedAmounts.contains(amount)) {
      selectedRecommendedAmount.value = amount;
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

  void onSelectPaymentMethod(PaymentMethod value) {
    selectedPaymentMethod.value = value;
  }
}
