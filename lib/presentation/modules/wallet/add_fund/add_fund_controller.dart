import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

enum PaymentMethodType { applePay, visa, mastercard, evc }

class PaymentMethod {
  PaymentMethod({required this.name, required this.last4, required this.type, required this.iconAsset});
  final String name;
  final String last4;
  final PaymentMethodType type;
  final String iconAsset;
}

class AddFundController extends BaseController {
  final TextEditingController amountController = TextEditingController();
  final FocusNode amountFocusNode = FocusNode();
  final RxBool isAmountFocused = false.obs;
  final RxString amountText = ''.obs;

  final recommendedAmounts = [15, 50, 200, 500];

  final RxList<PaymentMethod> paymentMethods = <PaymentMethod>[].obs;

  late final Rx<PaymentMethod?> selectedPaymentMethod;

  @override
  void onInit() {
    super.onInit();
    selectedPaymentMethod = Rx<PaymentMethod?>(null);
    amountFocusNode.addListener(() {
      isAmountFocused.value = amountFocusNode.hasFocus;
    });
    amountController.addListener(() {
      amountText.value = amountController.text;
    });
    _loadPaymentMethods();
  }

  /// Load payment methods from API
  Future<void> _loadPaymentMethods() async {
    try {
      isLoading.value = true;
      // TODO: Implement API call to get user's payment methods
      // paymentMethods.value = await PaymentService.getPaymentMethods();
      // if (paymentMethods.isNotEmpty) {
      //   selectedPaymentMethod.value = paymentMethods.first;
      // }
    } catch (e) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
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
