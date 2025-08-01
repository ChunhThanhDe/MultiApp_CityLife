import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/address/search_address/search_address_controller.dart';
import 'package:sixam_mart_user/presentation/modules/address/address_details/address_details_controller.dart';

class AddressDetailsBinding extends Bindings {
  @override
  void dependencies() {
    final searchItem = Get.arguments;
    if (searchItem is SearchItem) {
      Get.lazyPut(() => AddressDetailsController(searchItem: searchItem));
    } else {
      throw Exception('Search item is not found');
    }
  }
}
