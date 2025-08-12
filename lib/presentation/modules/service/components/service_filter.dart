import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // Expand state
  bool deliveryExpanded = false;
  bool priceExpanded = false;
  bool ratingExpanded = false;

  // Price values (0: $, 1: $$, 2: $$$, 3: $$$$, 4: $$$$$)
  RangeValues priceRange = const RangeValues(0, 2);
  static const priceLabels = ['\$', '\$\$', '\$\$\$', '\$\$\$\$', '\$\$\$\$\$'];

  // Rating values (0: 2+, 1: 2.5+, 2: 4+, 3: 4.5+, 4: 5)
  double ratingValue = 2;
  static const ratingMarks = [2.0, 2.5, 4.0, 4.5, 5.0];

  String selectedDelivery = 'Delivery';

  bool under30Min = false;
  bool offers = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundSurfacePrimaryWhite,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Grabber
          const SizedBox(height: 12),
          Container(
            width: 48,
            height: 4,
            decoration: BoxDecoration(color: AppColors.backgroundSurfaceTertiaryGrey50, borderRadius: BorderRadius.circular(99)),
          ),
          const SizedBox(height: 16),
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text('Short & Filter', style: AppTextStyles.typographyH8SemiBold.copyWith(color: AppColors.textGreyHighest950)),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    setState(() {
                      // Reset all filter values
                      priceRange = const RangeValues(0, 2);
                      ratingValue = 2;
                      selectedDelivery = 'Delivery';
                      under30Min = false;
                      offers = false;
                    });
                  },
                  style: TextButton.styleFrom(foregroundColor: AppColors.textGreyDefault500, padding: EdgeInsets.zero, minimumSize: const Size(0, 0)),
                  child: Text('Clear all', style: AppTextStyles.typographyH11Regular),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // Nội dung filter
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Delivery cell (expandable)
                  _ExpandableSection(
                    expanded: deliveryExpanded,
                    onTap: () => setState(() => deliveryExpanded = !deliveryExpanded),
                    icon: SvgPicture.asset('assets/icons/ic_car_black.svg', width: 24, height: 24),
                    title: 'Delivery',
                    children: deliveryExpanded
                        ? [
                            _SelectOption(
                              label: 'In store',
                              selected: selectedDelivery == 'In store',
                              onTap: () {
                                setState(() {
                                  selectedDelivery = 'In store';
                                });
                              },
                            ),
                            _SelectOption(
                              label: 'Delivery',
                              selected: selectedDelivery == 'Delivery',
                              onTap: () {
                                setState(() {
                                  selectedDelivery = 'Delivery';
                                });
                              },
                            ),
                            _SelectOption(
                              label: 'Drive thru',
                              selected: selectedDelivery == 'Drive thru',
                              onTap: () {
                                setState(() {
                                  selectedDelivery = 'Drive thru';
                                });
                              },
                            ),
                          ]
                        : [],
                  ),
                  const _DividerLine(),

                  // PRICE (expandable with slider)
                  _ExpandableSection(
                    expanded: priceExpanded,
                    onTap: () => setState(() => priceExpanded = !priceExpanded),
                    icon: SvgPicture.asset('assets/icons/ic_dollar.svg', width: 24, height: 24),
                    title: 'Price',
                    showClear: priceExpanded,
                    onClear: () {
                      setState(() {
                        priceRange = const RangeValues(0, 2);
                      });
                    },
                    children: priceExpanded
                        ? [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _CustomRangeSlider(
                                    range: priceRange,
                                    min: 0,
                                    max: 4,
                                    divisions: 4,
                                    labels: priceLabels,
                                    onChanged: (RangeValues newRange) {
                                      setState(() => priceRange = newRange);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ]
                        : [],
                  ),
                  const _DividerLine(),

                  // RATING (expandable with slider)
                  _ExpandableSection(
                    expanded: ratingExpanded,
                    onTap: () => setState(() => ratingExpanded = !ratingExpanded),
                    icon: SvgPicture.asset('assets/icons/ic_star.svg', width: 24, height: 24),
                    title: 'Rating',
                    children: ratingExpanded
                        ? [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [_CustomMarkSlider(value: ratingValue, marks: ratingMarks, onChanged: (double v) => setState(() => ratingValue = v))],
                              ),
                            ),
                          ]
                        : [],
                  ),
                  const _DividerLine(),

                  // Under 30 min
                  _CheckableCell(
                    icon: SvgPicture.asset('assets/icons/ic_clock_time.svg', width: 24, height: 24),
                    title: 'Under 30 min',
                    checked: under30Min,
                    onChanged: (val) => setState(() => under30Min = val),
                  ),
                  const _DividerLine(),
                  _CheckableCell(icon: SvgPicture.asset('assets/icons/ic_sale.svg', width: 24, height: 24), title: 'Offers', checked: offers, onChanged: (val) => setState(() => offers = val)),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),

          // View results button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.stateBrandDefault500,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text('View results', style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textBaseWhite)),
              ),
            ),
          ),
          // Home indicator
          const SizedBox(height: 8),
          Container(
            width: 134,
            height: 5,
            decoration: BoxDecoration(color: AppColors.textGreyHighest950, borderRadius: BorderRadius.circular(100)),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

// Section expandable cell
class _ExpandableSection extends StatelessWidget {
  const _ExpandableSection({required this.expanded, required this.onTap, required this.icon, required this.title, this.showClear = false, this.onClear, this.children = const []});
  final bool expanded;
  final VoidCallback onTap;
  final Widget icon;
  final String title;
  final bool showClear;
  final VoidCallback? onClear;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Widget arrowIcon(bool expanded) => Icon(expanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded, color: AppColors.textGreyDefault500);
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                icon,
                const SizedBox(width: 12),
                Expanded(
                  child: Text(title, style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950)),
                ),
                if (showClear && onClear != null)
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: AppColors.textGreyDefault500, padding: EdgeInsets.zero, minimumSize: const Size(0, 0)),
                    onPressed: onClear,
                    child: Text('Clear', style: AppTextStyles.typographyH11Regular),
                  ),
                arrowIcon(expanded),
              ],
            ),
          ),
        ),
        ...children,
      ],
    );
  }
}

// Divider line
class _DividerLine extends StatelessWidget {
  const _DividerLine();

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(left: 56), height: 1, color: AppColors.backgroundSurfaceTertiaryGrey50);
  }
}

// Widget chọn lựa option nhỏ (ví dụ: Delivery method)
class _SelectOption extends StatelessWidget {
  const _SelectOption({
    required this.label,
    required this.selected,
    required this.onTap,
    // ignore: unused_element_parameter
    this.enabled = true,
  });
  final String label;
  final bool selected;
  final VoidCallback onTap;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1.0 : 0.4,
      child: InkWell(
        onTap: enabled ? onTap : null,
        child: Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 56),
          child: Row(
            children: [
              Expanded(
                child: Text(label, style: AppTextStyles.typographyH10Regular.copyWith(color: selected ? AppColors.textGreyHighest950 : AppColors.textGreyDefault500)),
              ),
              if (selected) Icon(Icons.check, color: AppColors.textGreyHighest950, size: 22),
            ],
          ),
        ),
      ),
    );
  }
}

// --- Price: Custom Range Slider với các label đô la
class _CustomRangeSlider extends StatelessWidget {
  const _CustomRangeSlider({required this.range, required this.min, required this.max, required this.divisions, required this.labels, required this.onChanged});
  final RangeValues range;
  final double min;
  final double max;
  final int divisions;
  final List<String> labels;
  final ValueChanged<RangeValues> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Labels
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(labels.length, (i) {
            return Text(labels[i], style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHighest950));
          }),
        ),
        const SizedBox(height: 12),
        // Slider
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 8,
            activeTrackColor: AppColors.stateBrandDefault500,
            inactiveTrackColor: AppColors.backgroundSurfaceTertiaryGrey50,
            thumbColor: AppColors.backgroundSurfacePrimaryWhite,
            overlayColor: AppColors.stateBrandDefault500.withValues(alpha: 0.12),
            // rangeThumbShape: _CustomRangeThumbShape(),
            // rangeTrackShape: const _CustomRangeTrackShape(),
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: RangeSlider(values: range, min: min, max: max, divisions: divisions, onChanged: onChanged),
        ),
      ],
    );
  }
}

class _CustomMarkSlider extends StatelessWidget {
  const _CustomMarkSlider({required this.value, required this.marks, required this.onChanged});
  final double value;
  final List<double> marks;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    final labelWidgets = marks
        .map((m) => Text(m == m.toInt() ? '${m.toInt()}+' : '${m.toStringAsFixed(1)}+', style: AppTextStyles.typographyH10Regular.copyWith(color: AppColors.textGreyHighest950)))
        .toList();

    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: labelWidgets),
        const SizedBox(height: 12),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 8,
            activeTrackColor: AppColors.stateBrandDefault500,
            inactiveTrackColor: AppColors.backgroundSurfaceTertiaryGrey50,
            thumbColor: AppColors.backgroundSurfacePrimaryWhite,
            overlayColor: AppColors.stateBrandDefault500.withValues(alpha: 0.12),
            // thumbShape: _CustomThumbShape(),
            // trackShape: const _CustomTrackShape(),
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: Slider(value: value, min: marks.first, max: marks.last, divisions: marks.length - 1, label: value.toString(), onChanged: onChanged),
        ),
      ],
    );
  }
}

class _CheckableCell extends StatelessWidget {
  const _CheckableCell({required this.icon, required this.title, required this.checked, required this.onChanged});
  final Widget icon;
  final String title;
  final bool checked;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!checked),
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 12),
            Expanded(
              child: Text(title, style: AppTextStyles.typographyH10Medium.copyWith(color: checked ? AppColors.textGreyHighest950 : AppColors.textGreyDefault500)),
            ),
            if (checked) Icon(Icons.check, color: AppColors.textGreyHighest950, size: 20),
          ],
        ),
      ),
    );
  }
}
