import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';

class RootScreen extends BaseScreen<RootController> {
  const RootScreen({super.key});

  @override
  bool get wrapWithSafeArea => true;

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          elevation: 0,
          enableFeedback: false,
          selectedItemColor: AppColors.brand500,
          unselectedItemColor: AppColors.grey950,
          selectedLabelStyle: AppTextStyle.s12w400.copyWith(color: AppColors.brand500),
          unselectedLabelStyle: AppTextStyle.s12w400.copyWith(color: AppColors.grey950),
          backgroundColor: AppColors.white0,
          type: BottomNavigationBarType.fixed,
          items: vm.tabs
              .map((e) => BottomNavigationBarItem(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(e.iconUnselected),
                    ),
                    activeIcon: SizedBox(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(e.iconSelected),
                    ),
                    label: e.label,
                  ))
              .toList(),
          currentIndex: vm.currentTab.value.index,
          onTap: (index) => vm.changeTab(vm.tabs[index].tab),
        ));
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => IndexedStack(
          index: vm.currentTab.value.index,
          children: vm.tabs.map((e) => e.screen).toList(),
        ));
  }
}
