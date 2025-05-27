import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_controller.dart';

class FavoriteProduct {
  final String title;
  final String logo;
  final String image;

  const FavoriteProduct({
    required this.title,
    required this.logo,
    required this.image,
  });
}

class FavoriteProductCard extends StatelessWidget {
  final FavoriteProduct product;
  const FavoriteProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final FavoritesController controller = Get.find();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 183 / 120,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x14000000),
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: ClipOval(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: 44,
                              height: 44,
                              child: Image.asset(product.logo),
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF161A1D),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 6),
                Obx(() => GestureDetector(
                      onTap: () => controller.toggleFavoriteStore(product.title),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                        child: Icon(
                          !controller.isStoreFavorited(product.title) ? Icons.favorite : Icons.favorite_border,
                          key: ValueKey(controller.isStoreFavorited(product.title)),
                          color: Color(0xFF5856D7),
                          size: 24,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          // Info dưới
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
                Text(
                  "\$0 Delivery fee",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF4A5763),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Text(
                      "4.8★",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4A5763),
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Text(
                      "(800+)",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF4A5763),
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Text(
                      "•",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF5856D7),
                      ),
                    ),
                    const SizedBox(width: 2),
                    Flexible(
                      child: Text(
                        "10-20 min",
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF4A5763),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
