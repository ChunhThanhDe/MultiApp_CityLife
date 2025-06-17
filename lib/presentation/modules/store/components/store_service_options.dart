import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/app_tabbar.dart';
import 'package:sixam_mart_user/theme.dart';

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
                _buildServiceTab(Icons.store, 'In store'),
                _buildServiceTab(Icons.delivery_dining, 'Delivery'),
                _buildServiceTab(Icons.drive_eta, 'Drive thru'),
              ],
              onTap: (index) => controller.serviceTabController.animateTo(index),
            );
          },
        ),
      ),
    );
  }

  Widget _buildServiceTab(IconData icon, String label) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 16.w,
          ),
          SizedBox(width: 8.w),
          Text(
            label,
            style: AppTextStyles.typographyH12Medium,
          ),
        ],
      ),
    );
  }
}
