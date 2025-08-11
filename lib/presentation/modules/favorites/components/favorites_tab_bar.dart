import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';

class FavoritesTabBar extends StatelessWidget {

  const FavoritesTabBar({required this.currentTab, required this.onTabChanged, super.key});
  final FavoritesTab currentTab;
  final Function(FavoritesTab) onTabChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 18, 24, 12),
      child: Stack(
        children: [
          // Background container
          Container(
            height: 44,
            decoration: BoxDecoration(color: AppTheme.theme.stateGreyLowestHover100, borderRadius: BorderRadius.circular(99)),
          ),
          // Animated moving white background for active tab
          AnimatedAlign(
            duration: const Duration(milliseconds: 260),
            alignment: currentTab == FavoritesTab.store ? Alignment.centerLeft : Alignment.centerRight,
            curve: Curves.easeOutCubic,
            child: Container(
              width: (MediaQuery.of(context).size.width - 48) / 2,
              height: 36,
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              decoration: BoxDecoration(
                color: AppTheme.theme.backgroundSurfacePrimaryWhite,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [BoxShadow(color: AppTheme.theme.alphaGrey5, blurRadius: 4, offset: const Offset(0, 2))],
                border: Border.all(color: AppTheme.theme.backgroundSurfacePrimaryWhite, width: 2),
              ),
            ),
          ),
          // Tab buttons
          Row(
            children: [
              _buildTabButton(context, isActive: currentTab == FavoritesTab.store, text: 'Store', onTap: () => onTabChanged(FavoritesTab.store)),
              _buildTabButton(context, isActive: currentTab == FavoritesTab.items, text: 'Items', onTap: () => onTabChanged(FavoritesTab.items)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(BuildContext context, {required bool isActive, required String text, required VoidCallback onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 44,
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.typographyH7Regular.copyWith(color: AppTheme.theme.textGreyHighest950),
            ),
          ),
        ),
      ),
    );
  }
}
