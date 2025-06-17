import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/address/address_details/address_details_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

class AddressDetailsScreen extends BaseScreen<AddressDetailsController> {
  const AddressDetailsScreen({super.key});

  @override
  bool get resizeToAvoidBottomInset => true;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.stateBaseWhite,
      backgroundColor: AppColors.stateBaseWhite,
      title: Text(
        'Address details',
        style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950),
      ),
      centerTitle: false,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Assets.icons.icBackArrow.svg(),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _buildAddressInfo()),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: _buildAddressMap(context)),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: _buildAddressDetailsInput(context)),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            height: 6,
            decoration: BoxDecoration(
              color: AppColors.stateGreyLowest50,
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: _buildDeliveryInstructions()),
        SliverToBoxAdapter(child: SizedBox(height: 12, child: Divider(height: 1, color: AppColors.stateGreyLowestHover100))),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: _buildSaveButton()),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
      ],
    );
  }

  Padding _buildAddressInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                vm.searchItem.address,
                style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
              ),
              Text(
                vm.searchItem.address,
                style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700),
              ),
            ],
          ),
          Spacer(),
          Assets.icons.icPencil.svg(),
        ],
      ),
    );
  }

  Container _buildAddressMap(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      height: 200,
      child: Obx(() {
        final mapStyle = controller.mapStyle.value;
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GoogleMap(
                myLocationButtonEnabled: false,
                mapToolbarEnabled: false,
                mapType: MapType.normal,
                initialCameraPosition: vm.googlePlex,
                style: mapStyle,
                onMapCreated: (GoogleMapController mapController) {
                  vm.mapController.complete(mapController);
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Center(
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  elevation: 4,
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(24),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                        'Edit pin',
                        style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Padding _buildAddressDetailsInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 4,
            children: [
              Text(
                tr(LocaleKeys.address_details_buildingType),
                style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
              ),
              Text(
                '*',
                style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textDangerDefault500),
              ),
              Assets.icons.icInformation.svg(),
            ],
          ),
          const SizedBox(height: 2),
          GestureDetector(
            onTap: () => showAppBottomSheet(child: _buildBuildingTypeSheet()),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: AppColors.stateGreyLowestHover100,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 8,
                children: [
                  Obx(() => Text(
                        vm.selectedBuildingType.value == -1 ? tr(LocaleKeys.address_details_selectBuildingType) : vm.buildingTypes[vm.selectedBuildingType.value].title,
                        style: AppTextStyles.typographyH11Regular.copyWith(color: vm.selectedBuildingType.value == -1 ? AppColors.textGreyDefault500 : AppColors.textGreyHighest950),
                      )),
                  Assets.icons.icDropdownArrow.svg(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          AppTextField(
            controller: controller.buildingNumberController,
            hintText: tr(LocaleKeys.address_details_buildingNumberHint),
            label: tr(LocaleKeys.address_details_buildingNumber),
            isRequired: true,
          ),
          AppTextField(
            controller: controller.buildingNameController,
            hintText: tr(LocaleKeys.address_details_buildingNameHint),
            label: tr(LocaleKeys.address_details_buildingName),
            isRequired: true,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: tr(LocaleKeys.address_details_addressLabel), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
                TextSpan(text: tr(LocaleKeys.address_details_addressLabelOptional), style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          AppTextField(
            controller: controller.addressLabelController,
            hintText: tr(LocaleKeys.address_details_addressLabelHint),
            isRequired: false,
          ),
        ],
      ),
    );
  }

  Padding _buildDeliveryInstructions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Obx(() {
        final selected = controller.selectedDeliveryInstruction.value;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr(LocaleKeys.address_details_deliveryInstructions),
              style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950),
            ),
            const SizedBox(height: 8),
            ...vm.deliveryOptions.asMap().entries.map(
                  (entry) => Column(
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => controller.setSelectedDeliveryInstruction(entry.key),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              entry.value.icon,
                              const SizedBox(width: 12),
                              Text(entry.value.title),
                              const Spacer(),
                              if (selected == entry.key) Assets.icons.icCheckmark.svg(),
                            ],
                          ),
                        ),
                      ),
                      if (entry.key != vm.deliveryOptions.length - 1) SizedBox(height: 12, child: Divider(height: 1, color: AppColors.stateGreyLowestHover100)),
                    ],
                  ),
                ),
          ],
        );
      }),
    );
  }

  ColoredBox _buildBuildingTypeSheet() {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              tr(LocaleKeys.address_details_selectBuildingTypeTitle),
              style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              tr(LocaleKeys.address_details_selectBuildingTypeSubtitle),
              style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
            ),
          ),
          const SizedBox(height: 16),
          Divider(
            height: 1,
            color: AppColors.stateGreyLowestHover100,
          ),
          const SizedBox(height: 16),
          ...vm.buildingTypes.asMap().entries.map((entry) => Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => vm.selectedBuildingType.value = entry.key,
                      child: SizedBox(
                        width: double.infinity,
                        child: Obx(() => Row(
                              children: [
                                entry.value.icon,
                                const SizedBox(width: 12),
                                Text(entry.value.title,
                                    style: AppTextStyles.typographyH11Medium.copyWith(color: vm.selectedBuildingType.value == entry.key ? AppColors.textGreyHighest950 : AppColors.textGreyHigh700)),
                                const Spacer(),
                                vm.selectedBuildingType.value == entry.key ? Assets.icons.icCheckmark.svg() : const SizedBox.shrink(),
                                const SizedBox(width: 24),
                              ],
                            )),
                      ),
                    ),
                    if (entry.key != vm.buildingTypes.length - 1) SizedBox(height: 16, child: Divider(height: 1, color: AppColors.stateGreyLowestHover100)),
                  ],
                ),
              )),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Padding _buildSaveButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppButton(
        onTap: () => Get.toNamed('${AppRoutes.address}/${AppRoutes.confirmAddress}', arguments: vm.googlePlex.target),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          tr(LocaleKeys.address_details_saveAddress),
          style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
