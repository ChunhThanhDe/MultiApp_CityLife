import 'package:dio/dio.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/request/change_password_request.dart';
import 'package:sixam_mart_user/domain/models/request/update_profile_request.dart';

class UserApiPath {
  static const String getUserInfo = '/api/v1/customer/info';
  static const String updateProfile = '/api/v1/customer/update-profile';
  static const String changePassword = '/api/v1/customer/change-password';
}

class UserRepository extends BaseRepository {
  Future<ApiResult> getUserInfo() async {
    return handleApiRequest(() => dioClient.get(UserApiPath.getUserInfo));
  }

  Future<ApiResult> updateProfile(UpdateProfileRequest request, {String? imagePath}) async {
    if (imagePath != null) {
      // Use FormData for multipart request when image is included
      final formData = FormData.fromMap({
        ...request.toJson(),
        'image': await MultipartFile.fromFile(imagePath),
      });
      return handleApiRequest(() => dioClient.post(UserApiPath.updateProfile, data: formData));
    } else {
      // Use JSON for text-only updates
      return handleApiRequest(() => dioClient.post(UserApiPath.updateProfile, data: request.toJson()));
    }
  }

  Future<ApiResult> changePassword(ChangePasswordRequest request) async {
    return handleApiRequest(() => dioClient.post(UserApiPath.changePassword, data: request.toJson()));
  }
}
