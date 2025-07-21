import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'store_product_detail_controller.dart';

class StoreProductDetailScreen extends BaseScreen<StoreProductDetailController> {
  const StoreProductDetailScreen(this.productId, {super.key});
  final int productId;

  @override
  Widget buildScreen(BuildContext context) {
    return GetX<StoreProductDetailController>(
      init: StoreProductDetailController(productId),
      builder: (controller) {
        if (controller.loading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        final product = controller.product.value;
        if (product == null) {
          return const Center(child: Text("No product found"));
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Store info
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        product.storeImageUrl,
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(product.storeName, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 12),

                // 2. Product Name & Price
                Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      "${product.price}đ",
                      style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                    ),
                    if (product.discount > 0) ...[
                      const SizedBox(width: 8),
                      Text(
                        product.discountType == 'percent' ? '-${product.discount}%' : '-${product.discount}đ',
                        style: const TextStyle(fontSize: 14, color: Colors.redAccent, decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 8),

                // 3. Description
                if (product.description.isNotEmpty) Text(product.description, style: const TextStyle(fontSize: 15, color: Colors.black87)),
                const SizedBox(height: 16),

                // 4. Ảnh sản phẩm (imageUrls + gallery)
                if ((product.imageUrls.isNotEmpty || product.gallery.isNotEmpty))
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...product.imageUrls.map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(e, height: 180, width: 180, fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        ...product.gallery.map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(e, height: 180, width: 180, fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (product.imageUrls.isEmpty && product.gallery.isEmpty)
                  Container(
                    height: 180,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Center(child: Icon(Icons.image_not_supported, size: 50, color: Colors.grey)),
                  ),
                const SizedBox(height: 20),

                // 5. Variation Groups (Color, Size, ...)
                if (product.choiceOptions.isNotEmpty) ...[
                  ...product.choiceOptions.map(
                    (group) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(group.title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                        Wrap(
                          children: group.options
                              .map(
                                (opt) => Padding(
                                  padding: const EdgeInsets.only(right: 8, bottom: 8),
                                  child: ChoiceChip(
                                    label: Text(opt),
                                    selected: controller.isOptionSelected(group.name, opt),
                                    onSelected: (selected) {
                                      controller.selectOption(group.name, opt);
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ],

                // 6. Variations list + price (tùy chọn)
                if (product.variations.isNotEmpty) ...[
                  Text("Cách kết hợp và giá:", style: const TextStyle(fontWeight: FontWeight.w600)),
                  ...product.variations.map(
                    (v) => Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 2),
                      child: Text(
                        "${v.type}: ${v.price}đ",
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],

                // 7. Add-on (nếu có)
                if (product.addOns.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Text("Add-ons:", style: const TextStyle(fontWeight: FontWeight.w600)),
                  ...product.addOns.map((e) => Text("- $e")), // fill lại đúng dạng nếu có add-ons
                ],

                // 8. Recommendation
                const SizedBox(height: 20),
                if (controller.recommendations.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Gợi ý cho bạn", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 170,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.recommendations.length,
                          separatorBuilder: (_, __) => const SizedBox(width: 8),
                          itemBuilder: (context, i) {
                            final item = controller.recommendations[i];
                            return Card(
                              child: SizedBox(
                                width: 130,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(item.imageUrl, height: 90, width: 130, fit: BoxFit.cover),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            item.name,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(height: 2),
                                          Text("${item.price}đ", style: const TextStyle(color: Colors.deepPurple)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                // 9. Add to cart button
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Thêm vào giỏ hàng",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
