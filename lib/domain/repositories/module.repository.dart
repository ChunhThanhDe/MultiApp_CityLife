import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class ModuleApiPath {
  static const String getModules = '/api/v2/store/listModules';
  static const String getHomeBanner = '/api/v2/store/listOffer';
}

class ModuleRepository extends BaseRepository {
  ModuleRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> getModules() async {
    return handleApiRequest(() => dioClient.get(ModuleApiPath.getModules));
  }

  Future<ApiResult> getHomeBanner({required int moduleId, required int userId}) async {
    return handleApiRequest(() => dioClient.get(ModuleApiPath.getHomeBanner, queryParameters: {'moduleId': moduleId, 'user_id': userId}));
  }
}
