import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/category_expandable.dart';

import 'service_laundry_controller.dart';

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
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pricing",
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                                    ),
                                    SizedBox(height: 4),
                                    Text("Each item is charged separately", style: TextStyle(fontSize: 14, color: Color(0xFF4A5763))),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16),
                              // List of pricing items
                              GetBuilder<ServiceLaundryController>(
                                builder: (controller) => ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
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
                      SizedBox(height: 94), // Space for bottom nav
                    ],
                  ),
                ),
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
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Laundry",
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
      height: 130,
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
  final SvgGenImage? svgAsset;
  final String label;
  final bool active;
  final Color? activeColor;
  final VoidCallback? onTap;
  const _CategoryTab({this.svgAsset, required this.label, this.active = false, this.activeColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(color: Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Container(
                width: 74,
                height: 74,
                decoration: BoxDecoration(
                  color: active ? Colors.white : Color(0xFFF7F8F9),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(color: Color(0x1A101214), offset: Offset(0, 6), blurRadius: 8),
                    BoxShadow(color: Color(0x1A101214), offset: Offset(0, 18), blurRadius: 24),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: svgAsset!.svg(width: 28, height: 28, colorFilter: ColorFilter.mode(active ? (activeColor ?? Color(0xFF5856D7)) : Color(0xFF161A1D), BlendMode.srcIn)),
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: active ? (activeColor ?? Color(0xFF5856D7)) : Color(0xFF161A1D)),
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
        SizedBox(height: 8),
        // Dynamic Dots
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(controller.bannerCount, (index) => _Dot(active: controller.selectedBannerIndex == index)),
          ),
        ),
        SizedBox(height: 8),
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                ),
                SizedBox(height: 4),
                Text(currentBanner['subtitle'] as String, style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
              ],
            ),
          );
        }),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  final bool active;
  const _Dot({this.active = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 24 : 12,
      height: 4,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(color: active ? Color(0xFF5856D7) : Color(0x1A101214), borderRadius: BorderRadius.circular(24)),
    );
  }
}

// Divider (thin line)
class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(left: 24), height: 1, color: Color(0xFFE8EBEE));
  }
}
