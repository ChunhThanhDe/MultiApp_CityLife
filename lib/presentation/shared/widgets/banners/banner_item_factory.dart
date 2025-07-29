import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/banner_discount_widget.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/banner_floating_logo_widget.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/banner_single_image_widget.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/brand_logo_name_widget.dart';

class BannerItemFactory {
  static Widget createBannerItem({required BannerType bannerType, required BannerEntity item, required int index, required int totalItems, VoidCallback? onTap}) {
    final defaultOnTap =
        onTap ??
        () {
          Get.toNamed(AppRoutes.store, arguments: {'storeId': item.id, 'storeType': StoreType.food});
        };

    switch (bannerType) {
      case BannerType.bannerFloatingLogo:
        return BannerFloatingLogoWidget(item: item, index: index, totalItems: totalItems, onTap: defaultOnTap);
      case BannerType.brandLogoName:
        return BrandLogoNameWidget(item: item, index: index, totalItems: totalItems, onTap: defaultOnTap);
      case BannerType.bannerDiscount:
        return BannerDiscountWidget(item: item, index: index, totalItems: totalItems, onTap: defaultOnTap);
      case BannerType.bannerSingleImage:
        return BannerSingleImageWidget(item: item, index: index, totalItems: totalItems, onTap: defaultOnTap);
    }
  }
}
