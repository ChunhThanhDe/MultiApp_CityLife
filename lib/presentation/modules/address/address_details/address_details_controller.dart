import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

import '../search_address/search_address_controller.dart';

class AddressDetailsController extends BaseController {
  final SearchItem searchItem;
  AddressDetailsController({required this.searchItem});

  final TextEditingController buildingNumberController = TextEditingController();
  final TextEditingController buildingNameController = TextEditingController();
  final TextEditingController addressLabelController = TextEditingController();

  var selectedDeliveryInstruction = 0.obs;

  void setSelectedDeliveryInstruction(int index) {
    selectedDeliveryInstruction.value = index;
  }
}
