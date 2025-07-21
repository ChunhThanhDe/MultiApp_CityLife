import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/section_item_widget.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'store_products_controller.dart';

class StoreProductsScreen extends BaseScreen<StoreProductsController> {
  const StoreProductsScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    final storeController = Get.find<StoreController>();

    return BasicAppBar(
      title: storeController.foodResponse.value?.store.name ?? 'Store Products',
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return GetBuilder<StoreController>(
      builder: (controller) {
        return CustomScrollView(
          slivers: [
            ...controller.filteredCategories.entries.map(
              (e) => SliverToBoxAdapter(
                child: SectionItemWidget(
                  sectionTitle: e.key,
                  products: e.value,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
