import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/request/authentication/sign_in_request.dart';
import 'package:sixam_mart_user/domain/models/request/authentication/sign_up_request.dart';

class AuthApiPath {
  static const String login = '/api/v1/auth/login';
  static const String signUp = '/api/v1/auth/sign-up';
}

class AuthRepository extends BaseRepository {
  Future<ApiResult> signUp(SignUpRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();

    if (request.email != null && request.email!.isNotEmpty) {
      requestData.remove('phone');
    } else if (request.phone != null && request.phone!.isNotEmpty) {
      requestData.remove('email');
    }

    return handleApiRequest(() => dioClient.post(AuthApiPath.signUp, data: requestData));
  }

  Future<ApiResult> login(SignInRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();
    return handleApiRequest(() => dioClient.post(AuthApiPath.login, data: requestData));
  }
}
