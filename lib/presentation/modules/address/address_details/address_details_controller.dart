import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/address/search_address/search_address_controller.dart';

class AddressDetailsController extends BaseController {
  AddressDetailsController({required this.searchItem});
  final SearchItem searchItem;

  final TextEditingController buildingNumberController = TextEditingController();
  final TextEditingController buildingNameController = TextEditingController();
  final TextEditingController addressLabelController = TextEditingController();

  var selectedDeliveryInstruction = 0.obs;
  var selectedBuildingType = (-1).obs;

  final Completer<GoogleMapController> mapController = Completer<GoogleMapController>();

  static const CameraPosition googlePlex = CameraPosition(target: LatLng(21.028511, 105.804817), zoom: 14.4746);

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
    (title: 'Hotel', icon: Assets.icons.icHotel.svg()),
    (title: 'Other', icon: Assets.icons.icThreedot.svg()),
  ];

  final mapStyle = RxnString();

  @override
  void onInit() {
    super.onInit();
    _loadMapStyle();
  }

  Future<void> _loadMapStyle() async {
    final style = await rootBundle.loadString('assets/maps/map_style.json');
    mapStyle.value = style;
  }

  void setSelectedDeliveryInstruction(int index) {
    selectedDeliveryInstruction.value = index;
  }
}
