import 'package:get/get.dart';
import 'package:sixam_mart_user/app_provider.dart';

abstract class BaseController extends GetxController {
  final AppProvider appProvider = Get.find<AppProvider>();

  final isLoading = false.obs;

  void onBackpress() {
    Get.back();
  }
}
