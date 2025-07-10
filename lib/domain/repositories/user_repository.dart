import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/base/dio_client.dart';

class UserApiPath {
  static const String getUserInfo = '/api/v1/customer/info';
}

class UserRepository extends BaseRepository {
  UserRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> getUserInfo() async {
    return handleApiRequest(() => dioClient.get(UserApiPath.getUserInfo, options: Options(headers: getAuthHeader())));
  }
}
