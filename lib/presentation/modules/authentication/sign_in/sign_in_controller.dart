import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/page_param/verification_page_param.dart';
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
    await showLoadingOverlay(api: Future.delayed(const Duration(seconds: 2)));

    // final ApiResult result = await showLoadingOverlay(api: _authRepository.login(LoginRequest(email: 'test@test.com', password: '123456')));
    // switch (result) {
    //   case Success(:final data):
    //     print(data);
    //   case Failure(:final error):
    //     print(error);
    // }
    isLoading.value = false;
    Get.toNamed(
      AppRoutes.verification,
      arguments: VerificationPageParam(
        method: loginMethod.value == LoginMethod.email ? VerificationMethod.email : VerificationMethod.phoneNumber,
        verificationId: inputController.text,
        type: VerificationType.signIn,
      ),
    );
  }
}
