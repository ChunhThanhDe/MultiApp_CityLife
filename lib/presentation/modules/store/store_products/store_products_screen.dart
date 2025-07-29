import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/section_item_widget.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'store_products_controller.dart';

class StoreProductsScreen extends BaseScreen<StoreProductsController> {
  const StoreProductsScreen({super.key, required this.products, required this.storename});

  final List<ProductItem> products;
  final String storename;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: storename);
  }

  @override
  Widget buildScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SectionItemWidget(sectionTitle: storename, products: products),
        ),
      ],
    );
  }
}
