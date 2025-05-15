import 'package:dio/dio.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_response.dart';
import 'package:sixam_mart_user/base/dio_client.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';

class BaseRepository {
  late DioClient dioClient;
  final String baseUrl;
  final BaseOptions? options;

  BaseRepository({required this.baseUrl, this.options}) {
    dioClient = DioClient(Dio(options), baseUrl: baseUrl);
  }

  Future<ApiResult> handleApiRequest(Future<dynamic> Function() request) async {
    try {
      final res = await request();
      BaseResponse response = BaseResponse.fromJson(res);
      return ApiResult.success(response);
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error);
    }
  }
}
