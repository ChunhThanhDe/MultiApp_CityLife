import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_screen.dart';

enum RootTab { home, service, cart, wallet, account }

typedef RootTabItem = ({String iconSelected, String iconUnselected, String label, RootTab tab, Widget screen});

class RootController extends BaseController {
  var currentTab = RootTab.home.obs;

  final List<RootTabItem> tabs = [
    (iconSelected: Assets.icons.icHomeFilled.path, iconUnselected: Assets.icons.icHomeOutlined.path, label: LocaleKeys.root_home, tab: RootTab.home, screen: HomeScreen()),
    (iconSelected: Assets.icons.icServiceFilled.path, iconUnselected: Assets.icons.icServiceOutlined.path, label: LocaleKeys.root_service, tab: RootTab.service, screen: ServiceScreen()),
    (iconSelected: Assets.icons.icCartFilled.path, iconUnselected: Assets.icons.icCartOutlined.path, label: LocaleKeys.root_cart, tab: RootTab.cart, screen: CartScreen()),
    (iconSelected: Assets.icons.icWalletFilled.path, iconUnselected: Assets.icons.icWalletOutlined.path, label: LocaleKeys.root_wallet, tab: RootTab.wallet, screen: WalletScreen()),
    (iconSelected: Assets.icons.icPersonFilled.path, iconUnselected: Assets.icons.icPersonOutlined.path, label: LocaleKeys.root_account, tab: RootTab.account, screen: AccountScreen()),
  ];

  void changeTab(RootTab tab) {
    currentTab.value = tab;
  }
}
