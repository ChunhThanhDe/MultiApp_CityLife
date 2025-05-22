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
import 'package:sixam_mart_user/domain/models/request/login_request.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_overlay.dart';

enum LoginMethod {
  email,
  phone,
}

class SignInController extends BaseController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();
  var loginMethod = LoginMethod.email.obs;
  final TextEditingController inputController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var countryDialCode = '+1'.obs;

  void toggleLoginMethod() {
    inputController.clear();
    loginMethod.value = loginMethod.value == LoginMethod.email ? LoginMethod.phone : LoginMethod.email;
  }

  Future<void> onSubmit() async {
    closeKeyboard();
    if (!formKey.currentState!.validate()) {
      return;
    }
    isLoading.value = true;

    final bool isEmail = loginMethod.value == LoginMethod.email;
    final LoginRequest request = LoginRequest(
      loginType: 'manual',
      emailOrPhone: inputController.text,
      fieldType: isEmail ? 'email' : 'phone',
      password: passwordController.text,
    );

    final ApiResult result = await showLoadingOverlay(
      api: _authRepository.login(request),
    );

    switch (result) {
      case Success(:final data):
        if (data.statusCode != 200) {
          final errorResponse = ErrorResponse.fromJson(data.data);
          Get.snackbar('Error', errorResponse.errors.first.message, snackPosition: SnackPosition.BOTTOM);
          isLoading.value = false;
          return;
        }
        final userAuthInfo = UserAuthInfo.fromJson(data.data);
        AppStorage.setString(SharedPreferencesKeys.userAuthInfo, jsonEncode(userAuthInfo.toJson()));
        Get.find<AppProvider>().updateUserAuthInfo(userAuthInfo);

        Get.offAllNamed(AppRoutes.root);
        isLoading.value = false;
        break;
      case Failure(:final error):
        Get.snackbar('Error', error.toString(), snackPosition: SnackPosition.BOTTOM);
        isLoading.value = false;
        break;
    }
  }

  onCountryCodeChanged(CountryCode countryCode) {
    countryDialCode.value = countryCode.dialCode ?? '+1';
  }
}
