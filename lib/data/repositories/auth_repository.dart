import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class AuthRepository extends BaseRepository {
  AuthRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> login(String email, String password) async {
    return await handleApiRequest(() => dioClient.post('/login', data: {
          'email': email,
          'password': password,
        }));
  }
}
