import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/shared/app_image.dart';
import 'package:sixam_mart_user/theme.dart';

class TodayOffersBanner extends GetView<HomeController> {
  const TodayOffersBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            'Today Offers',
            style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: controller.todayOffersBanner.length,
            itemBuilder: (context, index) => _buildItem(controller.todayOffersBanner[index], index),
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    ));
  }

  Stack _buildItem(TodayOffer offer, int index) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: 350,
          margin: EdgeInsets.only(left: index == 0 ? 24 : 16, right: index == controller.todayOffersBanner.length - 1 ? 24 : 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppCorner.radius8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppCorner.radius8),
            child: AppImage.network(
              offer.bannerImageUrl,
              fit: BoxFit.cover,
              width: 350,
              height: 180,
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 0,
          right: 0,
          child: Center(child: _buildBrandName(offer)),
        ),
      ],
    );
  }

  Container _buildBrandName(TodayOffer offer) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3D000000),
            blurRadius: 32,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          ClipOval(
            child: AppImage.network(
              offer.brandLogoUrl,
              width: 24,
              height: 24,
            ),
          ),
          Text(
            offer.brandName,
            textAlign: TextAlign.center,
            style: AppTextStyles.typographyH11Medium.copyWith(color: AppColors.textGreyHighest950),
          ),
        ],
      ),
    );
  }
}
