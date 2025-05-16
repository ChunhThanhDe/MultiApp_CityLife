import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class AccountManageController extends BaseController {
  var firstName = "Abdulkadir".obs;
  var lastName = "Ali".obs;
  var email = "kadir@lukit.com".obs;
  var phone = "+1 (000) 000-0000".obs;
  var day = "20".obs;
  var month = "02".obs;
  var year = "1992".obs;

  // If you want to change value, just do: firstName.value = "New Value";
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
