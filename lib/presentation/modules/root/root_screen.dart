import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_screen.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_screen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_screen.dart';

class RootScreen extends BaseScreen<RootController> {
  const RootScreen({super.key});

  @override
  bool get wrapWithSafeArea => true;

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: vm.tabs
          .map((e) => BottomNavigationBarItem(
                icon: Obx(() => vm.currentTab.value == e.tab ? SvgPicture.asset(e.iconSelected) : SvgPicture.asset(e.iconUnselected)),
                label: e.label,
              ))
          .toList(),
      currentIndex: vm.currentTab.value.index,
      onTap: (index) => vm.changeTab(vm.tabs[index].tab),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => IndexedStack(
          index: vm.currentTab.value.index,
          children: [
            HomeScreen(),
            ServiceScreen(),
            CartScreen(),
            WalletScreen(),
            AccountScreen(),
          ],
        ));
  }
}
