import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/app_text_field.dart';

import 'search_address_controller.dart';

class SearchAddressScreen extends BaseScreen<SearchAddressController> {
  const SearchAddressScreen({super.key});

  // Mock search results (replace with real data from controller)
  List<SearchItem> get _mockSearchResults => [
        SearchItem(title: '123 Main St', address: '123 Main St', type: SearchItemType.history),
        SearchItem(title: '456 Elm St', address: '456 Elm St', type: SearchItemType.address),
        SearchItem(title: '789 Oak Ave', address: '789 Oak Ave', type: SearchItemType.nearby),
        SearchItem(title: '101 Maple Rd', address: '101 Maple Rd', type: SearchItemType.history),
        SearchItem(title: '202 Pine Ln', address: '202 Pine Ln', type: SearchItemType.address),
      ];

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Address',
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
    final results = _mockSearchResults;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            hintText: 'Search for an address',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: Assets.icons.icSearch.svg(),
            ),
            suffixIcon: Obx(() {
              return vm.isShowClearButton.value
                  ? GestureDetector(
                      onTap: vm.onClearSearch,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Assets.icons.icClose.svg(),
                      ),
                    )
                  : const SizedBox.shrink();
            }),
            controller: vm.searchAddressController,
            borderRadius: 32,
            onChanged: vm.onSearchChanged,
          ),
          Text(
            'Explore nearby',
            style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: results.length,
              separatorBuilder: (context, index) => const Divider(height: 1, color: AppColors.stateGreyLowestHover100),
              itemBuilder: (context, index) {
                return _buildSearchItem(results[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildSearchItem(SearchItem item) {
    return GestureDetector(
      onTap: () => Get.toNamed('${AppRoutes.address}/${AppRoutes.addressDetails}', arguments: item),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            SvgPicture.asset(
              item.type == SearchItemType.history
                  ? Assets.icons.icClock.path
                  : item.type == SearchItemType.address
                      ? Assets.icons.icLocation.path
                      : Assets.icons.icMouse.path,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, style: AppTextStyle.s16w500.copyWith(color: AppColors.textGreyHighest950)),
                Text(item.address, style: AppTextStyle.s12w400.copyWith(color: AppColors.textGreyHigh700)),
              ],
            ),
            const Spacer(),
            Assets.icons.icRightArrowChevron.svg(),
          ],
        ),
      ),
    );
  }
}
