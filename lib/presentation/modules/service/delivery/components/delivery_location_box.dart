import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/box_delivery/box_delivery_controller.dart';

class LocationBoxWidget extends StatelessWidget {

  const LocationBoxWidget({required this.controller, super.key});
  final BoxDeliveryController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundSurfacePrimaryWhite,
        border: Border.all(color: AppColors.stateGreyLowestHover100),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset('assets/icons/ic_box_package_hand_bottom.svg', width: 24, height: 24),
            title: Text(controller.pickupLocation.value, style: TextStyle(fontSize: 14, color: AppColors.textGreyHighest950)),
          ),
          const Divider(height: 1),
          ListTile(
            leading: SvgPicture.asset('assets/icons/ic_box_package_courier_hands.svg', width: 24, height: 24),
            title: Text(controller.dropoffLocation.value, style: TextStyle(fontSize: 14, color: AppColors.textGreyHighest950)),
          ),
        ],
      ),
    );
  }
}
