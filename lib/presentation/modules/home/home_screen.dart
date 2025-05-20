import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/header_and_service.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/sliver_box.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/today_offers_banner.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/today_offers_brand.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/today_offers_brand_discount.dart';
import 'package:sixam_mart_user/presentation/modules/home/components/top_offers.dart';

import 'home_controller.dart';

class HomeScreen extends BaseScreen<HomeController> {
  const HomeScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HeaderAndService(),
        SliverBox(height: 12),
        TodayOffersBanner(),
        SliverBox(height: 12),
        TodayOffersBrand(),
        SliverBox(height: 12),
        TodayOffersBrandDiscount(),
        SliverBox(height: 12),
        TopOffers(),
      ],
    );
  }
}
