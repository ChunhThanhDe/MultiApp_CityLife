import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_screen.dart';

enum RootTab {
  home,
  service,
  cart,
  wallet,
  account,
}

typedef RootTabItem = ({
  String iconSelected,
  String iconUnselected,
  String label,
  RootTab tab,
  Widget screen,
});

class RootController extends BaseController {
  var currentTab = RootTab.home.obs;

  final List<RootTabItem> tabs = [
    (
      iconSelected: Assets.icons.icHomeFilled.path,
      iconUnselected: Assets.icons.icHomeOutlined.path,
      label: 'Home',
      tab: RootTab.home,
      screen: HomeScreen(),
    ),
    (
      iconSelected: Assets.icons.icServiceFilled.path,
      iconUnselected: Assets.icons.icServiceOutlined.path,
      label: 'Service',
      tab: RootTab.service,
      screen: ServiceScreen(),
    ),
    (
      iconSelected: Assets.icons.icCartFilled.path,
      iconUnselected: Assets.icons.icCartOutlined.path,
      label: 'Cart',
      tab: RootTab.cart,
      screen: CartScreen(),
    ),
    (
      iconSelected: Assets.icons.icWalletFilled.path,
      iconUnselected: Assets.icons.icWalletOutlined.path,
      label: 'Wallet',
      tab: RootTab.wallet,
      screen: WalletScreen(),
    ),
    (
      iconSelected: Assets.icons.icPersonFilled.path,
      iconUnselected: Assets.icons.icPersonOutlined.path,
      label: 'Account',
      tab: RootTab.account,
      screen: AccountScreen(),
    ),
  ];

  void changeTab(RootTab tab) {
    currentTab.value = tab;
  }
}
