import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class DeliveryCheckoutController extends BaseController {
  var selectedDeliveryInstruction = 0.obs;
  var selectedBuildingType = (-1).obs;

  final Completer<GoogleMapController> mapController = Completer<GoogleMapController>();

  final CameraPosition googlePlex = CameraPosition(
    target: LatLng(21.028511, 105.804817),
    zoom: 14.4746,
  );

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
}
