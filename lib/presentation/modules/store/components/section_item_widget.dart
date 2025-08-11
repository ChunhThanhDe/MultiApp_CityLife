import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/section_item_card.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

class SectionItemWidget extends StatelessWidget {
  const SectionItemWidget({required this.sectionTitle, required this.products, super.key});
  final String sectionTitle;
  final List<ProductItem> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: AppColors.stateGreyLowest50,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          child: Text(sectionTitle, style: AppTextStyles.typographyH10Medium.tint(AppColors.textGreyHighest950)),
        ),
        ...products.map(
          (item) => ProductItemCard(
            item: item,
            onImageTap: () {
              Get.toNamed(AppRoutes.storeProductDetail, arguments: {'productId': item.id});
            },
            onAddTap: () {},
          ),
        ),
      ],
    );
  }
}
