import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_checkout/cart_checkout_controller.dart';

class CartCheckoutBinding extends Bindings {
  @override
  void dependencies() {
    // Safely get serviceCart from arguments, with fallback to default food service
    final arguments = Get.arguments;
    ServiceEntity? serviceCart;

    if (arguments != null && arguments['serviceCart'] != null) {
      if (arguments['serviceCart'] is ServiceEntity) {
        serviceCart = arguments['serviceCart'] as ServiceEntity;
      } else if (arguments['serviceCart'] is String) {
        // Handle case where serviceCart is passed as a string (like 'laundry')
        final serviceType = arguments['serviceCart'] as String;
        serviceCart = ServiceEntity(moduleType: serviceType, moduleName: serviceType == 'food' ? 'Food' : 'Laundry');
      }
    }

    // Default to food service if no valid serviceCart is provided
    serviceCart ??= const ServiceEntity(moduleType: 'food', moduleName: 'Food');

    Get.lazyPut(() => CartCheckoutController(serviceCart));
  }
}
