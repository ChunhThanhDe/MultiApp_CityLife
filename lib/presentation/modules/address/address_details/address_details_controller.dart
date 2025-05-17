import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

import '../search_address/search_address_controller.dart';

class AddressDetailsController extends BaseController {
  final SearchItem searchItem;
  AddressDetailsController({required this.searchItem});

  final TextEditingController buildingNumberController = TextEditingController();
  final TextEditingController buildingNameController = TextEditingController();
  final TextEditingController addressLabelController = TextEditingController();

  var selectedDeliveryInstruction = 0.obs;
  var selectedBuildingType = 0.obs;

  final deliveryOptions = [
    (title: 'Hand it to me', icon: Assets.icons.icCourierHands.svg()),
    (title: 'Leave it at my door', icon: Assets.icons.icDoor.svg()),
    (title: 'Leave at reception', icon: Assets.icons.icReception.svg()),
  ];

  final buildingTypes = [
    (title: 'House', icon: Assets.icons.icHouse.svg()),
    (title: 'Apartment', icon: Assets.icons.icApartment.svg()),
    (title: 'Hospital', icon: Assets.icons.icHospital.svg()),
    (title: 'Office', icon: Assets.icons.icReception.svg()),
    (title: 'Other', icon: Assets.icons.icThreedot.svg()),
  ];

  void setSelectedDeliveryInstruction(int index) {
    selectedDeliveryInstruction.value = index;
  }
}
