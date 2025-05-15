import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/request/login_request.dart';

class AuthApiPath {
  static const String login = '/login';
}

class AuthRepository extends BaseRepository {
  AuthRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> login(LoginRequest request) async {
    return await handleApiRequest(() => dioClient.post(AuthApiPath.login, data: request.toJson()));
  }
}
