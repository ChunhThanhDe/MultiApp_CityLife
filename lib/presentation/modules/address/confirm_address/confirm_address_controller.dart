import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class ConfirmAddressController extends BaseController {
  final LatLng latLng;
  final Completer<GoogleMapController> mapController = Completer<GoogleMapController>();
  late final CameraPosition cameraPosition;
  final mapStyle = RxnString();

  ConfirmAddressController({required this.latLng}) {
    cameraPosition = CameraPosition(target: latLng, zoom: 16);
  }

  @override
  void onInit() {
    super.onInit();
    _loadMapStyle();
  }

  Future<void> _loadMapStyle() async {
    final style = await rootBundle.loadString('assets/map_style.json');
    mapStyle.value = style;
  }
}
