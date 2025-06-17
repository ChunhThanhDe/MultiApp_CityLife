import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';

class AppTabBar extends StatelessWidget {
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

  final TabController? tabController;
  final List<Widget> listTab;
  final Function(int)? onTap;
  final double height;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? indicatorColor;
  final EdgeInsets? padding;
  final TextStyle? labelStyle;
  final TextStyle? unselectedLabelStyle;
  final bool isScrollable;
  final EdgeInsets? indicatorPadding;

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

  Widget _buildAccessibleTab(Widget tab) {
    return Semantics(
      button: true,
      child: tab,
    );
  }
}

extension AppTabBarFactories on AppTabBar {
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
