import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
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
      final currentServiceType = controller.currentServiceType.value;

      switch (currentServiceType) {
        case ServiceType.food:
          return const ServiceFoodScreen();
        case ServiceType.laundry:
          return const ServiceLaundryScreen();
        default:
          return const ServiceFoodScreen(); // Default to food UI
      }
    });
  }
}
