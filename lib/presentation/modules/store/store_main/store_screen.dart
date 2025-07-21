import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_app_bar.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_product_categories.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_service_options.dart';

import 'store_controller.dart';

class StoreScreen extends BaseScreen<StoreController> {
  const StoreScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      return CustomScrollView(
        slivers: [
          StoreAppBar(),
          StoreServiceOptions(),
          StoreProductCategories(),
        ],
      );
    });
  }
}
