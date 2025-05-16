import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class AddressController extends BaseController {
  final TextEditingController searchAddressController = TextEditingController();
  var isShowClearButton = false.obs;
  onSearchChanged(String value) {
    isShowClearButton.value = value.isNotEmpty;
  }

  onClearSearch() {
    searchAddressController.clear();
    isShowClearButton.value = false;
  }
}
