import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/search/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchController());
  }
}
