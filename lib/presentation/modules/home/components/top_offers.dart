import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/theme.dart';

class TopOffers extends GetView<HomeController> {
  const TopOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Top Offers', style: AppTextStyles.typographyH9Medium),
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemBuilder: (context, index) => _buildItem(index),
              itemCount: controller.topOffers.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: EdgeInsets.only(right: index == controller.topOffers.length - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
      child: SizedBox(
        width: 175,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            controller.topOffers[index].bannerImageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
