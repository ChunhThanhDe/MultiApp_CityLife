import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class ModuleApiPath {
  static const String getFastFoodStores = '/api/v1/stores/fast_food';
  static const String getGroceryStores = '/api/v1/stores/grocery';
}

class ModuleRepository extends BaseRepository {
  ModuleRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> getFastFoodStores({required int zoneId, required int moduleId, required int id}) async {
    return handleApiRequest(() => dioClient.get(ModuleApiPath.getFastFoodStores, options: Options(headers: {'zoneId': zoneId.toString(), 'moduleId': moduleId.toString(), 'id': id.toString()})));
  }

  Future<ApiResult> getGroceryStores({required int zoneId, required int moduleId, required int id}) async {
    return handleApiRequest(() => dioClient.get(ModuleApiPath.getGroceryStores, options: Options(headers: {'zoneId': zoneId.toString(), 'moduleId': moduleId.toString(), 'id': id.toString()})));
  }
}
