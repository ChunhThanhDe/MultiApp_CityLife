import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';

class AppProvider {
  static final AppProvider _instance = AppProvider._internal();

  factory AppProvider() {
    return _instance;
  }

  AppProvider._internal();

  final Rx<UserAuthInfo> userAuthInfo = UserAuthInfo().obs;

  void updateUserAuthInfo(UserAuthInfo userAuthInfo) {
    this.userAuthInfo.value = userAuthInfo;
  }
}
