import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

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

class CategoryExpandable extends StatelessWidget {
  const CategoryExpandable({required this.title, required this.parts, required this.items, required this.onChanged, super.key});
  final String title;
  final int parts;
  final List<ItemOption> items;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePanel(
          header: Padding(
            padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 24.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(title, style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                ),
                Text('$parts Parts', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
              ],
            ),
          ),
          collapsed: const SizedBox.shrink(),
          expanded: Column(
            children: items.map((item) => ItemOptionRow(item: item, onChanged: onChanged)).toList(),
          ),
          theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapHeaderToExpand: true,
            tapBodyToExpand: false,
            tapBodyToCollapse: false,
            hasIcon: true,
            iconColor: AppColors.textGreyHigh700,
            expandIcon: Icons.keyboard_arrow_right_rounded,
            collapseIcon: Icons.keyboard_arrow_down_rounded,
          ),
        ),
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
                Text(item.name, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
                const SizedBox(height: 2),
                Text('\$ ${item.price.toStringAsFixed(2)}', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)),
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

class _ItemCounter extends StatefulWidget {
  const _ItemCounter({required this.item, required this.onChanged});
  final ItemOption item;
  final VoidCallback onChanged;

  @override
  State<_ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<_ItemCounter> {
  void _updateQuantity(int newQuantity) {
    setState(() {
      widget.item.quantity = newQuantity;
    });
    widget.onChanged();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
        color: widget.item.quantity > 0 ? AppColors.stateGreyLowestHover100 : AppColors.backgroundSurfaceTertiaryGrey50,
        border: Border.all(color: AppColors.stateGreyLowestHover100),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.item.quantity > 0)
            IconButton(
              icon: Icon(Icons.remove, size: 20, color: AppColors.textGreyHighest950),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              onPressed: () {
                if (widget.item.quantity > 0) {
                  _updateQuantity(widget.item.quantity - 1);
                }
              },
            ),
          GestureDetector(
            onTap: () {
              if (widget.item.quantity == 0) {
                _updateQuantity(1);
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: widget.item.quantity > 0 ? 27 : 75,
              height: 24,
              child: Text(widget.item.quantity > 0 ? '${widget.item.quantity}' : 'Add', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
            ),
          ),
          if (widget.item.quantity > 0)
            IconButton(
              icon: Icon(Icons.add, size: 20, color: AppColors.textGreyHighest950),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              onPressed: () {
                _updateQuantity(widget.item.quantity + 1);
              },
            ),
        ],
      ),
    );
  }
}
