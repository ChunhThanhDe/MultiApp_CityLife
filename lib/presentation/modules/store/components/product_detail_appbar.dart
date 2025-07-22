import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 56,
        titleSpacing: 0,
        title: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF161A1D), size: 20),
              onPressed: () => Get.back(),
              splashRadius: 24,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                product?.storeName ?? '',
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xFF161A1D),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.favorite, color: Color(0xFF5856D7), size: 22),
              onPressed: () {},
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
