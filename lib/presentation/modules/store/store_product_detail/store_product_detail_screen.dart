import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_card.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_detail_appbar.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_nutritiion_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/product_option_group_section.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

import 'package:sixam_mart_user/presentation/modules/store/store_product_detail/store_product_detail_controller.dart';

class StoreProductDetailScreen extends BaseScreen<StoreProductDetailController> {
  const StoreProductDetailScreen({required this.productId, super.key});
  final int productId;

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
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xFF5856D7),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            ),
            onPressed: () {
              controller.addToCart();
            },
            child: Text(
              'Add to cart${priceText.isNotEmpty ? " • $priceText" : ""}',
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white, fontFamily: 'Inter'),
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget buildScreen(BuildContext context) {
    return GetX<StoreProductDetailController>(
      init: StoreProductDetailController(productId),
      builder: (controller) {
        final isLoading = controller.isLoading.value;
        final product = controller.product.value;

        if (isLoading) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        if (product == null) {
          return const Scaffold(body: Center(child: Text('Product not found')));
        }

        return ListView(
          children: [
            // Ảnh sản phẩm
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
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
                      padding: const EdgeInsets.only(top: 180),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFE8EBEE)),
                          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.07), blurRadius: 6, offset: const Offset(0, 2))],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppImage.network(product.storeImageUrl, width: 24, height: 24),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                product.storeName,
                                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Color(0xFF161A1D)),
                                overflow: TextOverflow.ellipsis,
                              ),
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
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF161A1D)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${product.price} ${product.taxType}',
                    style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GestureDetector(
                onTap: () {
                  // TODO: handle reset
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F8F9),
                    borderRadius: BorderRadius.circular(20), // pill shape
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Reset to standard recipe',
                        style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF161A1D)),
                      ),
                      Spacer(),
                      Icon(Icons.refresh, size: 18, color: Color(0xFFB5B9C2)),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            // ========== Render variations (Size)
            if (product.variations.isNotEmpty) ...[
              OptionGroupSection(
                title: 'Size',
                requiredField: true,
                options: product.variations.map((v) => OptionItem(label: v.type, value: v.type, subLabel: '${v.price / 100.0} ${product.taxType}')).toList(),
                selectedValue: controller.selectedOptions['variation'], // chỉ lấy String
                onSelected: (val) => controller.selectOption('variation', val),
              ),
            ],

            _sectionDivider(),
            if (product.choiceOptions.isNotEmpty) ...[
              // Render choice_options
              for (final choice in product.choiceOptions)
                OptionGroupSection(
                  title: choice.title,
                  requiredField: true,
                  options: choice.options.map((opt) => OptionItem(label: opt, value: opt)).toList(),
                  selectedValue: controller.selectedOptions[choice.name], // chỉ lấy String
                  onSelected: (val) => controller.selectOption(choice.name, val),
                ),
            ],

            // Add-on selection
            if (product.addOns.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    const Text(
                      'Add-ons',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF161A1D)),
                    ),
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
                          Expanded(child: Text('$addOnName (+$addOnPrice)', style: const TextStyle(fontSize: 15))),
                          if (isSelected) ...[
                            IconButton(icon: const Icon(Icons.remove, size: 18), onPressed: () => controller.changeAddOnQty(addOnId, qty - 1)),
                            Text('$qty', style: const TextStyle(fontSize: 15)),
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

                    final productItem = ProductItem(
                      id: item.id,
                      name: item.name,
                      price: item.price / 100.0,
                      imageUrl: item.imageUrl,
                      rating: 123.0, //
                      reviewCount: 123, // Tương tự
                    );

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
      color: const Color(0xFFF7F8F9),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
          ),
          if (required)
            const Text(
              '  *',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xFF5856D7)),
            ),
          const Spacer(),
          if (note != null)
            Text(
              note,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
            ),
        ],
      ),
    );
  }

  static Widget _sectionDivider() => Container(height: 1, color: const Color(0xFFE8EBEE), margin: EdgeInsets.zero);
}
