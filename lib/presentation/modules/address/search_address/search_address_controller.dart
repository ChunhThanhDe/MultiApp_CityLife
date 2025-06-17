import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

enum SearchItemType {
  history,
  address,
  nearby,
}

class SearchItem {
  final String title;
  final String address;
  final SearchItemType type;
  SearchItem({required this.title, required this.address, required this.type});
}

class SearchAddressController extends BaseController {
  final TextEditingController searchAddressController = TextEditingController();
  var isShowClearButton = false.obs;
  void onSearchChanged(String value) {
    isShowClearButton.value = value.isNotEmpty;
  }

  void onClearSearch() {
    searchAddressController.clear();
    isShowClearButton.value = false;
  }
}
