import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

class ServiceFoodController extends ServiceController {
  @override
  void onReady() {
    super.onReady();
    loadCurrentServiceTypeData();
  }
}
