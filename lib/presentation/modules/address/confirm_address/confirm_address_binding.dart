import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'confirm_address_controller.dart';

class ConfirmAddressBinding extends Bindings {
  @override
  void dependencies() {
    final latLng = Get.arguments;
    if (latLng is LatLng) {
      Get.lazyPut(() => ConfirmAddressController(latLng: latLng));
    } else {
      throw Exception('LatLng is not found');
    }
  }
}
