import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app_provider.dart';

abstract class BaseController extends GetxController {
  final AppProvider appProvider = Get.find<AppProvider>();

  final isLoading = false.obs;

  void closeKeyboard() => FocusScope.of(Get.context!).unfocus();

  Future<void> safeExecute(Future<void> Function() function) async {
    try {
      await function();
    } catch (e) {
      log('🔍 error: $e', name: 'BaseController');
    }
  }
}
