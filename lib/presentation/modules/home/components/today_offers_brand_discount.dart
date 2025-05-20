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
          SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.todayOffersBrandDiscount.length,
              itemBuilder: (context, index) => _buildItem(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int index) {
    return Container(
      width: 223,
      margin: EdgeInsets.only(right: index == controller.todayOffersBrandDiscount.length - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(controller.todayOffersBrandDiscount[index].bannerImageUrl),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: ShapeDecoration(
                    color: AppColors.stateSuccessHigh700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19101214),
                        blurRadius: 16,
                        offset: Offset(0, 12),
                        spreadRadius: -6,
                      ),
                      BoxShadow(
                        color: Color(0x0C101214),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: -2,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Text(
                        '25% Off',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBaseWhite),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: ClipOval(
                  child: Image.network(
                    controller.todayOffersBrandDiscount[index].brandLogoUrl,
                    width: 64,
                    height: 64,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(controller.todayOffersBrandDiscount[index].brandName, style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
              Assets.icons.icVerified.svg(),
            ],
          ),
          Text('\$6 Delivery fee', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)),
        ],
      ),
    );
  }
}
