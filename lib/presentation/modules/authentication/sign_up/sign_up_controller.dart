import 'package:country_code_picker/src/country_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/page_param/verification_page_param.dart';
import 'package:sixam_mart_user/domain/models/request/sign_up_request.dart';
import 'package:sixam_mart_user/domain/repositories/auth_repository.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
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

  // Months for dropdown
  final List<String> months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

  // Days for dropdown (1-31)
  final List<String> days = List.generate(31, (index) => (index + 1).toString());

  // Years for dropdown (last 100 years)
  final List<String> years = List.generate(100, (index) => (DateTime.now().year - index).toString());

  var currentMethod = SignUpMethod.email.obs;

  var countryDialCode = '+1'.obs;

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
    // if (!formKey.currentState!.validate()) {
    //   return;
    // }

    // Check if name is provided
    if (nameController.text.isEmpty) {
      Get.snackbar('Error', 'Full name is required', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    if (passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Password is required', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    // Check if email or phone is provided based on the current method
    bool isEmailMethod = currentMethod.value == SignUpMethod.email;
    if (isEmailMethod && emailController.text.isEmpty) {
      Get.snackbar('Error', 'Email is required', snackPosition: SnackPosition.BOTTOM);
      return;
    } else if (!isEmailMethod && phoneController.text.isEmpty) {
      Get.snackbar('Error', 'Phone number is required', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    isLoading.value = true;

    // Get birthday if provided
    final birthday = "2003-10-17";

    // Create the request object based on the current sign up method
    final SignUpRequest request = SignUpRequest(
      name: nameController.text,
      password: passwordController.text,
      birthday: birthday,
      email: isEmailMethod ? emailController.text : null,
      phone: !isEmailMethod ? phoneController.text : null,
    );

    // Call the API
    final ApiResult result = await showLoadingOverlay(
      api: _authRepository.signUp(request),
    );

    // Process the result
    switch (result) {
      case Success(:final data):
        if (data.statusCode != 200) {
          Get.snackbar('Error', 'Account creation failed', snackPosition: SnackPosition.BOTTOM);
          return;
        }

        Get.snackbar('Success', 'Account created successfully', snackPosition: SnackPosition.BOTTOM);
        print("API Success: ${data.toString()}");

        // Navigate to verification screen
        Get.toNamed(
          AppRoutes.verification,
          arguments: VerificationPageParam(
            method: isEmailMethod ? VerificationMethod.email : VerificationMethod.phoneNumber,
            verificationId: isEmailMethod ? emailController.text : phoneController.text,
            type: VerificationType.signUp,
          ),
        );
      case Failure(:final error):
        Get.snackbar('Error', error.toString(), snackPosition: SnackPosition.BOTTOM);
        print("API Error: $error");
    }

    isLoading.value = false;
  }

  String? _getBirthdayFromInputs() {
    // Return null if any of the birthday fields are empty
    if (monthController.text.isEmpty || dayController.text.isEmpty || yearController.text.isEmpty) {
      return null;
    }

    // Get month number (1-12)
    int monthNumber = months.indexOf(monthController.text) + 1;

    // Format as YYYY-MM-DD
    return '${yearController.text}-${monthNumber.toString().padLeft(2, '0')}-${dayController.text.padLeft(2, '0')}';
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
