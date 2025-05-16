import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

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
});

class RootController extends BaseController {
  var currentTab = RootTab.home.obs;

  final List<RootTabItem> tabs = [
    (iconSelected: Assets.icons.icHomeFilled.path, iconUnselected: Assets.icons.icHomeOutlined.path, label: 'Home', tab: RootTab.home),
    (iconSelected: Assets.icons.icServiceFilled.path, iconUnselected: Assets.icons.icServiceOutlined.path, label: 'Service', tab: RootTab.service),
    (iconSelected: Assets.icons.icCartFilled.path, iconUnselected: Assets.icons.icCartOutlined.path, label: 'Cart', tab: RootTab.cart),
    (iconSelected: Assets.icons.icWalletFilled.path, iconUnselected: Assets.icons.icWalletOutlined.path, label: 'Wallet', tab: RootTab.wallet),
    (iconSelected: Assets.icons.icPersonFilled.path, iconUnselected: Assets.icons.icPersonOutlined.path, label: 'Account', tab: RootTab.account),
  ];

  void changeTab(RootTab tab) {
    currentTab.value = tab;
  }
}
