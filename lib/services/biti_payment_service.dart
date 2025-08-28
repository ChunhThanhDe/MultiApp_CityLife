import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/domain/models/request/payment/biti_payment_request.dart';
import 'package:sixam_mart_user/domain/models/response/payment/biti_payment_response.dart';
import 'package:sixam_mart_user/domain/models/response/payment/biti_verify_response.dart';
import 'package:sixam_mart_user/domain/repositories/biti_payment_repository.dart';

class BitiPaymentService extends GetxService {
  BitiPaymentService(this._bitiPaymentRepository);
  final BitiPaymentRepository _bitiPaymentRepository;

  final RxBool isProcessingPayment = false.obs;
  final RxString currentTransactionId = ''.obs;
  final Rx<BitiPaymentResponse?> lastPaymentResponse = Rx<BitiPaymentResponse?>(null);
  final Rx<BitiVerifyResponse?> lastVerifyResponse = Rx<BitiVerifyResponse?>(null);

  /// Initiates a Biti payment and returns the payment response
  Future<BitiPaymentResponse?> initiatePayment({
    required String cancelUrl,
    required String successUrl,
    required String clientReferenceId,
    required double paymentAmount,
    required String currencyCode,
    required String description,
    String? customerEmail,
    String? customerPhone,
    String? ipnUrl,
  }) async {
    try {
      final request = BitiPaymentRequest(
        cancelUrl: cancelUrl,
        successUrl: successUrl,
        ipnUrl: ipnUrl,
        clientReferenceId: clientReferenceId,
        paymentAmount: paymentAmount,
        description: description,
        currencyCode: currencyCode,
        customerEmail: customerEmail,
        customerPhone: customerPhone,
      );

      final result = await _bitiPaymentRepository.initiatePayment(request);
      
      switch (result) {
        case Success(response: final response):
          if (response.statusCode == 200 && response.data != null) {
            final bitiResponse = BitiPaymentResponse.fromJson(response.data);
            lastPaymentResponse.value = bitiResponse;
            return bitiResponse;
          }
          return null;
        case Failure():
          return null;
      }
    } catch (e) {
      return null;
    }
  }

  /// Verifies a Biti payment status
  Future<BitiVerifyResponse?> verifyPayment(String transactionId) async {
    try {
      final result = await _bitiPaymentRepository.verifyPayment(transactionId);
      
      switch (result) {
        case Success(response: final response):
          if (response.statusCode == 200 && response.data != null) {
            final bitiResponse = BitiVerifyResponse.fromJson(response.data);
            lastVerifyResponse.value = bitiResponse;
            return bitiResponse;
          }
          return null;
        case Failure():
          return null;
      }
    } catch (e) {
      return null;
    }
  }

  /// Checks if payment is completed successfully
  bool isPaymentCompleted(BitiVerifyResponse? verifyResponse) {
    return verifyResponse?.status == 'success' && verifyResponse?.payload?.status == 'completed';
  }

  /// Checks if payment is still pending
  bool isPaymentPending(BitiVerifyResponse? verifyResponse) {
    return verifyResponse?.status == 'success' && verifyResponse?.payload?.status == 'pending';
  }

  String? getPaymentUrl(BitiPaymentResponse? paymentResponse) {
    return paymentResponse?.payload?.paymentUrl;
  }

  String? getTransactionId(BitiPaymentResponse? paymentResponse) {
    return paymentResponse?.payload?.transactionId;
  }

  double? getPaymentAmount(BitiPaymentResponse? paymentResponse) {
    return paymentResponse?.payload?.amount;
  }

  String? getPaymentCurrency(BitiPaymentResponse? paymentResponse) {
    return paymentResponse?.payload?.currency;
  }

  String? getPaymentExpiration(BitiPaymentResponse? paymentResponse) {
    return paymentResponse?.payload?.expiration;
  }

  String? getVerificationTransactionId(BitiVerifyResponse? verifyResponse) {
    return verifyResponse?.payload?.transactionId;
  }

  String? getVerificationStatus(BitiVerifyResponse? verifyResponse) {
    return verifyResponse?.payload?.status;
  }

  /// Resets the service state
  void reset() {
    isProcessingPayment.value = false;
    currentTransactionId.value = '';
    lastPaymentResponse.value = null;
    lastVerifyResponse.value = null;
  }

  /// Gets the current transaction amount
  double? getCurrentAmount() {
    return lastPaymentResponse.value?.payload?.amount;
  }

  /// Gets the current currency
  String? getCurrentCurrency() {
    return lastPaymentResponse.value?.payload?.currency;
  }
}