import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/modules/address/address_details/address_details_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';

class AddressDetailsScreen extends BaseScreen<AddressDetailsController> {
  const AddressDetailsScreen({super.key});

  @override
  bool get resizeToAvoidBottomInset => true;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Address details',
        style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950),
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
        const SliverToBoxAdapter(child: SizedBox(height: 12, child: Divider(height: 1, color: AppColors.stateGreyLowestHover100))),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: _buildSaveButton()),
      ],
    );
  }

  _buildAddressInfo() {
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
                style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
              ),
              Text(
                vm.searchItem.address,
                style: AppTextStyle.s12w400.copyWith(color: AppColors.textGreyHigh700),
              ),
            ],
          ),
          Spacer(),
          Assets.icons.icPencil.svg(),
        ],
      ),
    );
  }

  _buildAddressMap(BuildContext context) {
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
                        style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
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

  _buildAddressDetailsInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 4,
            children: [
              Text(
                'Building type',
                style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHighest950),
              ),
              Text(
                '*',
                style: AppTextStyle.s14w400.copyWith(color: AppColors.textDangerDefault500),
              ),
              Assets.icons.icInformation.svg(),
            ],
          ),
          const SizedBox(height: 8),
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
                        vm.selectedBuildingType.value == -1 ? 'Select building type' : vm.buildingTypes[vm.selectedBuildingType.value].title,
                        style: AppTextStyle.s14w400.copyWith(color: vm.selectedBuildingType.value == -1 ? AppColors.textGreyDefault500 : AppColors.textGreyHighest950),
                      )),
                  Assets.icons.icDropdownArrow.svg(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          AppTextField(
            controller: controller.buildingNumberController,
            hintText: 'E.g. 2030',
            label: 'Apt, Unit or Floor',
            isRequired: true,
          ),
          AppTextField(
            controller: controller.buildingNameController,
            hintText: 'E.g. Center Villa',
            label: 'Building name',
            isRequired: true,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: 'Address label', style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHighest950)),
                TextSpan(text: ' (optional)', style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyDefault500)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          AppTextField(
            controller: controller.addressLabelController,
            hintText: 'Add a label (ex. my home)',
            isRequired: false,
          ),
        ],
      ),
    );
  }

  _buildDeliveryInstructions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Obx(() {
        final selected = controller.selectedDeliveryInstruction.value;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery instructions',
              style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950),
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
                      if (entry.key != vm.deliveryOptions.length - 1) const SizedBox(height: 12, child: Divider(height: 1, color: AppColors.stateGreyLowestHover100)),
                    ],
                  ),
                ),
          ],
        );
      }),
    );
  }

  _buildBuildingTypeSheet() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            'Select building type',
            style: AppTextStyle.s20w600.copyWith(color: AppColors.textGreyHighest950),
          ),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyHigh700),
          ),
          const SizedBox(height: 16),
          Divider(
            height: 1,
            color: AppColors.stateGreyLowestHover100,
          ),
          const SizedBox(height: 16),
          ...vm.buildingTypes.asMap().entries.map((entry) => Column(
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
                                  style: AppTextStyle.s16w500.copyWith(color: vm.selectedBuildingType.value == entry.key ? AppColors.textGreyHighest950 : AppColors.textGreyHigh700)),
                              const Spacer(),
                              vm.selectedBuildingType.value == entry.key ? Assets.icons.icCheckmark.svg() : const SizedBox.shrink(),
                            ],
                          )),
                    ),
                  ),
                  if (entry.key != vm.buildingTypes.length - 1) const SizedBox(height: 16, child: Divider(height: 1, color: AppColors.stateGreyLowestHover100)),
                ],
              )),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  _buildSaveButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppButton(
        onTap: () => Get.toNamed('${AppRoutes.address}/${AppRoutes.confirmAddress}', arguments: vm.googlePlex.target),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          'Save address',
          style: AppTextStyle.s16w500.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
