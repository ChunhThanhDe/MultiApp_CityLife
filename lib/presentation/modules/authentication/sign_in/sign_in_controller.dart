import 'dart:convert';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';
import 'package:sixam_mart_user/domain/models/request/sign_in_request.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';

enum LoginMethod {
  email('Email', 'email'),
  phone('Phone', 'phone');

  final String label;
  final String fieldType;

  const LoginMethod(this.label, this.fieldType);
}

class SignInController extends BaseController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();
  final TextEditingController inputController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final countryDialCode = '+1'.obs;
  final loginMethod = LoginMethod.email.obs;

  void toggleLoginMethod() {
    inputController.clear();
    loginMethod.value = loginMethod.value == LoginMethod.email ? LoginMethod.phone : LoginMethod.email;
  }

  Future<void> onSubmit() async {
    safeExecute(() async {
      closeKeyboard();
      if (!formKey.currentState!.validate()) {
        return;
      }
      isLoading.value = true;
      final SignInRequest request = SignInRequest(loginType: SignInType.manual, emailOrPhone: inputController.text, fieldType: loginMethod.value.fieldType, password: passwordController.text);

      final ApiResult result = await showAppOverlayLoading(future: _authRepository.login(request));

      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            isLoading.value = false;
            return;
          }
          final userAuthInfo = UserAuthInfo.fromJson(response.data);
          AppStorage.setString(SharedPreferencesKeys.userAuthInfo, jsonEncode(userAuthInfo.toJson()));
          Get.find<AppProvider>().updateUserAuthInfo(userAuthInfo);

          Get.offAllNamed(AppRoutes.root);
          isLoading.value = false;
          break;
        case Failure(:final error):
          showAppSnackBar(title: error.toString(), type: SnackBarType.error);
          isLoading.value = false;
          break;
      }
    });
  }

  void onCountryCodeChanged(CountryCode countryCode) {
    countryDialCode.value = countryCode.dialCode ?? '+1';
  }
}
