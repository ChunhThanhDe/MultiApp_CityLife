import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/request/login_request.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/presentation/shared/app_overlay.dart';

enum LoginMethod {
  email,
  phone,
}

class SignInController extends BaseController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();
  var loginMethod = LoginMethod.email.obs;
  final TextEditingController inputController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var countryDialCode = '+1'.obs;

  void toggleLoginMethod() {
    loginMethod.value = loginMethod.value == LoginMethod.email ? LoginMethod.phone : LoginMethod.email;
  }

  Future<void> onSubmit(BuildContext context) async {
    final ApiResult result = await showLoadingOverlay(api: _authRepository.login(LoginRequest(email: 'test@test.com', password: '123456')));
    switch (result) {
      case Success(:final data):
        print(data);
      case Failure(:final error):
        print(error);
    }
  }
}
