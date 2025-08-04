import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_app_bar.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_product_categories.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_service_options.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';

class StoreScreen extends BaseScreen<StoreController> {
  const StoreScreen({required this.storeId, required this.storeType, super.key});
  final int storeId;
  final String storeType;

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return GetX<StoreController>(
      init: controller,
      builder: (controller) {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return const CustomScrollView(slivers: [StoreAppBar(), StoreServiceOptions(), StoreProductCategories()]);
      },
    );
  }
}
