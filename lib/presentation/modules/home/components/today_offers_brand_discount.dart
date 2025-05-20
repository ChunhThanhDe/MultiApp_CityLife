import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/theme.dart';

class TodayOffersBrandDiscount extends GetView<HomeController> {
  const TodayOffersBrandDiscount({super.key});

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
        ],
      ),
    );
  }
}
