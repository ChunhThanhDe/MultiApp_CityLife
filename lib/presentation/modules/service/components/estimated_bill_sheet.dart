import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

class EstimatedBillSheet extends StatelessWidget {
  const EstimatedBillSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Text(
                    'Estimated Bill',
                    style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.textGreyHighest950),
                  ),
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
                  // Nhóm Clothes
                  _SectionGroup(
                    icon: Icons.checkroom_rounded,
                    iconColor: AppColors.stateBrandDefault500,
                    title: 'Clothes',
                    items: [
                      _SheetItem(name: 'Pajama Top', price: 5.99, quantity: 4),
                      _SheetItem(name: 'T-Shirt', price: 5.99, quantity: 4),
                      _SheetItem(name: 'Blouse', price: 5.99, quantity: 4),
                      _SheetItem(name: 'Tunics', price: 5.99, quantity: 4),
                    ],
                  ),
                  Divider(height: 32, thickness: 1, color: AppColors.stateGreyLowestHover100),
                  // Nhóm Home
                  _SectionGroup(
                    icon: Icons.bed_rounded,
                    iconColor: AppColors.stateInformationDefault500,
                    title: 'Home',
                    items: [
                      _SheetItem(name: 'Pajama Top', price: 5.99, quantity: 4),
                      _SheetItem(name: 'T-Shirt', price: 5.99, quantity: 4),
                      _SheetItem(name: 'Blouse', price: 5.99, quantity: 4),
                      _SheetItem(name: 'Tunics', price: 5.99, quantity: 4),
                    ],
                  ),
                  Divider(height: 32, thickness: 1, color: AppColors.stateGreyLowestHover100),
                  // Tổng bill
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                    child: Column(
                      children: [
                        _BillInfoRow(label: 'Subtotal:', value: '\$23.94'),
                        _BillInfoRow(label: 'Delivery Fee:', value: '\$0.00'),
                        _BillInfoRow(label: 'Taxes & Estimated Fees:', value: '\$0.00'),
                        _BillInfoRow(label: 'Discount:', value: '\$0.00'),
                      ],
                    ),
                  ),
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
                Text(
                  'Total:',
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.textGreyHighest950),
                ),
                Text(
                  '\$23.94',
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.textGreyHighest950),
                ),
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
                child: Text(
                  'Continue Order',
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.textBaseWhite),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24), // spa
        ],
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
                Text(
                  title,
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 18, color: iconColor),
                ),
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
  _SheetItem({required this.name, required this.price, required this.quantity});
  final String name;
  final double price;
  final int quantity;
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
                Text(
                  item.name,
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.textGreyHighest950),
                ),
                const SizedBox(height: 2),
                Text(
                  '\$ ${item.price.toStringAsFixed(2)}',
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textGreyHigh700),
                ),
              ],
            ),
          ),
          _QuantityBox(quantity: item.quantity),
        ],
      ),
    );
  }
}

class _QuantityBox extends StatelessWidget {
  const _QuantityBox({required this.quantity});
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 28,
      decoration: BoxDecoration(color: AppColors.stateGreyLowestHover100, borderRadius: BorderRadius.circular(32)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.remove, size: 20, color: AppColors.textGreyHighest950),
          Container(
            width: 27,
            alignment: Alignment.center,
            child: Text(
              '$quantity',
              style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textGreyHighest950),
            ),
          ),
          Icon(Icons.add, size: 20, color: AppColors.textGreyHighest950),
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
          Text(
            label,
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.textGreyHigh700),
          ),
          Text(
            value,
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.textGreyHigh700),
          ),
        ],
      ),
    );
  }
}
