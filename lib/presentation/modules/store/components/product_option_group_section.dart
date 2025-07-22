import 'package:flutter/material.dart';

class OptionGroupSection extends StatelessWidget {
  final String title;
  final bool requiredField;
  final List<OptionItem> options;
  final String? selectedValue;
  final ValueChanged<String> onSelected;

  const OptionGroupSection({
    super.key,
    required this.title,
    this.requiredField = false,
    required this.options,
    required this.selectedValue,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: Color(0xFFB3C6FF),
        //   width: 1,
        // ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Group label
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: Color(0xFFF7F8F9),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF161A1D),
                  ),
                ),
                if (requiredField)
                  const Text(
                    '  *',
                    style: TextStyle(
                      color: Color(0xFF5856D7),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                const Spacer(),
                const Text(
                  "Required",
                  style: TextStyle(
                    color: Color(0xFF4A5763),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          // Danh sách options
          ...options.asMap().entries.map(
            (entry) {
              final opt = entry.value;
              final isLast = entry.key == options.length - 1;
              return Column(
                children: [
                  _OptionItemCheckboxTile(
                    label: opt.label,
                    subLabel: opt.subLabel,
                    checked: selectedValue == opt.value, // chỉ 1 lựa chọn
                    onTap: () => onSelected(opt.value),
                  ),
                  if (!isLast) const SizedBox(height: 6),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class OptionItem {
  final String label;
  final String value;
  final String? subLabel;

  OptionItem({required this.label, required this.value, this.subLabel});
}

class _OptionItemCheckboxTile extends StatelessWidget {
  final String label;
  final String? subLabel;
  final bool checked;
  final VoidCallback onTap;

  const _OptionItemCheckboxTile({
    required this.label,
    this.subLabel,
    required this.checked,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        height: 36,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF161A1D),
                ),
              ),
            ),
            if (subLabel != null && subLabel!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text(
                  subLabel!,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Color(0xFF4A5763),
                  ),
                ),
              ),
            _CustomCheckbox(checked: checked),
          ],
        ),
      ),
    );
  }
}

class _CustomCheckbox extends StatelessWidget {
  final bool checked;

  const _CustomCheckbox({required this.checked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: checked ? Color(0xFF5856D7) : Color(0xFF798A9A),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(4),
        color: checked ? Color(0xFF5856D7) : Colors.transparent,
      ),
      child: checked ? const Icon(Icons.check, color: Colors.white, size: 18) : null,
    );
  }
}
