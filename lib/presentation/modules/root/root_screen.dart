import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';

class RootScreen extends BaseScreen<RootController> {
  const RootScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        elevation: 0,
        enableFeedback: false,
        selectedItemColor: AppColors.stateBrandDefault500,
        unselectedItemColor: AppColors.textGreyHighest950,
        selectedLabelStyle: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.stateBrandDefault500),
        unselectedLabelStyle: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHighest950),
        backgroundColor: AppColors.alphaWhite10,
        type: BottomNavigationBarType.fixed,
        items: vm.tabs
            .map(
              (e) => BottomNavigationBarItem(
                icon: SizedBox(width: 20.w, height: 20.w, child: SvgPicture.asset(e.iconUnselected)),
                activeIcon: SizedBox(width: 20.w, height: 20.w, child: SvgPicture.asset(e.iconSelected)),
                label: e.label,
              ),
            )
            .toList(),
        currentIndex: vm.currentTab.value.index,
        onTap: (index) => vm.changeTab(vm.tabs[index].tab),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => IndexedStack(index: vm.currentTab.value.index, children: vm.tabs.map((e) => e.screen).toList()));
  }
}
