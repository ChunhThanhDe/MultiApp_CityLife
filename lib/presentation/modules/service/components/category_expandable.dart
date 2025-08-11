import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/service/laundry/service_laundry_controller.dart';

class ItemOption {
  ItemOption({required this.name, required this.price, this.quantity = 0});
  final String name;
  final double price;
  int quantity;
}

class CategoryOption {
  CategoryOption({required this.name, required this.items});
  final String name;
  final List<ItemOption> items;
}

class CategoryExpandable extends StatefulWidget {
  const CategoryExpandable({required this.title, required this.parts, required this.items, super.key});
  final String title;
  final int parts;
  final List<ItemOption> items;

  @override
  State<CategoryExpandable> createState() => _CategoryExpandableState();
}

class _CategoryExpandableState extends State<CategoryExpandable> {
  bool _expanded = false;

  void _onItemChanged() {
    setState(() {});
    // Update the controller to refresh the bottom summary
    Get.find<ServiceLaundryController>().update();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => setState(() => _expanded = !_expanded),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 24.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
                  ),
                ),
                Text(
                  '${widget.parts} Parts',
                  style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700),
                ),
                Icon(_expanded ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_right_rounded, color: AppColors.textGreyHigh700),
              ],
            ),
          ),
        ),
        if (_expanded) ...widget.items.map((item) => ItemOptionRow(item: item, onChanged: _onItemChanged)),
        Divider(height: 1, color: AppColors.stateGreyLowestHover100),
      ],
    );
  }
}

class ItemOptionRow extends StatelessWidget {
  const ItemOptionRow({required this.item, required this.onChanged, super.key});
  final ItemOption item;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 24.w),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
                ),
                const SizedBox(height: 2),
                Text(
                  '\$ ${item.price.toStringAsFixed(2)}',
                  style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700),
                ),
              ],
            ),
          ),
          // Button Add/Subtract
          _ItemCounter(item: item, onChanged: onChanged),
        ],
      ),
    );
  }
}

class _ItemCounter extends StatelessWidget {
  const _ItemCounter({required this.item, required this.onChanged});
  final ItemOption item;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
        color: item.quantity > 0 ? AppColors.stateGreyLowestHover100 : AppColors.backgroundSurfaceTertiaryGrey50,
        border: Border.all(color: AppColors.stateGreyLowestHover100),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (item.quantity > 0)
            IconButton(
              icon: Icon(Icons.remove, size: 20, color: AppColors.textGreyHighest950),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              onPressed: () {
                item.quantity--;
                onChanged();
              },
            ),
          GestureDetector(
            onTap: () {
              if (!(item.quantity > 0)) {
                item.quantity = 1;
                onChanged();
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: item.quantity > 0 ? 27 : 75, // chỉnh width nhỏ cho vừa text
              height: 24,
              child: Text(
                item.quantity > 0 ? '${item.quantity}' : 'Add',
                style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
              ),
            ),
          ),
          if (item.quantity > 0)
            IconButton(
              icon: Icon(Icons.add, size: 20, color: AppColors.textGreyHighest950),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              onPressed: () {
                item.quantity++;
                onChanged();
              },
            ),
        ],
      ),
    );
  }
}
