import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class BannerSingleImageWidget extends StatelessWidget {
  final StoreBanner item;
  final int index;
  final int totalItems;
  final VoidCallback? onTap;

  const BannerSingleImageWidget({
    super.key,
    required this.item,
    required this.index,
    required this.totalItems,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.status == 1 ? onTap : null,
      child: Padding(
        padding: EdgeInsets.only(
          right: index == totalItems - 1 ? 24 : 16,
          left: index == 0 ? 24 : 0,
        ),
        child: SizedBox(
          width: 175,
          height: 220,
          child: Stack(
            children: [
              _buildMainImage(),
              if (item.status != 1) _buildStatusOverlay(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AppImage.network(
        item.coverPhoto ?? item.image ?? '',
        width: 175,
        height: 220,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildStatusOverlay() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                item.status == 0 ? Icons.nightlight_round : Icons.lock,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item.status == 0 ? 'Closed' : 'Currently Unavailable',
              style: AppTextStyles.typographyH11Medium.copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}