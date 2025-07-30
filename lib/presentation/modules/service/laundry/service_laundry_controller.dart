import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

class ServiceLaundryController extends ServiceController {
  @override
  void onReady() {
    super.onReady();
    // Load laundry service data specifically
    loadServiceTypeData(ServiceType.laundry);
  }
}