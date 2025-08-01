import 'package:flutter/material.dart';

class ItemOption {
  final String name;
  final double price;
  int quantity;

  ItemOption({required this.name, required this.price, this.quantity = 0});
}

class CategoryOption {
  final String name;
  final List<ItemOption> items;

  CategoryOption({required this.name, required this.items});
}

class CategoryExpandable extends StatefulWidget {
  final String title;
  final int parts;
  final List<ItemOption> items;

  const CategoryExpandable({super.key, required this.title, required this.parts, required this.items});

  @override
  State<CategoryExpandable> createState() => _CategoryExpandableState();
}

class _CategoryExpandableState extends State<CategoryExpandable> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => setState(() => _expanded = !_expanded),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                  ),
                ),
                Text(
                  "${widget.parts} Parts",
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
                ),
                Icon(_expanded ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_right_rounded, color: Color(0xFF4A5763)),
              ],
            ),
          ),
        ),
        if (_expanded) ...widget.items.map((item) => ItemOptionRow(item: item, onChanged: () => setState(() {}))),
        Divider(height: 1, color: Color(0xFFE8EBEE)),
      ],
    );
  }
}

class ItemOptionRow extends StatelessWidget {
  final ItemOption item;
  final VoidCallback onChanged;

  const ItemOptionRow({super.key, required this.item, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF161A1D)),
                ),
                SizedBox(height: 2),
                Text(
                  '\$ ${item.price.toStringAsFixed(2)}',
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
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
  final ItemOption item;
  final VoidCallback onChanged;

  const _ItemCounter({required this.item, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
        color: item.quantity > 0 ? Color(0xFFE8EBEE) : Color(0xFFF7F8F9),
        border: Border.all(color: Color(0xFFE8EBEE)),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (item.quantity > 0)
            IconButton(
              icon: Icon(Icons.remove, size: 20, color: Color(0xFF161A1D)),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
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
              width: 27, // chỉnh width nhỏ cho vừa text
              height: 24,
              child: Text(
                item.quantity > 0 ? "${item.quantity}" : "Add",
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF161A1D)),
              ),
            ),
          ),
          if (item.quantity > 0)
            IconButton(
              icon: Icon(Icons.add, size: 20, color: Color(0xFF161A1D)),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
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
