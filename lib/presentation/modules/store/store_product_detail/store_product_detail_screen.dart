import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'store_product_detail_controller.dart';

class StoreProductDetailScreen extends BaseScreen<StoreProductDetailController> {
  const StoreProductDetailScreen({super.key, required this.productId});

  final int productId;

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        final product = controller.product.value;
        if (product == null) {
          return const Center(child: Text('Product not found'));
        }

        return ListView(
          children: [
            // Ảnh sản phẩm
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Ảnh đầu tiên
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(product.imageUrls.firstOrNull ?? ''),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Logo + tên store
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0xFFE8EBEE)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          product.storeImageUrl,
                          width: 18,
                          height: 18,
                          errorBuilder: (_, __, ___) => const Icon(Icons.store, size: 18),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          product.storeName,
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF161A1D),
                          ),
                        ),
                      ],
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
                    style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF161A1D)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${product.price / 100.0} ${product.taxType}',
                    style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Reset recipe button (nếu muốn)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                      side: const BorderSide(color: Color(0xFFE8EBEE)),
                      backgroundColor: const Color(0xFFF7F8F9),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.refresh, size: 20, color: Color(0xFF5856D7)),
                    label: const Text(
                      'Reset to standard recipe',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF5856D7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // ========== Render variations (Size)
            _sectionLabel("Size", required: true),
            ...product.variations.asMap().entries.map(
              (e) => _optionRadioTile(
                context,
                label: e.value.type,
                subLabel: '${e.value.price / 100.0} ${product.taxType}',
                group: 'variation',
                value: e.value.type,
                selected: controller.selectedOptions['variation'] == e.value.type,
                onTap: () => controller.selectOption('variation', e.value.type),
              ),
            ),
            _sectionDivider(),
            // ========== Render choice options (dynamic, từ API)
            for (final choice in product.choiceOptions) ...[
              _sectionLabel(choice.title, required: true),
              ...choice.options.map(
                (opt) => _optionRadioTile(
                  context,
                  label: opt,
                  group: choice.name,
                  value: opt,
                  selected: controller.selectedOptions[choice.name] == opt,
                  onTap: () => controller.selectOption(choice.name, opt),
                ),
              ),
              _sectionDivider(),
            ],
            // ========== Các section khác, add-ons, toppings... bạn bổ sung tương tự như choiceOptions
            // ... (ví dụ Milk, Lemonade, Ice nếu map được vào API)

            // Recommend sản phẩm (gợi ý mua thêm)
            if (controller.recommendations.isNotEmpty) ...[
              _sectionLabel('You might also like'),
              SizedBox(
                height: 140,
                child: ListView.separated(
                  padding: const EdgeInsets.all(12),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.recommendations.length,
                  itemBuilder: (_, i) {
                    final item = controller.recommendations[i];
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(item.imageUrl, width: 70, height: 70, fit: BoxFit.cover),
                        ),
                        SizedBox(height: 8),
                        Text(item.name, style: TextStyle(fontSize: 13, fontFamily: 'Inter'), maxLines: 2),
                        Text('${item.price / 100.0} ${product.taxType}', style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    );
                  },
                  separatorBuilder: (_, __) => SizedBox(width: 12),
                ),
              ),
            ],
            const SizedBox(height: 32),
            // Bottom bar đặt hàng...
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        // Hiện nút đặt hàng (Add to cart)
        return Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF5856D7),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              minimumSize: const Size.fromHeight(50),
            ),
            onPressed: () {
              // controller.addToCart();
            },
            child: const Text(
              'Add to cart',
              style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
        );
      }),
    );
  }

  Widget _sectionLabel(String text, {bool required = false, String? note}) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF7F8F9),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
          ),
          if (required)
            const Text(
              "  *",
              style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xFF5856D7)),
            ),
          const Spacer(),
          if (note != null)
            Text(
              note,
              style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
            ),
        ],
      ),
    );
  }

  Widget _sectionDivider() => Container(height: 1, color: const Color(0xFFE8EBEE), margin: EdgeInsets.zero);

  Widget _optionRadioTile(
    BuildContext context, {
    required String label,
    String? subLabel,
    required String group,
    required String value,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
        child: Row(
          children: [
            _customRadio(selected: selected),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF161A1D)),
              ),
            ),
            if (subLabel != null && subLabel.isNotEmpty)
              Text(
                subLabel,
                style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
              ),
          ],
        ),
      ),
    );
  }

  Widget _customRadio({required bool selected}) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: selected ? const Color(0xFF5856D7) : const Color(0xFF798A9A),
          width: 1.5,
        ),
      ),
      child: selected
          ? Center(
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(color: Color(0xFF5856D7), shape: BoxShape.circle),
              ),
            )
          : null,
    );
  }
}
