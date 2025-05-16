import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/modules/address/address_details/address_details_controller.dart';
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
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: AppButton(
        onTap: () {},
        width: double.infinity,
        color: AppColors.stateGreyLowest50,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          'Add new address',
          style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950),
        ),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildAddressInfo(),
            const SizedBox(height: 16),
            _buildAddressMap(),
            const SizedBox(height: 24),
            _buildAddressDetailsInput(),
            Container(
              width: double.infinity,
              height: 6,
              decoration: BoxDecoration(
                color: AppColors.stateGreyLowest50,
              ),
            ),
            const SizedBox(height: 16),
            _buildDeliveryInstructions(),
          ],
        ),
      ),
    );
  }

  Row _buildAddressInfo() {
    return Row(
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
    );
  }

  _buildAddressMap() {
    // use google map api to get the map
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.stateGreyLowest50,
      ),
    );
  }

  _buildAddressDetailsInput() {
    return Column(
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
        Container(
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
              Text(
                'Select building type',
                style: AppTextStyle.s14w400.copyWith(color: AppColors.textGreyDefault500),
              ),
              Assets.icons.icDropdownArrow.svg(),
            ],
          ),
        ),
        const SizedBox(height: 16),
        AppTextField(
          // controller: controller.addressController,
          hintText: 'E.g. 2030',
          label: 'Apt, Unit or Floor',
          isRequired: true,
        ),
        AppTextField(
          // controller: controller.addressController,
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
          // controller: controller.addressController,
          hintText: 'Add a label (ex. my home)',
          isRequired: false,
        ),
      ],
    );
  }

  _buildDeliveryInstructions() {
    final items = [
      (title: 'Hand it to me', icon: Assets.icons.icCourierHands.svg()),
      (title: 'Leave it at my door', icon: Assets.icons.icDoor.svg()),
      (title: 'Leave at reception', icon: Assets.icons.icReception.svg()),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery instructions',
          style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950),
        ),
        const SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                items[index].icon,
                const SizedBox(width: 12),
                Text(items[index].title),
                const Spacer(),
                Assets.icons.icCheckmark.svg(),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemCount: items.length,
        ),
      ],
    );
  }
}
