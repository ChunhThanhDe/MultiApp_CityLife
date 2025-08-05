import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/category_expandable.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/estimated_bill_sheet.dart';
import 'package:sixam_mart_user/presentation/modules/service/laundry/service_laundry_controller.dart';

class ServiceLaundryScreen extends BaseScreen<ServiceLaundryController> {
  const ServiceLaundryScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        // Top dynamic background
        Obx(
          () => Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(color: controller.currentBackgroundColor),
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              // Custom AppBar
              _LaundryAppBar(),
              // Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Category Tabs
                      _LaundryCategoryTabs(),
                      // Banner + Dots + Text
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: _LaundryBanner()),
                      const SizedBox(height: 6),
                      // Pricing Section
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Pricing title
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pricing',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                                    ),
                                    SizedBox(height: 4),
                                    Text('Each item is charged separately', style: TextStyle(fontSize: 14, color: Color(0xFF4A5763))),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              // List of pricing items
                              GetBuilder<ServiceLaundryController>(
                                builder: (controller) => ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: controller.itemCategories.length,
                                  itemBuilder: (context, i) => Column(
                                    children: [
                                      CategoryExpandable(title: controller.itemCategories[i].name, parts: controller.itemCategories[i].items.length, items: controller.itemCategories[i].items),
                                      if (i < controller.itemCategories.length - 1) _Divider(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Bottom Summary Widget
                    ],
                  ),
                ),
              ),
              GetBuilder<ServiceLaundryController>(
                builder: (controller) => controller.hasSelectedItems ? _EstimatedBillWidget(controller: controller) : const SizedBox(height: 10), // Space for bottom nav when no items selected
              ),
            ],
          ),
        ),
        // Bottom NavBar
      ],
    );
  }
}

// ------------ Widget Components ------------

// Custom AppBar
class _LaundryAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.transparent,
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'Laundry',
              style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
            ),
          ),
          Icon(Icons.notifications_none, color: Colors.white, size: 24),
        ],
      ),
    );
  }
}

// Category Tabs
class _LaundryCategoryTabs extends GetView<ServiceLaundryController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Obx(() {
        // Access the reactive variable to make Obx detect changes
        final selectedIndex = controller.selectedCategoryIndex;
        return ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 8),
          itemCount: ServiceLaundryController.laundryCategories.length,
          separatorBuilder: (context, index) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            final category = ServiceLaundryController.laundryCategories[index];
            return _CategoryTab(
              svgAsset: _getIconAsset(category['icon']),
              label: category['label'],
              active: selectedIndex == index,
              activeColor: category['color'] as Color,
              onTap: () => controller.selectCategory(index),
            );
          },
        );
      }),
    );
  }

  SvgGenImage _getIconAsset(String iconName) {
    switch (iconName) {
      case 'icClothHanger1':
        return Assets.icons.icClothHanger1;
      case 'icIron':
        return Assets.icons.icIron;
      case 'icSingleBed1':
        return Assets.icons.icSingleBed1;
      case 'icBackpackModern1':
        return Assets.icons.icBackpackModern1;
      case 'icSneakers1':
        return Assets.icons.icSneakers1;
      default:
        return Assets.icons.icClothHanger1;
    }
  }
}

class _CategoryTab extends StatelessWidget {
  const _CategoryTab({required this.label, this.svgAsset, this.active = false, this.activeColor, this.onTap});
  final SvgGenImage? svgAsset;
  final String label;
  final bool active;
  final Color? activeColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(color: const Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Container(
                width: 74,
                height: 74,
                decoration: BoxDecoration(
                  color: active ? Colors.white : const Color(0xFFF7F8F9),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: const [
                    BoxShadow(color: Color(0x1A101214), offset: Offset(0, 6), blurRadius: 8),
                    BoxShadow(color: Color(0x1A101214), offset: Offset(0, 18), blurRadius: 24),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: svgAsset!.svg(width: 28, height: 28, colorFilter: ColorFilter.mode(active ? (activeColor ?? const Color(0xFF5856D7)) : const Color(0xFF161A1D), BlendMode.srcIn)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: active ? (activeColor ?? const Color(0xFF5856D7)) : const Color(0xFF161A1D)),
          ),
        ],
      ),
    );
  }
}

// Banner + Dots + Text
class _LaundryBanner extends GetView<ServiceLaundryController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Swipeable Banner Images
        SizedBox(
          height: 180,
          child: PageView.builder(
            onPageChanged: controller.onBannerPageChanged,
            itemCount: controller.bannerCount,
            itemBuilder: (context, index) {
              final banner = ServiceLaundryController.bannerList[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(banner['image'] as String, width: 382, height: 180, fit: BoxFit.cover),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        // Dynamic Dots
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(controller.bannerCount, (index) => _Dot(active: controller.selectedBannerIndex == index)),
          ),
        ),
        const SizedBox(height: 8),
        // Dynamic Text based on current banner
        Obx(() {
          final currentBanner = ServiceLaundryController.bannerList[controller.selectedBannerIndex];
          return Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentBanner['title'] as String,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                ),
                const SizedBox(height: 4),
                Text(currentBanner['subtitle'] as String, style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
              ],
            ),
          );
        }),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({this.active = false});
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 24 : 12,
      height: 4,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(color: active ? const Color(0xFF5856D7) : const Color(0x1A101214), borderRadius: BorderRadius.circular(24)),
    );
  }
}

// Divider (thin line)
class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(left: 24), height: 1, color: const Color(0xFFE8EBEE));
  }
}

class _EstimatedBillWidget extends StatelessWidget {
  const _EstimatedBillWidget({required this.controller});
  final ServiceLaundryController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: const Color(0xFF101214).withValues(alpha: 0.1), offset: const Offset(0, -5), blurRadius: 32, spreadRadius: 0)],
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Divider with grabber
          Container(
            width: double.infinity,
            height: 12,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Center(
              child: Container(
                width: 48,
                height: 4,
                decoration: BoxDecoration(color: const Color(0xFFE8EBEE), borderRadius: BorderRadius.circular(99)),
              ),
            ),
          ),
          // Cell item with top padding
          Container(
            width: double.infinity,
            height: 62,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
            child: Row(
              children: [
                // Title and subtitle section
                Expanded(
                  child: SizedBox(
                    height: 54,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Title
                        const Text(
                          'Estimated Bill',
                          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 20, height: 1.5, color: Color(0xFF161A1D)),
                        ),
                        // Subtitle
                        Text(
                          '\$${controller.totalCost.toStringAsFixed(2)}',
                          style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, height: 1.5, color: Color(0xFF161A1D)),
                        ),
                      ],
                    ),
                  ),
                ),
                // Label
                TextButton(
                  onPressed: () {
                    // Chỉ cần gọi hàm này ở onTap More Details là được:
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => const ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                        child: FractionallySizedBox(heightFactor: 0.85, child: EstimatedBillSheet()),
                      ),
                    );
                  },
                  child: const Text(
                    'More details',
                    style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, height: 1.43, color: Color(0xFF161A1D)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
