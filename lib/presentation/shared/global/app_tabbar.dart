import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';

/// A customizable tab bar widget with modern design and accessibility features.
///
/// This widget provides a Material Design tab bar with rounded corners,
/// smooth indicator animations, and customizable styling. It supports
/// both scrollable and non-scrollable modes and includes accessibility features.
///
/// Features:
/// - Rounded corners with customizable border radius
/// - Smooth indicator animation with shadow effects
/// - Customizable colors for background, selected, and unselected states
/// - Accessibility support with proper semantics
/// - Scrollable mode support
/// - Customizable padding and spacing
///
/// Example usage:
/// ```dart
/// AppTabBar(
///   tabController: _tabController,
///   listTab: [
///     Tab(text: 'Tab 1'),
///     Tab(text: 'Tab 2'),
///     Tab(text: 'Tab 3'),
///   ],
///   onTap: (index) => print('Tab $index selected'),
/// )
/// ```
class AppTabBar extends StatelessWidget {
  /// Optional tab controller to manage tab selection state.
  final TabController? tabController;

  /// List of widgets to display as tabs. Cannot be empty.
  final List<Widget> listTab;

  /// Callback function triggered when a tab is tapped.
  /// Receives the index of the tapped tab.
  final Function(int)? onTap;

  /// Height of the tab bar. Defaults to 36.
  final double height;

  /// Border radius for the tab bar corners. Defaults to 32.
  final double borderRadius;

  /// Background color of the tab bar. Defaults to grey hover color.
  final Color? backgroundColor;

  /// Color of the selected tab text. Defaults to brand primary color.
  final Color? selectedColor;

  /// Color of the unselected tab text. Defaults to grey text color.
  final Color? unselectedColor;

  /// Color of the tab indicator (selected tab background). Defaults to white.
  final Color? indicatorColor;

  /// Padding inside the tab bar. Defaults to EdgeInsets.all(4).
  final EdgeInsets? padding;

  /// Text style for selected tab labels.
  final TextStyle? labelStyle;

  /// Text style for unselected tab labels.
  final TextStyle? unselectedLabelStyle;

  /// Whether the tab bar is scrollable. Defaults to false.
  final bool isScrollable;

  /// Padding around the tab indicator.
  final EdgeInsets? indicatorPadding;

  /// Creates an [AppTabBar] with the specified properties.
  ///
  /// The [listTab] parameter is required and must not be empty.
  /// The assertion ensures that at least one tab is provided.
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

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
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
          labelPadding: EdgeInsets.zero,
          labelStyle: labelStyle ?? AppTextStyles.typographyH12SemiBold,
          unselectedLabelStyle: unselectedLabelStyle ?? AppTextStyles.typographyH12Regular,
          labelColor: selectedColor ?? AppColors.stateBrandDefault500,
          unselectedLabelColor: unselectedColor ?? AppColors.textGreyDefault500,
          automaticIndicatorColorAdjustment: false,
          splashFactory: NoSplash.splashFactory,
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) => Colors.transparent,
          ),
          physics: NeverScrollableScrollPhysics(),
          tabs: listTab.map((tab) => _buildAccessibleTab(tab)).toList(),
        ),
      ),
    );
  }

  /// Wraps a tab widget with accessibility semantics.
  ///
  /// This method adds proper button semantics to each tab for screen readers
  /// and other accessibility tools.
  Widget _buildAccessibleTab(Widget tab) {
    return Semantics(
      button: true,
      child: tab,
    );
  }
}

/// Extension methods for [AppTabBar] that provide convenient factory constructors.
///
/// These methods create pre-configured instances of [AppTabBar] with common size variants.
extension AppTabBarFactories on AppTabBar {
  /// Creates a compact version of [AppTabBar] with reduced height and padding.
  ///
  /// This factory method creates a tab bar with:
  /// - Height: 28 pixels
  /// - Border radius: 16 pixels
  /// - Padding: 2 pixels on all sides
  ///
  /// Perfect for use in constrained spaces or when a more subtle appearance is desired.
  ///
  /// Example usage:
  /// ```dart
  /// final compactTabBar = AppTabBar.compact(
  ///   tabController: _tabController,
  ///   listTab: [Tab(text: 'Tab 1'), Tab(text: 'Tab 2')],
  /// );
  /// ```
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

  /// Creates a large version of [AppTabBar] with increased height and padding.
  ///
  /// This factory method creates a tab bar with:
  /// - Height: 48 pixels
  /// - Border radius: 24 pixels
  /// - Padding: 6 pixels on all sides
  ///
  /// Ideal for prominent navigation sections or when larger touch targets are needed.
  ///
  /// Example usage:
  /// ```dart
  /// final largeTabBar = AppTabBar.large(
  ///   tabController: _tabController,
  ///   listTab: [Tab(text: 'Tab 1'), Tab(text: 'Tab 2')],
  /// );
  /// ```
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
