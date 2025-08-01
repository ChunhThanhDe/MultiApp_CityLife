import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

class ServiceFoodController extends ServiceController {
  @override
  void onReady() {
    super.onReady();
    // Load food service data specifically
    loadServiceTypeData(ServiceType.food as String);
  }
}
