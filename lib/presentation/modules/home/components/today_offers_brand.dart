import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/theme.dart';

class TodayOffersBrand extends GetView<HomeController> {
  const TodayOffersBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today Offers', style: AppTextStyles.typographyH9Medium),
                Assets.icons.icRightArrowChevron.svg(width: 28, height: 28),
              ],
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.todayOffersBrand.length,
              itemBuilder: (context, index) => _buildItem(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: EdgeInsets.only(
        right: index == controller.todayOffersBrand.length - 1 ? 24 : 16,
        left: index == 0 ? 24 : 0,
      ),
      child: Column(
        children: [
          Image.network(controller.todayOffersBrand[index].brandLogoUrl, width: 64, height: 64),
          SizedBox(height: 4),
          Text(controller.todayOffersBrand[index].brandName, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBrandDefault500)),
        ],
      ),
    );
  }
}
