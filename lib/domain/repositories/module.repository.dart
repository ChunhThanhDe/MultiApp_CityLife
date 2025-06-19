import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class ModuleApiPath {
  static const String getModules = '/api/v2/store/listModules';
}

class ModuleRepository extends BaseRepository {
  ModuleRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> getModules() async {
    return handleApiRequest(() => dioClient.get(ModuleApiPath.getModules));
  }
}
