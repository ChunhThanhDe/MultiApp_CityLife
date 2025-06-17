import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_button.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

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
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      title: Text(
        tr(LocaleKeys.address_title),
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
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: AppButton(
        onTap: () {},
        width: double.infinity,
        color: AppColors.stateGreyLowest50,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          tr(LocaleKeys.address_addNewAddress),
          style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
        ),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    final results = _mockSearchResults;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            hintText: tr(LocaleKeys.address_searchHint),
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
            tr(LocaleKeys.address_exploreNearby),
            style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textGreyHighest950),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: results.length,
              separatorBuilder: (context, index) => Divider(height: 1, color: AppColors.stateGreyLowestHover100),
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
      behavior: HitTestBehavior.opaque,
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
                Text(item.title, style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                Text(item.address, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)),
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
