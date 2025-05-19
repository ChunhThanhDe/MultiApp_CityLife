import 'package:flutter/material.dart';

class FavoriteItem {
  final String title;
  final String image;
  final String price;
  final String calories;

  const FavoriteItem({
    required this.title,
    required this.image,
    required this.price,
    required this.calories,
  });
}

class FavoriteItemCard extends StatelessWidget {
  final FavoriteItem item;
  final bool isFavorited;
  final VoidCallback onFavoriteTap;
  const FavoriteItemCard({
    super.key,
    required this.item,
    this.isFavorited = false,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 183,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  item.image,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              // Trái tim góc phải dưới
              Positioned(
                right: 8,
                bottom: 8,
                child: GestureDetector(
                  onTap: onFavoriteTap,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFE8EBEE), width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19101214),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                      child: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        key: ValueKey(isFavorited),
                        color: Color(0xFF5856D7),
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Text bên ngoài ảnh
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF161A1D),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            "${item.price} • ${item.calories}",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF4A5763),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
