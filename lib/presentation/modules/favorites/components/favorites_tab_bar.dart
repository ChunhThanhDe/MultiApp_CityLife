import 'package:flutter/material.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';

class FavoritesTabBar extends StatelessWidget {
  final FavoritesTab currentTab;
  final Function(FavoritesTab) onTabChanged;

  const FavoritesTabBar({
    required this.currentTab,
    required this.onTabChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 18, 24, 12),
      child: Stack(
        children: [
          // Background container
          Container(
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xFFE8EBEE),
              borderRadius: BorderRadius.circular(99),
            ),
          ),
          // Animated moving white background for active tab
          AnimatedAlign(
            duration: const Duration(milliseconds: 260),
            alignment: currentTab == FavoritesTab.store
                ? Alignment.centerLeft
                : Alignment.centerRight,
            curve: Curves.easeOutCubic,
            child: Container(
              width: (MediaQuery.of(context).size.width - 48) / 2,
              height: 36,
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
          // Tab buttons
          Row(
            children: [
              _buildTabButton(
                context,
                isActive: currentTab == FavoritesTab.store,
                text: 'Store',
                onTap: () => onTabChanged(FavoritesTab.store),
              ),
              _buildTabButton(
                context,
                isActive: currentTab == FavoritesTab.items,
                text: 'Items',
                onTap: () => onTabChanged(FavoritesTab.items),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(
    BuildContext context, {
    required bool isActive,
    required String text,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 44,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xFF161A1D),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
