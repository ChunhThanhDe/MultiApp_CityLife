import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_product_detail/store_product_detail_controller.dart';

class StoreDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StoreProductDetailController>();
    return Obx(() {
      final product = controller.product.value;
      return AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: AppColors.backgroundSurfacePrimaryWhite,
        automaticallyImplyLeading: false,
        toolbarHeight: 56,
        titleSpacing: 0,
        title: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: AppColors.textGreyHighest950, size: 20),
              onPressed: () => Get.back(),
              splashRadius: 24,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(product?.storeName ?? '', style: AppTextStyles.typographyH9Bold.tint(AppColors.textGreyHighest950), overflow: TextOverflow.ellipsis),
            ),
            IconButton(
              icon: Icon(product?.isFavorite == true ? Icons.favorite : Icons.favorite_border, color: product?.isFavorite == true ? AppColors.stateBrandDefault500 : AppColors.stateGreyDefault500, size: 22),
              onPressed: () {
                // You can add your toggle logic here if needed.
              },
              splashRadius: 24,
            ),
            const SizedBox(width: 8),
          ],
        ),
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
