import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/theme.dart';

class HeaderAndService extends GetView<HomeController> {
  const HeaderAndService({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 223,
            decoration: BoxDecoration(
              color: AppColors.stateBrandDefault500,
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                SizedBox(height: 24),
                _buildService(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Good Morning ☀\n',
                  style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBaseWhite),
                ),
                TextSpan(
                  text: 'Abdulkadir Ali',
                  style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textBaseWhite),
                ),
              ],
            ),
          ),
          Assets.icons.icBell.svg(
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }

  _buildService() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: controller.services.length,
        itemBuilder: (context, index) => _buildServiceItem(controller.services[index], index),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  _buildServiceItem(Service service, int index) {
    return Padding(
      padding: EdgeInsets.only(right: index == controller.services.length - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.stateGreyLowest50,
              borderRadius: BorderRadius.circular(AppCorner.radius8),
            ),
            padding: EdgeInsets.all(12),
            child: AppImage.asset(service.image, width: 70, height: 70),
          ),
          SizedBox(height: 6),
          Text(
            service.title,
            style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
