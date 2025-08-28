import 'package:dio/dio.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/request/payment/biti_payment_request.dart';

/// API endpoints for Biti payment operations
class BitiPaymentApiPath {
  static const String initiatePayment = '/api/method/initiate-payment';
  static const String verifyPayment = '/api/method/verify-payment';
}

/// Repository for Biti payment API operations
class BitiPaymentRepository extends BaseRepository {
  BitiPaymentRepository() : super(baseUrl: 'https://app.biti.so');

  /// Initiates a payment request with Biti payment gateway
  Future<ApiResult> initiatePayment(BitiPaymentRequest request) async {
    final headers = {
      'Content-Type': 'application/json',
      'X-Environment': 'sandbox', // Change to 'production' for live environment
      'X-Merchant-Key': 'TEST_16D9F8A47BB3C96C',
      'X-API-Key': 'n1-oPRJtKUH0j6YWut42OpKobLwYsCHK',
    };

    return handleApiRequest(
      () => dioClient.post(
        BitiPaymentApiPath.initiatePayment,
        data: request.toJson(),
        options: Options(headers: headers),
      ),
    );
  }

  /// Verifies a payment status using transaction ID
  Future<ApiResult> verifyPayment(String transactionId) async {
    final headers = {
      'Content-Type': 'application/json',
      'X-Environment': 'sandbox', // Change to 'production' for live environment
      'X-Merchant-Key': 'TEST_16D9F8A47BB3C96C',
      'X-API-Key': 'n1-oPRJtKUH0j6YWut42OpKobLwYsCHK',
    };

    return handleApiRequest(
      () => dioClient.get(
        BitiPaymentApiPath.verifyPayment,
        queryParameters: {'trx_id': transactionId},
        options: Options(headers: headers),
      ),
    );
  }
}