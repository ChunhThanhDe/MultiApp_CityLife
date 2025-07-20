import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class UserApiPath {
  static const String getUserInfo = '/api/v1/customer/info';
}

class UserRepository extends BaseRepository {
  Future<ApiResult> getUserInfo() async {
    return handleApiRequest(() => dioClient.get(UserApiPath.getUserInfo));
  }
}
