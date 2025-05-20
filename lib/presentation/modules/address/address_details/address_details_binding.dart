import 'package:get/get.dart';

import '../search_address/search_address_controller.dart';
import 'address_details_controller.dart';

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
