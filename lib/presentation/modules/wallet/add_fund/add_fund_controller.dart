import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

enum PaymentMethodType { applePay, visa, mastercard, evc }

class PaymentMethod {
  final String name;
  final String last4;
  final PaymentMethodType type;
  final String iconAsset;

  PaymentMethod({required this.name, required this.last4, required this.type, required this.iconAsset});
}

class AddFundController extends BaseController {
  final TextEditingController amountController = TextEditingController();
  final FocusNode amountFocusNode = FocusNode();
  final RxBool isAmountFocused = false.obs;
  final RxString amountText = ''.obs;

  final recommendedAmounts = [15, 50, 200, 500];

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
    amountFocusNode.addListener(() {
      isAmountFocused.value = amountFocusNode.hasFocus;
    });
    amountController.addListener(() {
      amountText.value = amountController.text;
    });
  }

  void onAmountChanged(String value) {
    amountText.value = value;
  }

  void onClearAmount() {
    amountController.clear();
    isAmountFocused.refresh();
    amountText.value = '';
  }

  void onSelectRecommendedAmount(int amount) {
    amountController.text = amount.toString();
    amountText.value = amount.toString();
    isAmountFocused.refresh();
  }

  void onSelectPaymentMethod(PaymentMethod value) {
    selectedPaymentMethod.value = value;
  }
}
