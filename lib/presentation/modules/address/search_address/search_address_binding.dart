import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/address/search_address/search_address_controller.dart';

class SearchAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchAddressController());
  }
}
