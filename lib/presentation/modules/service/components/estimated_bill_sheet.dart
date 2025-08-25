import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/service/ui2/service_ui2_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

class EstimatedBillSheet extends StatelessWidget {
  const EstimatedBillSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServiceUI2Controller>(
      builder: (controller) => Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundSurfacePrimaryWhite,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Grabber
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 8),
              child: Center(
                child: Container(
                  width: 48,
                  height: 4,
                  decoration: BoxDecoration(color: AppColors.stateGreyLowestHover100, borderRadius: BorderRadius.circular(99)),
                ),
              ),
            ),
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Estimated Bill', style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950)),
                  ),
                  GestureDetector(onTap: () => Navigator.of(context).pop(), child: const Text('close')),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Divider(height: 1, thickness: 1, color: AppColors.stateGreyLowestHover100),
            // Scroll content
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Dynamic categories with selected items
                    ...controller.categoryExpandableData.where((category) => category.items.any((item) => item.quantity > 0)).map((category) {
                      final selectedItems = category.items.where((item) => item.quantity > 0).toList();
                      return Column(
                        children: [
                          _SectionGroup(
                            icon: Icons.category,
                            iconColor: AppColors.textGreyHighest950,
                            title: category.name,
                            items: selectedItems
                                .map(
                                  (item) => _SheetItem(
                                    name: item.name,
                                    price: item.price,
                                    quantity: item.quantity,
                                    categoryName: category.name,
                                    onQuantityChanged: (newQuantity) {
                                      item.quantity = newQuantity;
                                      controller.update([ServiceUI2Category.estimatedBill, ServiceUI2Category.categoryExpandable]);
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                          if (controller.categoryExpandableData.where((cat) => cat.items.any((item) => item.quantity > 0)).toList().last != category)
                            Divider(height: 32, thickness: 1, color: AppColors.stateGreyLowestHover100),
                        ],
                      );
                    }),
                    if (controller.hasSelectedItems) ...[
                      Divider(height: 32, thickness: 1, color: AppColors.stateGreyLowestHover100),
                      // Tổng bill
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        child: Column(
                          children: [
                            _BillInfoRow(label: 'Subtotal:', value: '\$${controller.totalCost.toStringAsFixed(2)}'),
                            const _BillInfoRow(label: 'Delivery Fee:', value: '\$0.00'),
                            const _BillInfoRow(label: 'Taxes & Estimated Fees:', value: '\$0.00'),
                            const _BillInfoRow(label: 'Discount:', value: '\$0.00'),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),

            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:', style: AppTextStyles.typographyH8Medium.copyWith(color: AppColors.textGreyHighest950)),
                  Text('\$${controller.totalCost.toStringAsFixed(2)}', style: AppTextStyles.typographyH8Medium.copyWith(color: AppColors.textGreyHighest950)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // Nút action (floating over)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.stateBrandDefault500),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 12)),
                    elevation: WidgetStateProperty.all(0),
                  ),
                  onPressed: () {
                    Get.toNamed(AppRoutes.cartCheckout, arguments: {'serviceCart': 'laundry'});
                  },
                  child: Text('Continue Order', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textBaseWhite)),
                ),
              ),
            ),
            const SizedBox(height: 24), // spa
          ],
        ),
      ),
    );
  }
}

// ====== Widget phụ ======

class _SectionGroup extends StatelessWidget {
  const _SectionGroup({required this.icon, required this.iconColor, required this.title, required this.items});
  final IconData icon;
  final Color iconColor;
  final String title;
  final List<_SheetItem> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tiêu đề group
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Icon(icon, color: iconColor, size: 24),
                const SizedBox(width: 12),
                Text(title, style: AppTextStyles.typographyH9Medium.copyWith(color: iconColor)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // List items
          ...items.map((e) => _SheetItemRow(item: e)),
        ],
      ),
    );
  }
}

class _SheetItem {
  _SheetItem({required this.name, required this.price, required this.quantity, required this.categoryName, required this.onQuantityChanged});
  final String name;
  final double price;
  final int quantity;
  final String categoryName;
  final Function(int) onQuantityChanged;
}

class _SheetItemRow extends StatelessWidget {
  const _SheetItemRow({required this.item});
  final _SheetItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHighest950)),
                const SizedBox(height: 2),
                Text('\$ ${item.price.toStringAsFixed(2)}', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
              ],
            ),
          ),
          _QuantityBox(quantity: item.quantity, onQuantityChanged: item.onQuantityChanged),
        ],
      ),
    );
  }
}

class _QuantityBox extends StatefulWidget {
  const _QuantityBox({required this.quantity, required this.onQuantityChanged});
  final int quantity;
  final Function(int) onQuantityChanged;

  @override
  State<_QuantityBox> createState() => _QuantityBoxState();
}

class _QuantityBoxState extends State<_QuantityBox> {
  late int _currentQuantity;

  @override
  void initState() {
    super.initState();
    _currentQuantity = widget.quantity;
  }

  @override
  void didUpdateWidget(_QuantityBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.quantity != widget.quantity) {
      _currentQuantity = widget.quantity;
    }
  }

  void _updateQuantity(int newQuantity) {
    if (newQuantity >= 0) {
      setState(() {
        _currentQuantity = newQuantity;
      });
      widget.onQuantityChanged(newQuantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 28,
      decoration: BoxDecoration(color: AppColors.stateGreyLowestHover100, borderRadius: BorderRadius.circular(32)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => _updateQuantity(_currentQuantity - 1),
            child: Icon(Icons.remove, size: 20, color: AppColors.textGreyHighest950),
          ),
          Container(
            width: 27,
            alignment: Alignment.center,
            child: Text('$_currentQuantity', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
          ),
          GestureDetector(
            onTap: () => _updateQuantity(_currentQuantity + 1),
            child: Icon(Icons.add, size: 20, color: AppColors.textGreyHighest950),
          ),
        ],
      ),
    );
  }
}

class _BillInfoRow extends StatelessWidget {
  const _BillInfoRow({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHigh700)),
          Text(value, style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHigh700)),
        ],
      ),
    );
  }
}
