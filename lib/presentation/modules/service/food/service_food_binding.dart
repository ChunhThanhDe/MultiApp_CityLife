import 'package:get/get.dart';

import 'service_food_controller.dart';

class ServiceFoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceFoodController());
  }
}