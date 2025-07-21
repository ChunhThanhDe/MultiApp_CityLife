import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_tabbar.dart';

class StoreServiceOptions extends StatelessWidget {
  const StoreServiceOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.stateBaseWhite,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: GetBuilder<StoreController>(
          builder: (controller) {
            return AppTabBar(
              tabController: controller.serviceTabController,
              listTab: [
                _buildServiceTab(Assets.icons.icStore.path, 'In store', StoreServiceType.inStore, controller),
                _buildServiceTab(Assets.icons.icCar.path, 'Delivery', StoreServiceType.delivery, controller),
                _buildServiceTab(Assets.icons.icCarThru.path, 'Drive thru', StoreServiceType.driveThru, controller),
              ],
              onTap: (index) {
                controller.serviceTabController.animateTo(index);
                controller.selectService(StoreServiceType.values[index]);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildServiceTab(String iconPath, String label, StoreServiceType serviceType, StoreController controller) {
    bool isSelected = controller.isServiceSelected(serviceType);
    Color iconColor = isSelected ? AppColors.stateBrandDefault500 : AppColors.textGreyDefault500;
    Color textColor = isSelected ? AppColors.stateBrandDefault500 : AppColors.textGreyDefault500;

    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath, width: 16.w, height: 16.w, colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn)),
          SizedBox(width: 8.w),
          Text(label, style: AppTextStyles.typographyH12Medium.copyWith(color: textColor)),
        ],
      ),
    );
  }
}
