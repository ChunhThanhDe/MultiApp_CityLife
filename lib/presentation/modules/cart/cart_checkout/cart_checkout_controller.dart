import 'dart:async';

import 'package:get/get.dart';
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
        print('start add biti payment method');
        _addBitiPaymentMethod();
        print('end add biti payment method');

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

    print('checkoutSummary.value?.paymentMethods: ${checkoutSummary.value?.paymentMethods}');
    isLoading.value = false;
  }

  /// Adds Biti payment method to the existing payment methods list
  void _addBitiPaymentMethod() {
    print('DEBUG: Adding Biti payment method to payment methods list');
    try {
      if (checkoutSummary.value?.paymentMethods != null) {
        // Check if Biti payment method already exists
        final bitiExists = checkoutSummary.value!.paymentMethods!.any((method) => method.key == 'biti_payment');
        print('DEBUG: Biti payment method already exists: $bitiExists');

        if (!bitiExists) {
          // Create Biti payment method
          const bitiPaymentMethod = PaymentMethod(key: 'biti_payment', label: 'Biti Payment');
          print('DEBUG: Biti payment method created: ${bitiPaymentMethod.toString()}');

          // Add to the list
          checkoutSummary.value!.paymentMethods!.add(bitiPaymentMethod);
          print('DEBUG: Biti payment method added to list. Total payment methods: ${checkoutSummary.value!.paymentMethods!.length}');
        } else {
          print('DEBUG: Biti payment method already exists in the list');
        }
      } else {
        print('ERROR: checkoutSummary.value?.paymentMethods is null');
      }
    } catch (e, stackTrace) {
      print('ERROR: Exception in _addBitiPaymentMethod: $e');
      print('ERROR: Stack trace: $stackTrace');
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
    if (selectedAddressId.value == 0) {
      showAppSnackBar(title: 'Please select a delivery address', type: SnackBarType.error);
      return;
    }

    if (selectedPaymentMethod.value.isEmpty) {
      showAppSnackBar(title: 'Please select a payment method', type: SnackBarType.error);
      return;
    }

    // Handle Biti payment method
    if (selectedPaymentMethod.value == 'biti_payment') {
      await _processBitiPayment();
      return;
    }

    await safeExecute(() async {
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
            showAppSnackBar(title: 'Failed to place order', type: SnackBarType.error);
            return;
          }

          final responseData = response.data;
          if (responseData != null && responseData['orders'] != null && responseData['orders'].isNotEmpty) {
            final orderId = responseData['orders'][0]['id'];
            final contactNumber = selectedAddress?.contactPersonNumber ?? '';

            // Refresh cart list to update UI (cart should be empty after successful order)
            await _cartService.fetchCartList();

            // Navigate to order confirmation screen
            Get.offAndToNamed(AppRoutes.cartConfirm, arguments: {'orderId': orderId, 'contactNumber': contactNumber});
          } else {
            showAppSnackBar(title: 'Order created but no order ID received', type: SnackBarType.error);
          }

        case Failure(error: final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }

      isLoading.value = false;
    });
  }

  /// Initiates Biti payment process
  Future<void> _initiateBitiPayment() async {
    print('DEBUG: Initiating Biti payment process');
    try {
      print('DEBUG: Setting loading to false before processing payment');
      isLoading.value = false;
      print('DEBUG: Calling _processBitiPayment');
      await _processBitiPayment();
      print('DEBUG: _processBitiPayment completed');
    } catch (e, stackTrace) {
      print('ERROR: Exception in _initiateBitiPayment: $e');
      print('ERROR: Stack trace: $stackTrace');
      showAppSnackBar(title: 'Failed to initiate Biti payment: ${e.toString()}', type: SnackBarType.error);
    }
  }

  /// Processes Biti payment flow
  Future<void> _processBitiPayment() async {
    print('DEBUG: Starting Biti payment process');
    await safeExecute(() async {
      try {
        isLoading.value = true;
        print('DEBUG: Set loading to true');

        // Calculate total amount from cart
        final totalAmount = _cartService.totalPrice;
        print('DEBUG: Total amount calculated: \$totalAmount');
        if (totalAmount <= 0) {
          print('ERROR: Invalid cart total amount: \$totalAmount');
          showAppSnackBar(title: 'Invalid cart total amount', type: SnackBarType.error);
          return;
        }

        // Generate unique client reference ID
        final clientReferenceId = 'ORDER_${DateTime.now().millisecondsSinceEpoch}';
        print('DEBUG: Generated client reference ID: \$clientReferenceId');

        // Get customer phone from selected address if available
        final customerPhone = selectedAddress?.contactPersonNumber;
        const customerEmail = null; // Email not available in CheckoutAddress model
        print('DEBUG: Customer phone: \$customerPhone, email: \$customerEmail');

        // Initiate Biti payment
        print('DEBUG: Calling BitiPaymentService.initiatePayment');
        final paymentResponse = await _bitiPaymentService.initiatePayment(
          cancelUrl: 'https://yourapp.com/payment/cancel',
          successUrl: 'https://yourapp.com/payment/success',
          clientReferenceId: clientReferenceId,
          paymentAmount: totalAmount,
          currencyCode: 'USD', // Change to your app's currency
          description: 'Order payment for cart items',
          customerEmail: customerEmail,
          customerPhone: customerPhone,
        );
        print('DEBUG: Payment response received: \${paymentResponse?.toString()}');

        if (paymentResponse != null && paymentResponse.payload?.paymentUrl != null) {
          // Launch Biti payment URL
          final paymentUrl = paymentResponse.payload!.paymentUrl;
          print('DEBUG: Payment URL: \$paymentUrl');
          
          if (await canLaunchUrl(Uri.parse(paymentUrl))) {
            print('DEBUG: Launching payment URL');
            await launchUrl(Uri.parse(paymentUrl), mode: LaunchMode.externalApplication);

            // Show payment processing message
            showAppSnackBar(title: 'Payment initiated successfully', message: 'Please complete the payment in the opened browser', type: SnackBarType.success);

            // Start monitoring payment status
            print('DEBUG: Starting payment monitoring for transaction: \${paymentResponse.payload!.transactionId}');
            _monitorPaymentStatus(paymentResponse.payload!.transactionId);
          } else {
            print('ERROR: Cannot launch payment URL: \$paymentUrl');
            showAppSnackBar(title: 'Failed to open payment URL', type: SnackBarType.error);
          }
        } else {
          print('ERROR: Invalid payment response - paymentResponse: \$paymentResponse, paymentUrl: \${paymentResponse?.payload?.paymentUrl}');
          showAppSnackBar(title: 'Failed to initiate payment', type: SnackBarType.error);
        }
      } catch (e, stackTrace) {
        print('ERROR: Exception in _processBitiPayment: \$e');
        print('ERROR: Stack trace: \$stackTrace');
        showAppSnackBar(title: 'Payment processing error: \${e.toString()}', type: SnackBarType.error);
      } finally {
        isLoading.value = false;
        print('DEBUG: Set loading to false');
      }
    });
  }

  /// Monitors Biti payment status
  void _monitorPaymentStatus(String transactionId) {
    print('DEBUG: Starting payment monitoring for transaction: $transactionId');
    // Simple polling mechanism - in production, consider using webhooks
    Timer.periodic(const Duration(seconds: 5), (timer) async {
      try {
        print('DEBUG: Checking payment status for transaction: $transactionId');
        final verifyResponse = await _bitiPaymentService.verifyPayment(transactionId);
        print('DEBUG: Verify response: ${verifyResponse?.toString()}');
        print('DEBUG: Payment status: ${verifyResponse?.payload?.status}');

        if (verifyResponse != null) {
          if (_bitiPaymentService.isPaymentCompleted(verifyResponse)) {
            print('DEBUG: Payment completed, canceling timer and completing order');
            timer.cancel();
            await _completeBitiOrder(transactionId);
          } else if (verifyResponse.payload?.status == 'failed' || verifyResponse.payload?.status == 'cancelled') {
            print('ERROR: Payment ${verifyResponse.payload?.status} for transaction: $transactionId');
            timer.cancel();
            showAppSnackBar(title: 'Payment was cancelled or failed', type: SnackBarType.error);
          } else {
            print('DEBUG: Payment still pending, continuing monitoring...');
          }
        }

        // Stop monitoring after 10 minutes
        if (timer.tick > 120) {
          // 120 * 5 seconds = 10 minutes
          print('DEBUG: Payment monitoring timeout for transaction: $transactionId');
          timer.cancel();
          showAppSnackBar(title: 'Payment verification timeout', message: 'Please check your payment status manually', type: SnackBarType.error);
        }
      } catch (e, stackTrace) {
        print('ERROR: Exception in _monitorPaymentStatus: $e');
        print('ERROR: Stack trace: $stackTrace');
        // Continue monitoring on error
      }
    });
  }

  /// Completes order after successful Biti payment
  Future<void> _completeBitiOrder(String transactionId) async {
    print('DEBUG: Starting order completion for transaction: $transactionId');
    await safeExecute(() async {
      try {
        isLoading.value = true;
        print('DEBUG: Set loading to true for order completion');

        print('DEBUG: Creating order request with addressId: ${selectedAddressId.value}, transactionId: $transactionId');
        final request = OrderNowRequest(selectedDeliveryOption: selectedDeliveryOption.value, selectedAddressId: selectedAddressId.value, appliedCoupon: promoCode.value, paymentMethod: 'biti_payment');
        print('DEBUG: Order request created: ${request.toString()}');

        print('DEBUG: Calling cart repository to create order');
        final ApiResult result = await _cartRepository.orderNow(request);
        print('DEBUG: Order response received');

        switch (result) {
          case Success(response: final response):
            print('DEBUG: Order API call successful with status: ${response.statusCode}');
            if (response.statusCode != 200) {
              print('ERROR: Order API returned non-200 status: ${response.statusCode}');
              showAppSnackBar(title: 'Failed to complete order', type: SnackBarType.error);
              return;
            }

            final responseData = response.data;
            print('DEBUG: Order response data: $responseData');
            if (responseData != null && responseData['orders'] != null && responseData['orders'].isNotEmpty) {
              final orderId = responseData['orders'][0]['id'];
              final contactNumber = selectedAddress?.contactPersonNumber ?? '';
              print('DEBUG: Order created successfully with ID: $orderId');

              // Refresh cart list to update UI
              print('DEBUG: Refreshing cart list');
              await _cartService.fetchCartList();
              print('DEBUG: Cart list refreshed');

              showAppSnackBar(title: 'Payment completed successfully!', type: SnackBarType.success);

              // Navigate to order confirmation screen
              print('DEBUG: Navigating to order confirmation screen');
              Get.offAndToNamed(AppRoutes.cartConfirm, arguments: {'orderId': orderId, 'contactNumber': contactNumber, 'paymentMethod': 'biti_payment', 'transactionId': transactionId});
              print('DEBUG: Order completion process finished successfully');
            } else {
              print('ERROR: Invalid order response data - no orders found');
              showAppSnackBar(title: 'Order created but no order ID received', type: SnackBarType.error);
            }

          case Failure(error: final error):
            print('ERROR: Order API call failed: ${NetworkExceptions.getErrorMessage(error)}');
            showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
        }
      } catch (e, stackTrace) {
        print('ERROR: Exception in _completeBitiOrder: $e');
        print('ERROR: Stack trace: $stackTrace');
        showAppSnackBar(title: 'Order completion error: ${e.toString()}', type: SnackBarType.error);
      } finally {
        isLoading.value = false;
        print('DEBUG: Set loading to false for order completion');
      }
    });
  }
}
