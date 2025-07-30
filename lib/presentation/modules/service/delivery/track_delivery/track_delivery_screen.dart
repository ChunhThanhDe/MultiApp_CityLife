import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_package_information_card.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_tracking_progress.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_travel_history_section.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'track_delivery_controller.dart';

class TrackDeliveryScreen extends BaseScreen<TrackDeliveryController> {
  const TrackDeliveryScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Tracking', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Package Information
                Obx(() => PackageInformationCard(info: controller.packageInfo.value)),
                // Progress & Stepper
                Obx(
                  () => TrackingProgress(
                    steps: controller.steps,
                    progressPercent: controller.progressPercent.value, // double
                    leftDate: "Jan 12, 2025",
                    leftPlace: "Mississauga, ON CA",
                    rightDate: "Jan 28, 2025",
                    rightPlace: "WINNIPEG, MB CA",
                  ),
                ),
                // Travel History
                Obx(() => TravelHistorySection(travelData: controller.travelHistory.value)),

                // Bottom Home Indicator
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
