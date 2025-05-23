import 'dart:convert';

import 'package:country_code_picker/src/country_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/data/app_storage.dart';
import 'package:sixam_mart_user/app_provider.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/domain/entities/user_auth_info.dart';
import 'package:sixam_mart_user/domain/models/request/sign_up_request.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/accept_tos.dart';
import 'package:sixam_mart_user/presentation/shared/app_overlay.dart';

enum SignUpMethod { email, phone }

class SignUpController extends BaseController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController dayController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final List<String> months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  final List<String> days = List.generate(31, (index) => (index + 1).toString());
  final List<String> years = List.generate(100, (index) => (DateTime.now().year - index).toString());

  final currentMethod = SignUpMethod.email.obs;
  final countryDialCode = '+1'.obs;

  void selectMonth(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final String? selectedMonth = await _showSelectionDialog(context, 'Select Month', months);
    if (selectedMonth != null) {
      monthController.text = selectedMonth;
    }
  }

  void selectDay(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final String? selectedDay = await _showSelectionDialog(context, 'Select Day', days);
    if (selectedDay != null) {
      dayController.text = selectedDay;
    }
  }

  void selectYear(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final String? selectedYear = await _showSelectionDialog(context, 'Select Year', years);
    if (selectedYear != null) {
      yearController.text = selectedYear;
    }
  }

  Future<String?> _showSelectionDialog(BuildContext context, String title, List<String> items) async {
    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SizedBox(
            width: double.maxFinite,
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(items[index]),
                  onTap: () {
                    Navigator.of(context).pop(items[index]);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  Future<void> onSubmit() async {
    closeKeyboard();
    if (!formKey.currentState!.validate()) {
      return;
    }

    bool isEmailMethod = currentMethod.value == SignUpMethod.email;
    isLoading.value = true;

    final birthday = _getBirthdayFromInputs();

    final SignUpRequest request = SignUpRequest(
      name: nameController.text,
      password: passwordController.text,
      birthday: birthday,
      email: isEmailMethod ? emailController.text : null,
      phone: !isEmailMethod ? phoneController.text : null,
    );

    final ApiResult result = await showLoadingOverlay(
      api: _authRepository.signUp(request),
    );

    switch (result) {
      case Success(:final data):
        if (data.statusCode != 200) {
          final errorResponse = ErrorResponse.fromJson(data.data);
          Get.snackbar('Error', errorResponse.errors.first.message);
          return;
        }

        final userAuthInfo = UserAuthInfo.fromJson(data.data);
        AppStorage.setString(SharedPreferencesKeys.userAuthInfo, jsonEncode(userAuthInfo.toJson()));
        Get.find<AppProvider>().updateUserAuthInfo(userAuthInfo);

        Get.offAll(() => AcceptTos());
        isLoading.value = false;
      case Failure(:final error):
        Get.snackbar('Error', error.toString());
        isLoading.value = false;
    }
  }

  String? _getBirthdayFromInputs() {
    if (monthController.text.isEmpty || dayController.text.isEmpty || yearController.text.isEmpty) {
      return null;
    }
    return '${yearController.text}-${monthController.text.padLeft(2, '0')}-${dayController.text.padLeft(2, '0')}';
  }

  void toggleMethod() {
    emailController.clear();
    currentMethod.value = currentMethod.value == SignUpMethod.email ? SignUpMethod.phone : SignUpMethod.email;
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    monthController.dispose();
    dayController.dispose();
    yearController.dispose();
    super.onClose();
  }

  onCountryCodeChanged(CountryCode p1) {
    countryDialCode.value = p1.dialCode ?? '+1';
  }
}
