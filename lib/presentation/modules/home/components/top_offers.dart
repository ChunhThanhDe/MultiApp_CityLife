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
        ],
      ),
    );
  }
}
