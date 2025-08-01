import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/repositories/service_repository.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/home_delivery/home_delivery_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/food/service_food_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/laundry/service_laundry_controller.dart';

import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceController());
    Get.lazyPut(() => ServiceLaundryController());
    Get.lazyPut(() => HomeDeliveryController());
    Get.lazyPut(() => ServiceFoodController());
  }
}
