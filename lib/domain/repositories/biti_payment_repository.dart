import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/biti_payment_config.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/request/payment/biti_payment_request.dart';

/// API endpoints for Biti payment operations
class BitiPaymentApiPath {
  static const String initiatePayment = '/api/method/initiate-payment';
  static const String verifyPayment = '/api/method/verify-payment';
}

/// Repository for Biti payment API operations
class BitiPaymentRepository extends BaseRepository {
  BitiPaymentRepository() : super(baseUrl: BitiPaymentConfig.baseUrl);

  /// Creates a custom Dio instance for Biti payments without authorization headers
  Dio _createBitiDio() {
    final dio = Dio();
    dio.options.baseUrl = BitiPaymentConfig.baseUrl;
    dio.options.connectTimeout = const Duration(seconds: 10);
    dio.options.receiveTimeout = const Duration(seconds: 10);
    dio.options.receiveDataWhenStatusError = true;
    dio.options.validateStatus = (status) {
      return status != null && status >= 200 && status < 500;
    };
    dio.options.followRedirects = false;

    return dio;
  }

  /// Initiates a payment request with Biti payment gateway
  Future<ApiResult> initiatePayment(BitiPaymentRequest request) async {
    final headers = {'Content-Type': 'application/json', 'X-Environment': BitiPaymentConfig.environmentHeader, 'X-Merchant-Key': BitiPaymentConfig.merchantKey, 'X-API-Key': BitiPaymentConfig.apiKey};

    final bitiDio = _createBitiDio();

    try {
      final response = await bitiDio.post(
        BitiPaymentApiPath.initiatePayment,
        data: request.toJson(),
        options: Options(headers: headers),
      );
      return ApiResult.success(response);
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error);
    }
  }

  /// Verifies a payment status using transaction ID
  Future<ApiResult> verifyPayment(String transactionId) async {
    final headers = {'Content-Type': 'application/json', 'X-Environment': BitiPaymentConfig.environmentHeader, 'X-Merchant-Key': BitiPaymentConfig.merchantKey, 'X-API-Key': BitiPaymentConfig.apiKey};

    final bitiDio = _createBitiDio();

    try {
      final response = await bitiDio.get(
        BitiPaymentApiPath.verifyPayment,
        queryParameters: {'trx_id': transactionId},
        options: Options(headers: headers),
      );
      return ApiResult.success(response);
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error);
    }
  }
}
