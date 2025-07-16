import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class SearchController extends BaseController {
  final FocusNode focusNode = FocusNode();

  @override
  void onClose() {
    focusNode.dispose();
    super.onClose();
  }
}
