import 'dart:async';

import 'package:get/get.dart';
import 'package:sixam_mart_user/app/biti_payment_config.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/request/cart/checkout_calculate_request.dart';
import 'package:sixam_mart_user/domain/models/request/cart/order_now_request.dart';
import 'package:sixam_mart_user/domain/models/response/checkout_calculate_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_checkout_summary_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/repositories/cart_repository.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/services/biti_payment_service.dart';
import 'package:sixam_mart_user/services/cart_service.dart';
import 'package:url_launcher/url_launcher.dart';

class CartCheckoutController extends BaseController {
  CartCheckoutController(this.serviceCart);
  final ServiceEntity? serviceCart;
  final CartRepository _cartRepository = Get.find<CartRepository>();
  final CartService _cartService = Get.find<CartService>();
  final BitiPaymentService _bitiPaymentService = Get.find<BitiPaymentService>();

  final Rx<GetCheckoutSummaryResponse?> checkoutSummary = Rx<GetCheckoutSummaryResponse?>(null);
  final Rx<CheckoutCalculateResponse?> calculatedSummary = Rx<CheckoutCalculateResponse?>(null);
  final RxString selectedDeliveryOption = RxString('Standard'); // Default to 'Standard'
  final RxString selectedPaymentMethod = RxString('cash_on_delivery');
  final RxInt selectedAddressId = RxInt(0);
  final RxString promoCode = RxString('');
  final RxBool isApplyingPromoCode = RxBool(false);
  // Inline message states for promo code section
  final RxString promoMessage = RxString('');
  final RxBool isPromoError = RxBool(false);
  final RxBool isPromoSuccess = RxBool(false);

  @override
  void onInit() {
    super.onInit();
    getCheckoutSummary();
  }

  Future<void> getCheckoutSummary() async {
    isLoading.value = true;
    final ApiResult result = await _cartRepository.getCheckoutSummary();

    switch (result) {
      case Success(response: final response):
        if (response.statusCode != 200) {
          showAppSnackBar(title: 'Failed to load checkout summary', type: SnackBarType.error);
          return;
        }

        checkoutSummary.value = GetCheckoutSummaryResponse.fromJson(response.data);

        // Add Biti payment method to the existing payment methods
        _mapDigitalPaymentToBiti();

        // Set default values
        if (checkoutSummary.value?.defaultAddress?.id != null) {
          selectedAddressId.value = checkoutSummary.value!.defaultAddress!.id!;
        }

        // Set default delivery option to standard
        if (checkoutSummary.value?.deliveryOptions?.isNotEmpty == true) {
          final standardOption = checkoutSummary.value!.deliveryOptions!.firstWhereOrNull((option) => option.key?.toUpperCase() == 'PRIORITY');
          if (standardOption != null) {
            selectedDeliveryOption.value = standardOption.label ?? 'Standard';
          } else {
            // If standard option not found, use the first available option
            selectedDeliveryOption.value = checkoutSummary.value!.deliveryOptions!.first.label ?? 'Standard';
          }
        }

      case Failure(error: final error):
        showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
    }

    isLoading.value = false;
  }

  /// Maps digital_payment to Biti payment internally
  void _mapDigitalPaymentToBiti() {
    try {
      if (checkoutSummary.value?.paymentMethods != null) {
        // Find digital_payment method and update its label to show it uses Biti
        final digitalPaymentMethod = checkoutSummary.value!.paymentMethods!.firstWhereOrNull((method) => method.key == 'digital_payment');

        if (digitalPaymentMethod != null) {
          // Update the label to indicate it uses Biti
          final updatedMethod = PaymentMethod(key: digitalPaymentMethod.key, label: '${digitalPaymentMethod.label} (Biti)');

          // Replace the old method with updated one
          final index = checkoutSummary.value!.paymentMethods!.indexOf(digitalPaymentMethod);
          if (index != -1) {
            checkoutSummary.value!.paymentMethods![index] = updatedMethod;
          }
        }
      }
    } catch (e) {
      // Silent error handling
    }
  }

  void selectDeliveryOption(String optionLabel) {
    selectedDeliveryOption.value = optionLabel;
  }

  void selectPaymentMethod(String methodKey) {
    selectedPaymentMethod.value = methodKey;
  }

  void selectAddress(int addressId) {
    selectedAddressId.value = addressId;
  }

  void _clearPromoMessages() {
    promoMessage.value = '';
    isPromoError.value = false;
    isPromoSuccess.value = false;
  }

  void _setPromoError(String message) {
    promoMessage.value = message;
    isPromoError.value = true;
    isPromoSuccess.value = false;
  }

  void _setPromoSuccess(String message) {
    promoMessage.value = message;
    isPromoError.value = false;
    isPromoSuccess.value = true;
  }

  void applyPromoCode(String code) async {
    _clearPromoMessages();

    if (code.trim().isEmpty) {
      _setPromoError('Please enter a promo code');
      return;
    }

    if (selectedAddressId.value == 0) {
      _setPromoError('Please select a delivery address first');
      return;
    }

    // Validate promo code against available coupons
    if (availableCoupons.isNotEmpty) {
      final isValidCoupon = availableCoupons.any((coupon) => coupon.code?.toLowerCase() == code.trim().toLowerCase());
      if (!isValidCoupon) {
        _setPromoError('Invalid promo code. Please check and try again.');
        return;
      }
    }

    await safeExecute(() async {
      isApplyingPromoCode.value = true;

      // Map delivery option to the format expected by API
      String deliveryOptionForApi = 'standard';
      if (selectedDeliveryOption.value.toLowerCase().contains('priority')) {
        deliveryOptionForApi = 'priority';
      } else if (selectedDeliveryOption.value.toLowerCase().contains('schedule')) {
        deliveryOptionForApi = 'schedule';
      }

      final request = CheckoutCalculateRequest(selectedDeliveryOption: deliveryOptionForApi, selectedAddressId: selectedAddressId.value, appliedCoupon: code.trim(), dmTips: 0.0);

      final ApiResult result = await _cartRepository.checkoutCalculate(request);

      switch (result) {
        case Success(response: final response):
          if (response.statusCode != 200) {
            _setPromoError('Failed to apply promo code');
            return;
          }

          calculatedSummary.value = CheckoutCalculateResponse.fromJson(response.data);
          promoCode.value = code.trim();

          // Show simple success message
          _setPromoSuccess('Promo code "${code.trim()}" applied');

        case Failure(error: final error):
          final errorMessage = NetworkExceptions.getErrorMessage(error);
          _setPromoError(errorMessage);
          // Clear promo code on error
          promoCode.value = '';
          calculatedSummary.value = null;
      }

      isApplyingPromoCode.value = false;
    });
  }

  void clearPromoCode() {
    promoCode.value = '';
    calculatedSummary.value = null;
    _clearPromoMessages();
  }

  double get selectedDeliveryFee {
    // Use calculated summary if available, otherwise use default
    if (calculatedSummary.value != null) {
      return calculatedSummary.value!.deliveryFee;
    }

    if (checkoutSummary.value?.deliveryOptions == null) return 0.0;

    final selectedOption = checkoutSummary.value!.deliveryOptions!.firstWhereOrNull((option) => option.label == selectedDeliveryOption.value);

    return selectedOption?.fee ?? 0.0;
  }

  double get calculatedTotal {
    // Use calculated summary if available (when promo code is applied)
    if (calculatedSummary.value != null) {
      return calculatedSummary.value!.total;
    }

    // Otherwise use default calculation
    final subtotal = checkoutSummary.value?.subtotal ?? 0.0;
    final tax = checkoutSummary.value?.tax ?? 0.0;
    final discount = checkoutSummary.value?.discount ?? 0.0;

    return subtotal + selectedDeliveryFee + tax - discount;
  }

  double get currentDiscount {
    // Use calculated summary if available, otherwise use default
    if (calculatedSummary.value != null) {
      return calculatedSummary.value!.discount;
    }
    return checkoutSummary.value?.discount ?? 0.0;
  }

  double get currentSubtotal {
    // Use calculated summary if available, otherwise use default
    if (calculatedSummary.value != null) {
      return calculatedSummary.value!.subtotal;
    }
    return checkoutSummary.value?.subtotal ?? 0.0;
  }

  double get currentTax {
    // Use calculated summary if available, otherwise use default
    if (calculatedSummary.value != null) {
      return calculatedSummary.value!.tax;
    }
    return checkoutSummary.value?.tax ?? 0.0;
  }

  CheckoutAddress? get selectedAddress {
    if (checkoutSummary.value?.addresses == null) return null;

    return checkoutSummary.value!.addresses!.firstWhereOrNull((address) => address.id == selectedAddressId.value);
  }

  DeliveryOption? get selectedDeliveryOptionData {
    if (checkoutSummary.value?.deliveryOptions == null) return null;

    return checkoutSummary.value!.deliveryOptions!.firstWhereOrNull((option) => option.label == selectedDeliveryOption.value);
  }

  PaymentMethod? get selectedPaymentMethodData {
    if (checkoutSummary.value?.paymentMethods == null) return null;

    return checkoutSummary.value!.paymentMethods!.firstWhereOrNull((method) => method.key == selectedPaymentMethod.value);
  }

  List<AvailableCoupon> get availableCoupons {
    return checkoutSummary.value?.availableCoupons ?? [];
  }

  Future<void> orderNow() async {
    if (selectedPaymentMethod.value.isEmpty) {
      showAppSnackBar(title: 'Please select a payment method', type: SnackBarType.error);
      return;
    }

    // Handle digital payment method (Biti)
    if (selectedPaymentMethod.value == 'cash_on_delivery') {
      await _completeDigitalPaymentOrder(appProvider.userInfo.value.id.toString());
    } else {
      await _processBitiPayment();
    }
  }

  /// Processes digital payment flow (Biti)
  Future<void> _processBitiPayment() async {
    await safeExecute(() async {
      try {
        isLoading.value = true;

        // Calculate total amount including delivery fees, taxes, and discounts
        final totalAmount = calculatedTotal;

        if (totalAmount <= 0) {
          showAppSnackBar(title: 'Invalid total amount', type: SnackBarType.error);
          return;
        }

        // Generate unique client reference ID
        final clientReferenceId = appProvider.userInfo.value.id.toString();

        // Get customer phone from selected address if available
        final customerPhone = selectedAddress?.contactPersonNumber;
        const customerEmail = null; // Email not available in CheckoutAddress model

        // Initiate Biti payment
        final paymentResponse = await _bitiPaymentService.initiatePayment(
          cancelUrl: BitiPaymentConfig.cancelUrl,
          successUrl: BitiPaymentConfig.successUrl,
          clientReferenceId: clientReferenceId,
          paymentAmount: totalAmount,
          currencyCode: BitiPaymentConfig.defaultCurrency,
          description: BitiPaymentConfig.defaultDescription,
          customerEmail: customerEmail,
          customerPhone: customerPhone,
          ipnUrl: BitiPaymentConfig.ipnUrl,
        );

        if (paymentResponse != null && paymentResponse.payload?.paymentUrl != null) {
          // Launch Biti payment URL
          final paymentUrl = paymentResponse.payload!.paymentUrl;

          await launchUrl(Uri.parse(paymentUrl), mode: LaunchMode.externalApplication);

          // Show payment processing message
          showAppSnackBar(title: 'Payment initiated successfully', message: 'Please complete the payment in the opened browser', type: SnackBarType.success);

          // Start monitoring payment status
          _monitorPaymentStatus(paymentResponse.payload!.info!.transactionId);
        } else {
          showAppSnackBar(title: 'Failed to initiate payment', type: SnackBarType.error);
        }
      } catch (e) {
        showAppSnackBar(title: 'Payment processing error: \${e.toString()}', type: SnackBarType.error);
      } finally {
        isLoading.value = false;
      }
    });
  }

  /// Monitors Biti payment status
  void _monitorPaymentStatus(String transactionId) {
    // Simple polling mechanism - in production, consider using webhooks
    Timer.periodic(const Duration(seconds: 5), (timer) async {
      try {
        final verifyResponse = await _bitiPaymentService.verifyPayment(transactionId);

        if (verifyResponse != null) {
          if (_bitiPaymentService.isPaymentCompleted(verifyResponse)) {
            timer.cancel();
            await _completeDigitalPaymentOrder(transactionId);
          } else if (verifyResponse.payload?.status == 'failed' || verifyResponse.payload?.status == 'cancelled') {
            timer.cancel();
            showAppSnackBar(title: 'Payment was cancelled or failed', type: SnackBarType.error);
          }
        }

        // Stop monitoring after 10 minutes
        if (timer.tick > 120) {
          // 120 * 5 seconds = 10 minutes
          timer.cancel();
          showAppSnackBar(title: 'Payment verification timeout', message: 'Please check your payment status manually', type: SnackBarType.error);
        }
      } catch (e) {
        // Continue monitoring on error
      }
    });
  }

  /// Completes order after successful digital payment (Biti)
  Future<void> _completeDigitalPaymentOrder(String transactionId) async {
    await safeExecute(() async {
      try {
        isLoading.value = true;

        final request = OrderNowRequest(
          selectedDeliveryOption: selectedDeliveryOption.value,
          selectedAddressId: selectedAddressId.value,
          appliedCoupon: promoCode.value,
          paymentMethod: selectedPaymentMethod.value,
        );

        final ApiResult result = await _cartRepository.orderNow(request);

        switch (result) {
          case Success(response: final response):
            if (response.statusCode != 200) {
              showAppSnackBar(title: 'Failed to complete order', type: SnackBarType.error);
              return;
            }

            final responseData = response.data;
            if (responseData != null && responseData['orders'] != null && responseData['orders'].isNotEmpty) {
              final orderId = responseData['orders'][0]['id'];
              final contactNumber = selectedAddress?.contactPersonNumber ?? '';

              // Refresh cart list to update UI
              await _cartService.fetchCartList();

              showAppSnackBar(title: 'Payment completed successfully!', type: SnackBarType.success);

              // Navigate to order confirmation screen
              Get.offAndToNamed(AppRoutes.cartConfirm, arguments: {'orderId': orderId, 'contactNumber': contactNumber, 'paymentMethod': 'digital_payment', 'transactionId': transactionId});
            } else {
              showAppSnackBar(title: 'Order created but no order ID received', type: SnackBarType.error);
            }

          case Failure(error: final error):
            showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
        }
      } catch (e) {
        showAppSnackBar(title: 'Order completion error: \${e.toString()}', type: SnackBarType.error);
      } finally {
        isLoading.value = false;
      }
    });
  }
}
