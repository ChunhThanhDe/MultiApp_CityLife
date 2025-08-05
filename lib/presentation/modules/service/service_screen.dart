import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/service/food/service_food_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/laundry/service_laundry_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';

class ServiceScreen extends BaseScreen<ServiceController> {
  const ServiceScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      // Switch UI based on current service type
      final currentService = controller.currentService.value;

      switch (currentService.uiType) {
        case ServiceUIType.ui1:
          return const ServiceFoodScreen();
        case ServiceUIType.ui2:
          return const ServiceLaundryScreen();
        default:
          return const ServiceFoodScreen(); // Default to food UI
      }
    });
  }
}
