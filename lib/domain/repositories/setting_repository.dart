import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/request/update_appearance_request.dart';

class SettingApiPath {
  static const String updateAppearance = '/api/v1/customer/update-appearance';
}

class SettingRepository extends BaseRepository {
  SettingRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> updateAppearance(UpdateAppearanceRequest request) async {
    final headers = <String, dynamic>{};
    headers['X-localization'] = 'zn';
    return handleApiRequest(
      () => dioClient.post(
        SettingApiPath.updateAppearance,
        data: request.toJson(),
        options: Options(headers: headers),
      ),
    );
  }
}
