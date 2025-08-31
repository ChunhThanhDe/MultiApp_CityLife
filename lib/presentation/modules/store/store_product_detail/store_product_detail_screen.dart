import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_infomation_response.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_card.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_detail_appbar.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_nutritiion_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_option_group_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_product_detail/store_product_detail_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class StoreProductDetailScreen extends BaseScreen<StoreProductDetailController> {
  const StoreProductDetailScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const StoreDetailAppBar();
  }

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Obx(() {
      final price = controller.product.value?.price;
      final priceText = price != null ? '\$${price.toStringAsFixed(2)}' : '';

      return Padding(
        padding: EdgeInsets.only(left: 16.w, top: 8.h, right: 16.w, bottom: 24.h),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: AppColors.stateBrandDefault500,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            ),
            onPressed: controller.addToCart,
            child: Text('${tr(LocaleKeys.store_addToCart)}${priceText.isNotEmpty ? " • $priceText" : ""}', style: AppTextStyles.typographyH11Medium.tint(AppColors.backgroundSurfacePrimaryWhite)),
          ),
        ),
      );
    });
  }

  @override
  Widget buildScreen(BuildContext context) {
    return GetX<StoreProductDetailController>(
      init: StoreProductDetailController(Get.arguments['productId']),
      builder: (controller) {
        final isLoading = controller.isLoading.value;
        final product = controller.product.value;

        if (isLoading) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        if (product == null) {
          return Scaffold(body: Center(child: Text(tr(LocaleKeys.store_productNotFound))));
        }

        return ListView(
          children: [
            // Ảnh sản phẩm
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 0, right: 24.w, bottom: 24.h),
              child: Stack(
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: AppImage.network(product.storeImageUrl, fit: BoxFit.cover),
                  ),
                  // Dùng Align để luôn căn giữa ở dưới cùng ảnh
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 180.h),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                        decoration: BoxDecoration(
                          color: AppColors.backgroundSurfacePrimaryWhite,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.backgroundSurfaceTertiaryGrey50),
                          boxShadow: [BoxShadow(color: AppColors.textGreyHighest950.withValues(alpha: 0.07), blurRadius: 6, offset: const Offset(0, 2))],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppImage.network(product.storeImageUrl, width: 24, height: 24),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(product.storeName, style: AppTextStyles.typographyH11SemiBold.tint(AppColors.textGreyHighest950), overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Tên sp + giá
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: AppTextStyles.typographyH9SemiBold.tint(AppColors.textGreyHighest950)),
                  const SizedBox(height: 4),
                  Text('${product.price} ${product.taxType}', style: AppTextStyles.typographyH11Regular.tint(AppColors.textGreyDefault500)),
                ],
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: GestureDetector(
                onTap: () => controller.resetAllOptions(),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundSurfaceTertiaryGrey50,
                    borderRadius: BorderRadius.circular(20), // pill shape
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(tr(LocaleKeys.store_resetRecipe), style: AppTextStyles.typographyH11Medium.tint(AppColors.textGreyHighest950)),
                      const Spacer(),
                      Icon(Icons.refresh, size: 18, color: AppColors.textGreyDefault500),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            // ========== Render variations from API
            // Check if variations field contains the new API structure (with name, type, values)
            if (product.variations.isNotEmpty) ...[
              // New API structure - variations contains VariationModel objects
              for (final variation in product.variations) ...[
                OptionGroupSection(
                  singleChoice: variation.type == 'single',
                  min: int.tryParse(variation.min) ?? 0,
                  max: int.tryParse(variation.max) ?? 0,
                  title: variation.name.isNotEmpty ? variation.name : 'Option',
                  requiredField: variation.required == 'on',
                  options: variation.values.map((value) {
                    final label = value.label;
                    final optionPrice = int.tryParse(value.optionPrice) ?? 0;
                    return OptionItem(label: label, value: label, subLabel: optionPrice.toString());
                  }).toList(),
                  selectedValue: controller.selectedOptions[variation.name],
                  onSelected: (val, {bool singleChoice = true, int min = 0, int max = 0}) => controller.selectOption(variation.name, val, singleChoice: singleChoice, min: min, max: max),
                ),
                _sectionDivider(),
              ],
            ]
            // Check if foodVariations has data (fallback for new API structure)
            else if (product.foodVariations.isNotEmpty) ...[
              for (final variation in product.foodVariations)
                if (variation is Map<String, dynamic> && variation['values'] is List) ...[
                  OptionGroupSection(
                    title: variation['name'] ?? 'Option',
                    requiredField: variation['required'] == 'on',
                    options: (variation['values'] as List).map((value) {
                      if (value is Map<String, dynamic>) {
                        final label = value['label']?.toString() ?? '';
                        final optionPrice = value['optionPrice'] ?? 0;
                        final priceNum = optionPrice is num ? optionPrice : 0;
                        return OptionItem(label: label, value: label, subLabel: priceNum > 0 ? '+${priceNum / 100.0} ${product.taxType}' : null);
                      }
                      return OptionItem(label: value.toString(), value: value.toString());
                    }).toList(),
                    selectedValue: controller.selectedOptions[variation['name']],
                    onSelected: (val, {bool singleChoice = true, int min = 0, int max = 0}) => controller.selectOption(variation['name'], val, singleChoice: singleChoice, min: min, max: max),
                  ),
                  _sectionDivider(),
                ],
            ],

            // Old API structure fallback is now handled by foodVariations
            // The variations field now only contains VariationModel objects
            if (product.choiceOptions.isNotEmpty) ...[
              // Render choice_options
              for (final choice in product.choiceOptions)
                OptionGroupSection(
                  title: choice.title,
                  requiredField: true,
                  options: choice.options.map((opt) => OptionItem(label: opt, value: opt)).toList(),
                  selectedValue: controller.selectedOptions[choice.name], // chỉ lấy String
                  onSelected: (val, {bool singleChoice = true, int min = 0, int max = 0}) => controller.selectOption(choice.name, val, singleChoice: singleChoice, min: min, max: max),
                ),
            ],

            // Add-on selection
            if (product.addOns.isNotEmpty) ...[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    Text(tr(LocaleKeys.store_addOns), style: AppTextStyles.typographyH10SemiBold.tint(AppColors.textGreyHighest950)),
                    const SizedBox(height: 8),
                    ...product.addOns.map<Widget>((addOn) {
                      // Assume addOn is a Map with id, name, price
                      final addOnId = addOn['id'] as int;
                      final addOnName = addOn['name']?.toString() ?? '';
                      final addOnPrice = addOn['price']?.toString() ?? '';
                      final isSelected = controller.selectedAddOns.containsKey(addOnId);
                      final qty = controller.selectedAddOns[addOnId] ?? 1;
                      return Row(
                        children: [
                          Checkbox(value: isSelected, onChanged: (_) => controller.toggleAddOn(addOnId)),
                          Expanded(child: Text('$addOnName (+$addOnPrice)', style: AppTextStyles.typographyH11Regular)),
                          if (isSelected) ...[
                            IconButton(icon: const Icon(Icons.remove, size: 18), onPressed: () => controller.changeAddOnQty(addOnId, qty - 1)),
                            Text('$qty', style: AppTextStyles.typographyH11Regular),
                            IconButton(icon: const Icon(Icons.add, size: 18), onPressed: () => controller.changeAddOnQty(addOnId, qty + 1)),
                          ],
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ],

            // Recommend sản phẩm (gợi ý mua thêm)
            if (controller.recommendations.isNotEmpty) ...[
              _sectionLabel('You might also like'),
              SizedBox(
                height: 200.w,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.recommendations.length,
                  itemBuilder: (_, i) {
                    final item = controller.recommendations[i];

                    final productItem = ProductItem(id: item.id, name: item.name, price: item.price / 100.0, imageUrl: item.imageUrl, avgRating: 4.5, ratingCount: 123);

                    return ProductCard(item: productItem);
                  },
                  separatorBuilder: (_, _) => SizedBox(width: 12.w),
                ),
              ),

              if (product.nutritions.isNotEmpty) ...[ProductNutritionSection(details: product.description, ingredients: product.nutritions.toString(), nutritions: product.nutritions)],
            ],

            const SizedBox(height: 32),
          ],
        );
      },
    );
  }

  // Các helper UI function giữ nguyên như cũ
  static Widget _sectionLabel(String text, {bool required = false, String? note}) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundSurfaceTertiaryGrey50,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
      child: Row(
        children: [
          Text(text, style: AppTextStyles.typographyH10Medium.tint(AppColors.textGreyHighest950)),
          if (required) Text('  *', style: AppTextStyles.typographyH11Regular.tint(AppColors.stateBrandDefault500)),
          const Spacer(),
          if (note != null) Text(note, style: AppTextStyles.typographyH12Regular.tint(AppColors.textGreyDefault500)),
        ],
      ),
    );
  }

  static Widget _sectionDivider() => Container(height: 1, color: AppColors.backgroundSurfaceTertiaryGrey50, margin: EdgeInsets.zero);
}
