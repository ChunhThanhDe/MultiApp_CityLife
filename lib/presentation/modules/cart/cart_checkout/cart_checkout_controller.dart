import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/request/cart/order_now_request.dart';
import 'package:sixam_mart_user/domain/models/response/get_checkout_summary_response.dart';
import 'package:sixam_mart_user/domain/repositories/cart_repository.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/services/cart_service.dart';

class CartCheckoutController extends BaseController {
  final CartRepository _cartRepository = Get.find<CartRepository>();
  final CartService _cartService = Get.find<CartService>();

  final Rx<GetCheckoutSummaryResponse?> checkoutSummary = Rx<GetCheckoutSummaryResponse?>(null);
  final RxString selectedDeliveryOption = RxString('Standard'); // Default to 'Standard'
  final RxString selectedPaymentMethod = RxString('cash_on_delivery');
  final RxInt selectedAddressId = RxInt(0);
  final RxString promoCode = RxString('');

  @override
  void onInit() {
    super.onInit();
    getCheckoutSummary();
  }

  Future<void> getCheckoutSummary() async {
    await safeExecute(() async {
      isLoading.value = true;

      final ApiResult result = await _cartRepository.getCheckoutSummary();

      switch (result) {
        case Success(response: final response):
          if (response.statusCode != 200) {
            showAppSnackBar(title: 'Failed to load checkout summary', type: SnackBarType.error);
            return;
          }

          checkoutSummary.value = GetCheckoutSummaryResponse.fromJson(response.data);

          // Set default values
          if (checkoutSummary.value?.defaultAddress?.id != null) {
            selectedAddressId.value = checkoutSummary.value!.defaultAddress!.id!;
          }

          // Set default delivery option to standard
          if (checkoutSummary.value?.deliveryOptions?.isNotEmpty == true) {
            final standardOption = checkoutSummary.value!.deliveryOptions!.firstWhereOrNull((option) => option.key == 1);
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
    });
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

  void applyPromoCode(String code) {
    promoCode.value = code;
    // TODO: Implement promo code application API call
  }

  double get selectedDeliveryFee {
    if (checkoutSummary.value?.deliveryOptions == null) return 0.0;

    final selectedOption = checkoutSummary.value!.deliveryOptions!.firstWhereOrNull((option) => option.label == selectedDeliveryOption.value);

    return selectedOption?.fee ?? 0.0;
  }

  double get calculatedTotal {
    final subtotal = checkoutSummary.value?.subtotal ?? 0.0;
    final tax = checkoutSummary.value?.tax ?? 0.0;
    final discount = checkoutSummary.value?.discount ?? 0.0;

    return subtotal + selectedDeliveryFee + tax - discount;
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

  Future<void> orderNow() async {
    if (selectedAddressId.value == 0) {
      showAppSnackBar(title: 'Please select a delivery address', type: SnackBarType.error);
      return;
    }

    if (selectedPaymentMethod.value.isEmpty) {
      showAppSnackBar(title: 'Please select a payment method', type: SnackBarType.error);
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
}
