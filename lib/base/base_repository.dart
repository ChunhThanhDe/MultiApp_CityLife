import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/dio_client.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';

class BaseRepository {

  BaseRepository({this.baseUrl = AppStrings.baseUrl, this.options, this.interceptors}) {
    dioClient = DioClient(Dio(options), baseUrl: baseUrl, interceptors: interceptors);
  }
  late DioClient dioClient;
  final String baseUrl;
  final BaseOptions? options;
  final List<Interceptor>? interceptors;

  Future<ApiResult> handleApiRequest<T>(Future<Response<T>> Function() request) async {
    try {
      final Response<T> res = await request();
      return ApiResult.success(res);
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error);
    }
  }
}
