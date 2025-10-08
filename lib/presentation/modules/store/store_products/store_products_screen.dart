import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/section_item_widget.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_products/store_products_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

class StoreProductsScreen extends BaseScreen<StoreProductsController> {
  const StoreProductsScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>?;
    final storename = arguments?['storename'] as String? ?? 'Products';
    return BasicAppBar(title: storename);
  }

  @override
  Widget buildScreen(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>?;
    final products = arguments?['products'] as List<ProductItem>? ?? <ProductItem>[];
    final storename = arguments?['storename'] as String? ?? 'Products';
    
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SectionItemWidget(sectionTitle: storename, products: products),
        ),
      ],
    );
  }
}
