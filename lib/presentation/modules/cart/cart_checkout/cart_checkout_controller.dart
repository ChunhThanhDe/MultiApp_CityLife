import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/get_checkout_summary_response.dart';
import 'package:sixam_mart_user/domain/repositories/cart_repository.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';

class CartCheckoutController extends BaseController {
  final CartRepository _cartRepository = Get.find<CartRepository>();

  final Rx<GetCheckoutSummaryResponse?> checkoutSummary = Rx<GetCheckoutSummaryResponse?>(null);
  final RxString selectedDeliveryOption = RxString('standard');
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
            final standardOption = checkoutSummary.value!.deliveryOptions!
                .firstWhereOrNull((option) => option.key == 'standard');
            if (standardOption != null) {
              selectedDeliveryOption.value = standardOption.key!;
            }
          }
          
        case Failure(error: final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }
      
      isLoading.value = false;
    });
  }

  void selectDeliveryOption(String optionKey) {
    selectedDeliveryOption.value = optionKey;
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
    
    final selectedOption = checkoutSummary.value!.deliveryOptions!
        .firstWhereOrNull((option) => option.key == selectedDeliveryOption.value);
    
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
    
    return checkoutSummary.value!.addresses!
        .firstWhereOrNull((address) => address.id == selectedAddressId.value);
  }

  DeliveryOption? get selectedDeliveryOptionData {
    if (checkoutSummary.value?.deliveryOptions == null) return null;
    
    return checkoutSummary.value!.deliveryOptions!
        .firstWhereOrNull((option) => option.key == selectedDeliveryOption.value);
  }

  PaymentMethod? get selectedPaymentMethodData {
    if (checkoutSummary.value?.paymentMethods == null) return null;
    
    return checkoutSummary.value!.paymentMethods!
        .firstWhereOrNull((method) => method.key == selectedPaymentMethod.value);
  }
}
