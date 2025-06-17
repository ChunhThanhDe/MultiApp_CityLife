import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';

/// A customizable tab bar widget with rounded corners and custom styling.
///
/// This widget provides a container-style tab bar with rounded corners,
/// custom colors, and smooth transitions between tabs.
class AppTabBar extends StatelessWidget {
  /// Creates an [AppTabBar].
  ///
  /// The [listTab] parameter is required and must not be empty.
  const AppTabBar({
    super.key,
    this.tabController,
    required this.listTab,
    this.onTap,
    this.height = 36,
    this.borderRadius = 32,
    this.backgroundColor,
    this.selectedColor,
    this.unselectedColor,
    this.indicatorColor,
    this.padding,
    this.labelStyle,
    this.unselectedLabelStyle,
    this.isScrollable = false,
    this.indicatorPadding,
  }) : assert(listTab.length > 0, 'listTab cannot be empty');

  /// Controller for the tab bar
  final TabController? tabController;

  /// List of tabs to display
  final List<Widget> listTab;

  /// Callback when a tab is tapped
  final Function(int)? onTap;

  /// Height of the tab bar
  final double height;

  /// Border radius of the tab bar
  final double borderRadius;

  /// Background color of the tab bar container
  final Color? backgroundColor;

  /// Color of the selected tab
  final Color? selectedColor;

  /// Color of unselected tabs
  final Color? unselectedColor;

  /// Color of the tab indicator
  final Color? indicatorColor;

  /// Padding inside the tab bar container
  final EdgeInsets? padding;

  /// Text style for selected tab labels
  final TextStyle? labelStyle;

  /// Text style for unselected tab labels
  final TextStyle? unselectedLabelStyle;

  /// Whether the tab bar should be scrollable
  final bool isScrollable;

  /// Padding around the indicator
  final EdgeInsets? indicatorPadding;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor ?? AppColors.stateGreyLowestHover100,
        ),
        padding: padding ?? const EdgeInsets.all(4),
        child: TabBar(
          onTap: onTap,
          controller: tabController,
          isScrollable: isScrollable,
          indicatorWeight: 0,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: indicatorPadding ?? EdgeInsets.zero,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: indicatorColor ?? Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
          ),
          labelStyle: labelStyle ?? AppTextStyles.typographyH12SemiBold,
          unselectedLabelStyle: unselectedLabelStyle ?? AppTextStyles.typographyH12Regular,
          labelPadding: const EdgeInsets.symmetric(horizontal: 10),
          labelColor: selectedColor ?? AppColors.stateBrandDefault500,
          unselectedLabelColor: unselectedColor ?? AppColors.textGreyDefault500,
          automaticIndicatorColorAdjustment: false,
          splashFactory: NoSplash.splashFactory,
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              return Colors.transparent;
            },
          ),
          tabs: listTab.map((tab) => _buildAccessibleTab(tab)).toList(),
        ),
      ),
    );
  }

  /// Wraps each tab with accessibility features
  Widget _buildAccessibleTab(Widget tab) {
    return Semantics(
      button: true,
      child: tab,
    );
  }
}

/// Extension to provide convenient factory constructors for common use cases
extension AppTabBarFactories on AppTabBar {
  /// Creates a compact tab bar with smaller height
  static AppTabBar compact({
    Key? key,
    TabController? tabController,
    required List<Widget> listTab,
    Function(int)? onTap,
    Color? backgroundColor,
    Color? selectedColor,
    Color? unselectedColor,
    Color? indicatorColor,
  }) {
    return AppTabBar(
      key: key,
      tabController: tabController,
      listTab: listTab,
      onTap: onTap,
      height: 28,
      borderRadius: 16,
      backgroundColor: backgroundColor,
      selectedColor: selectedColor,
      unselectedColor: unselectedColor,
      indicatorColor: indicatorColor,
      padding: const EdgeInsets.all(2),
    );
  }

  /// Creates a large tab bar with bigger height
  static AppTabBar large({
    Key? key,
    TabController? tabController,
    required List<Widget> listTab,
    Function(int)? onTap,
    Color? backgroundColor,
    Color? selectedColor,
    Color? unselectedColor,
    Color? indicatorColor,
  }) {
    return AppTabBar(
      key: key,
      tabController: tabController,
      listTab: listTab,
      onTap: onTap,
      height: 48,
      borderRadius: 24,
      backgroundColor: backgroundColor,
      selectedColor: selectedColor,
      unselectedColor: unselectedColor,
      indicatorColor: indicatorColor,
      padding: const EdgeInsets.all(6),
    );
  }
}
