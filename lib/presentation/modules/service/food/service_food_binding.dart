import 'package:get/get.dart';

import 'package:sixam_mart_user/presentation/modules/service/food/service_food_controller.dart';

class ServiceFoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceFoodController());
  }
}