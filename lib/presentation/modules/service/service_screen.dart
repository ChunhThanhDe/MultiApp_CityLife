import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui1/service_ui1_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_screen.dart';

/// Main service screen that routes to appropriate UI based on service type
/// Acts as a router between different UI implementations
class ServiceScreen extends BaseScreen<ServiceController> {
  const ServiceScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return GetBuilder<ServiceController>(
      id: ServiceControllerCategory.uiType.name,
      builder: (controller) {
        final currentUIType = controller.currentUIType;

        switch (currentUIType) {
          case ServiceUIType.ui1:
            return const ServiceUI1Screen();
          case ServiceUIType.ui2:
            return const ServiceUI2Screen();
        }
      },
    );
  }
}
