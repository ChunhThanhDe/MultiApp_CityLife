import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';

import 'confirm_address_controller.dart';

class ConfirmAddressScreen extends BaseScreen<ConfirmAddressController> {
  const ConfirmAddressScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              'Confirm delivery address',
              style: AppTextStyle.s28w600.copyWith(color: AppColors.textGreyHighest950),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: AppTextStyle.s16w400.copyWith(color: AppColors.textGreyHigh700),
            ),
            AppButton(
              onTap: () {},
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Confirm location',
                style: AppTextStyle.s16w500.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        _buildMapView(),
        _buildCloseButton(),
      ],
    );
  }

  Obx _buildMapView() {
    return Obx(() {
      final mapStyle = controller.mapStyle.value;
      return SizedBox.expand(
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: GoogleMap(
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: controller.cameraPosition,
            style: mapStyle,
            markers: {
              Marker(
                markerId: const MarkerId('selected-location'),
                position: controller.latLng,
              ),
            },
            onMapCreated: (GoogleMapController mapController) {
              controller.mapController.complete(mapController);
            },
          ),
        ),
      );
    });
  }

  Positioned _buildCloseButton() {
    return Positioned(
      top: 70,
      left: 24,
      child: GestureDetector(
        onTap: () => Get.back(),
        child: Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.all(6),
          decoration: ShapeDecoration(
            color: AppColors.stateBaseWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19101214),
                blurRadius: 16,
                offset: Offset(0, 12),
                spreadRadius: -6,
              ),
              BoxShadow(
                color: Color(0x0C101214),
                blurRadius: 4,
                offset: Offset(0, 2),
                spreadRadius: -2,
              )
            ],
          ),
          child: Assets.icons.icClose.svg(),
        ),
      ),
    );
  }
}
