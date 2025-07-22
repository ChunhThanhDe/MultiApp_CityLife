import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/section_item_card.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

class SectionItemWidget extends StatelessWidget {
  final String sectionTitle;
  final List<ProductItem> products;

  const SectionItemWidget({
    super.key,
    required this.sectionTitle,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: const Color(0xFFF7F8F9),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          child: Text(
            sectionTitle,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF161A1D),
            ),
          ),
        ),
        ...products.map(
          (item) => ProductItemCard(
            item: item,
            onImageTap: () {
              // Get.toNamed(AppRoutes.storeProductDetail, arguments: {'productId': item.id});
              Get.toNamed(AppRoutes.storeProductDetail, arguments: {'productId': 10056});
            },
            onAddTap: () {},
          ),
        ),
      ],
    );
  }
}
