import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/page_param/sign_in_page_param.dart';
import 'package:sixam_mart_user/domain/models/request/login_request.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/presentation/shared/app_overlay.dart';

class SignInController extends BaseController {
  final SignInPageParam? pageParam;

  SignInController({this.pageParam});

  final AuthRepository _authRepository = Get.find<AuthRepository>();

  Future<void> login() async {
    final ApiResult result = await showLoadingOverlay(api: _authRepository.login(LoginRequest(email: 'test@test.com', password: '123456')));
    switch (result) {
      case Success(:final data):
        print(data);
      case Failure(:final error):
        print(error);
    }
  }
}
